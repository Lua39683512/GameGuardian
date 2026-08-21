local rl = {}
rl.path1 = gg.getFile()
rl.dir1 = string.gsub(rl.path1, string.match(rl.path1, '[^/]*$'), '')
rl.config = gg.EXT_CACHE_DIR .. '/Encrypt_v1.2.cfg'
rl.sel1 = loadfile(rl.config)
if rl.sel1 then
    rl.sel1 = rl.sel1()
else
    rl.sel1 = {rl.dir1}
end
rl.sel2 = gg.prompt({'请选择操作文件:', '暂时未添加'}, rl.sel1, {'file', 'checkbox'})
if not rl.sel2 then
    return false
end
rl.path2 = rl.sel2[1]
if rl.path2 ~= rl.sel1[1] then
    gg.saveVariable(rl.sel2, rl.config)
end
rl.func, rl.error = loadfile(rl.path2)
if not rl.func then
    return gg.alert('脚本加载失败\n\n' .. rl.error)
end
Replace = {}
function Replace.GRB(DATA)
    DATA = DATA:gsub("\\092\\092", "\\\\")
    DATA = DATA:gsub("\\034", "\092\034")
    DATA = DATA:gsub("\\039", "\092\039")
    return DATA
end
function Replace.GRA(DATA)
    DATA = DATA:gsub("\\\\", "\\092\\092")
    DATA = DATA:gsub("\092\034", "\\034")
    DATA = DATA:gsub("\092\039", "\\039")
    return DATA
end
function Replace.GRC(Tx)
    Tx=Tx:gsub("\\092\\092", "\\\\")
            :gsub("\\034", "\034")
          :gsub("\\039", "\039")
        :gsub("\\n", "\n")
      :gsub("\\t", "\t")
    :gsub("\\r", "\r")
    return Tx
end
rl.w_r = function(path, data)
    local file
    path = tostring(path)
    if not string.find(path, '/') then
        path = rl.dir1 .. path
    end
    if data then
        file = io.open(path, 'w')
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path)
        if file then
            io.input(file)
            data = io.read('a')
            io.close(file)
        end
        return data
    end
end

rl.data = '\n' .. rl.w_r(rl.path2) .. '\n'

fy=[=[
local Detection=gg.searchNumber
gg.searchNumber=function(...)
local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm
arm={...}
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time1=Hour*3600+Montie*60+Second
rzlog=tonumber("800")
Rep={}
for i=1,rzlog do
Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
logSy={}
for logTi=1,rzlog do
logSy[logTi]=logFk
end
logFk=nil
log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Detection,_ENV["gg"]["toast"]}
for log1, log2 in pairs(log3) do
xpcall(log2,Search,logSy)
end
log4=string.char(rzlog-rzlog)
search_e=(log4):rep(7)
for i=1,22 do 
search_e=search_e..search_e 
end
gg.getResults(0)
gg.editAll(search_e,4)
Detection(search_e,16,false,gg.SIGN_EQUAL,0,-1)
rzlog, logFk={}, {}
for i=1,50 do
logFk[i]=math.random(1,2140000000)
rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end
rzlog=gg.getValues(rzlog)
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time2=Hour*3600+Montie*60+Second
while time2-time1>1 do
os.exit()
end
return Detection(table.unpack(arm))
end
]=]
rl.data=fy.."\n\n"..rl.data

function suiji()
    local data = ''
    for i = 1, 4 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        data = data .. string.char(i)
    end
    return data
end

function Rl_jiarypt_c(DATA)
    ascll_tb = {}
    ascll_name = suiji()
    ascll_data = 'local ' .. ascll_name .. '={'
    ascll_num = 0

    ascll_name2 = suiji()
    ascll_data2 = 'local ' .. ascll_name2 .. '={'
    ascll_num2 = 0

    pianyi1 = math.random(256, 3830)
    pianyi2 = math.random(256, 3830)

    local data, len, DATA2
    -- local char = "_" .. math.random(10000, 99999)
    -- local gsub = "_" .. math.random(100000, 999999)

    function jia(data)
        if data == '' then
            return '"' .. '"'
        end
        data = string.gsub(data, '\\n', '\n')
        data = string.gsub(data, '\\34', '\34')
        data = string.gsub(data, '\\39', '\39')
        config = '{'
        for k, v in pairs({string.byte(data, 1, -1)}) do
            v = tostring(v)
            index = ascll_tb[v]
            if not index then
                ascll_num = ascll_num + 1
                ascll_data = ascll_data .. (v + pianyi1) .. ','
                ascll_tb[v] = ascll_num
                index = ascll_num
            end
            config = config .. (index + pianyi2) .. ','
        end
        config = string.sub(config, 1, -2) .. '}'
        ascll_data2 = ascll_data2 .. config .. ','
        ascll_num2 = ascll_num2 + 1
        return ascll_name2 .. '[' .. ascll_num2 .. ']'
    end

class_list = {
    ["table"] = 1,
    ["_G"] = 1,
    ["debug"] = 1,
    ["os"] = 1,
    ["io"] = 1,
    ["package"] = 1,
    ["bit32"] = 1,
    ["utf8"] = 1,
    ["string"] = 1,
    ["math"] = 1,
    ["gg"] = 1
}
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and class_list[v] then
		    Enc_func1 = jia(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = jia(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. jia(v) .. "](")
		    end
		end
	end
	return ltre
end

local Enc_Strings = function(DATA)
    local gr,rg,Rg,Gr = {}, {}, {}, {}
    gg.toast("正在加密string...")
    DATA = Replace.GRA(DATA)    
    for i, v in pairs({"\34","\39"}) do
        DATA = DATA:gsub(v .. "([^\n]-%[[=]*%[[^\n]-)" .. v .. "([^\n]-)" .. v .. "([^\n]-%][=]*%][^\n]-)" .. v,function(l,I,i)
            Gr[#Gr+1] = l
            Gr[#Gr+1] = i
            return "刁难逸辰第" .. (#Gr-1) .. "处" .. I .. "刁难逸辰第" .. #Gr .. "处"
        end)
        DATA = DATA:gsub(v .. "([^\n]-%[[=]*%[[^\n]-%][=]*%][^\n]-)" .. v,function(l)
            Gr[#Gr+1] = l
            return "刁难逸辰第" .. #Gr .. "处"
        end)
    end
    DATA = Replace.GRB(DATA)
    for x in DATA:gmatch("[^%-]%[([=]*)%[") do
        Rg[#Rg+1] = x
    end
    for i,k in pairs(Rg) do
        DATA = DATA:gsub("([^%-])%[" .. k .. "%[(.-)%]" .. k .. "%]",function(xx,x)
            if x:sub(1,1) == "\n" then
                x = x:gsub("\n","",1)
            end
            repeat
                fs = x:find("刁难逸辰第%d+处")
                if fs then
                    x = x:gsub("刁难逸辰第(%d+)处",function(num)
                        num = tonumber(num)
                        mun = num
                        return "\"" .. Gr[num] .. "\""
                    end)
                    Gr[mun] = false
                end
            until fs == nil
            return xx .. jia(x)
        end,1)
    end
    for i,k in pairs(Gr) do
        if k ~= false then
            DATA = DATA:gsub("刁难逸辰第(%d+)处",function(num)
                num = tonumber(num)
                return jia(Gr[num])
            end)
        end
    end
    DATA = Replace.GRA(DATA)
    local Buffer, Buffer2 = nil
    for i = 1, DATA:len() do
        local yr = DATA:sub(i,i):byte()
        if yr == 34 and Buffer == nil and Buffer2 == nil then
            Buffer = true
        elseif yr == 34 and Buffer then
            Buffer = nil
            rg=table.concat(rg)
            gr[#gr+1] = jia(rg)
            rg = {}
        elseif yr == 34 and Buffer2 then
            rg[#rg+1] = string.char(yr)
        elseif yr == 39 and Buffer then
            rg[#rg+1] = string.char(yr)
        elseif yr == 39 and Buffer2 == nil and Buffer == nil then
            Buffer2 = true
        elseif yr == 39 and Buffer2 then
            Buffer2 = nil
            rg=table.concat(rg)
            gr[#gr+1] = jia(rg)
            rg = {}
        elseif yr ~= 34 and yr ~= 39 and Buffer == nil and Buffer2 == nil then
            gr[#gr+1] = string.char(yr)
        elseif yr ~= 34 and yr ~= 39 and (Buffer or Buffer2) then
            rg[#rg+1] = string.char(yr)
        end
    end
    gr = table.concat(gr)
    gr = gr:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+", "")
    gr = gr:gsub("替换","\"")
    gr = Fuc_Enc(gr)

    return gr
end
    DATA = Enc_Strings(DATA)

    ascll_data = string.sub(ascll_data, 1, -2) .. '}'
    ascll_data2 = string.sub(ascll_data2, 1, -2) .. '}'

    jiemiconfig = 'for kkk,vvv in pairs(' .. ascll_name2 .. ')do for kk,vv in pairs(vvv)do ' .. ascll_name2 ..
                      '[kkk][kk]=' .. ascll_name .. '[vv-' .. pianyi2 .. ']-' .. pianyi1 .. ' end end\n'
    jiemiconfig = jiemiconfig .. 'for kk,vv in pairs(' .. ascll_name2 .. ')do ' .. ascll_name2 ..
                      '[kk]=string.char(table.unpack(vv)) end\n'

    config_data = ascll_data .. '\n' .. ascll_data2 .. '\n' .. jiemiconfig .. '\n'

    DATA = config_data .. DATA

    return DATA
end
--rl.w_r('字符串.lua', rl.data)
-- os.exit()

rl.data=Rl_jiarypt_c(rl.data)
rl.w_r('字符串.lua', rl.data)

rl.hxcode = ' while ""=="RlRlRR" do RlRlRR="RlRlRR" end '
rl.hxcode = string.rep(rl.hxcode, 1000)
rl.data = rl.hxcode .. rl.data
rl.data = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") end ' .. rl.data

rl.hxcode = '(function() '
rl.hxcode = string.rep(rl.hxcode, 79)
rl.data = rl.hxcode .. rl.data

rl.hxcode = ' end)()'
rl.hxcode = string.rep(rl.hxcode, 79)
rl.data = rl.data .. rl.hxcode

rl.data = 'local XR=(function()' .. rl.data .. ' end)([=[' .. [=[



--因光而遇，因遇而知

--仙若 免费版v1.0加密

--此加密完全免费，lua交流群(703560771)

--加密时间:]=] ..os.date("%Y年%m月%d日%H时%M分%S秒  %A\n")..']=])'

rl.func = load(rl.data)
rl.dump = string.dump(rl.func, true, true)
rl.path3 = rl.dir1 .. 'tmp.lasm'
if not gg.internal2(load(rl.dump), rl.path3) then
    return gg.alert('加密失败')
end
rl.data = rl.w_r(rl.path3)

gg.toast("正在加密区块信息...")


function Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total -1
	end
	return tRet
end
JMP={}
local ZL = {
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,
    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,
    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2,
    ['RETURN'] = 2
}
function JMP.Disloc(Tran,free)
    gg.toast("正在进行JMP错位...")
    Tran = Tran:gsub("(; .local v[^\n]+)\n",function(x)
        return x
    end):gsub("\n%s*(; .end local v[^\n]+)",function(x)
        return x
    end)
    :gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if str:find("TFORCALL") == nil then
            local tre_S = {}
            local tre_C = {}
            local num = 1000000
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                if zl == ".upval" or zl == ".line" then
                    tre_C[#tre_C+1] = s
                elseif zl == "RETURN" then
                    if s:find("v") then
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1)
                        num = num+1
                    else
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s
                        num = num+1
                    end
                elseif zl:find("goto_") then
                    tre_S[#tre_S+1] = s .. "\n" .. "JMP :goto_" .. num
                elseif zl == "JMP" then
                    if tre_S[1] then
                        tre_S[#tre_S] = tre_S[#tre_S]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                            return zz .. s .. "\n" .. o
                    end)
                    else
                        tre_C[#tre_C+1] = s
                    end
                else
                    tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1)
                    num = num+1
                end
            end)
            tre_S = Table_Rand(tre_S)
            for i,k in pairs(tre_C) do
                table.insert(tre_S,i,k)
            end
            table.insert(tre_S,#tre_C+1,"JMP :goto_1000000")
            tre_S = table.concat(tre_S,"\n")
            return "maxstacksize "..math.random(190,230).."\n" .. tre_S:gsub("\n%s+","\n") .. "\n"
        else
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT = nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end
                if zl == "LOADK" then
                    num = num+1
                    tre_V[#tre_V+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1)
                    num = num+1
                    Dt = true
                end
                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1)
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "JMP :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "JMP :goto_" .. num
                else
                    return s
                end
            end)
            tre_X = Table_Rand(tre_X)
            tre_V = Table_Rand(tre_V)
            tre_Z = table.concat(tre_Z,"\n")
            tre_X = table.concat(tre_X,"\n")
            tre_V = table.concat(tre_V,"\n")
            return "maxstacksize "..max.."\n" .. tre_Z .. "\nJMP :goto_1000000\n" .. tre_X .. "\n:goto_1000000\n" .. str .. "\n" .. tre_V .. "\n"
        end
    end)
    Tran = Tran:gsub("; .local v%d+%s*\"%(.-%)\"",function(x)
        return x .. "\n"
    end):gsub("; .end local v%d+%s*\"%(.-%)\"",function(x)
        return "\n" .. x
    end):gsub("\n%s+","\n")
    return Tran
end
rl.data=JMP.Disloc(rl.data)
rl.data = string.gsub(rl.data, "%s*\n%s*", "\n")
rl.data = string.gsub(rl.data, "\n%.linedefined %d+", "\n.linedefined 0")
rl.data = string.gsub(rl.data, "\n%.lastlinedefined %d+", "\n.lastlinedefined 0")
rl.data = string.gsub(rl.data, "\n%.numparams %d+", "\n.numparams 250",80)
rl.data = string.gsub(rl.data, "\n%.is_vararg %d+", "\n.is_vararg 250")
rl.data = string.gsub(rl.data, "\n%.maxstacksize %d+", "\n.maxstacksize 250")
rl.func, rl.error = load(rl.data)
if not rl.func then
    return gg.alert('汇编指令混淆失败!\n\n' .. rl.error)
end

rl.data = string.dump(rl.func, true, true)
gg.toast("正在加密二进制区块...")
rl.data = string.gsub(rl.data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

rl.data = string.gsub(rl.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
              string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))

rl.qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                string.rep(string.char(0), 32)
rl.data = rl.data:gsub(rl.qukuai,
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                  string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))

rl.path4 = string.match(rl.path2, '[^%.]+') .. "-[加密].lua"

-- rl.func = load(rl.data)

rl.w_r(rl.path4, rl.data)

print("文件保存到:" .. rl.path4)

-- rl.func()
