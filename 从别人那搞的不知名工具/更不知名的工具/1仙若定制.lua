
Replace={}
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
local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return sp
end--转16进制

Enc_RanTable=function(Lte)
	Lte={Lte:byte(0,-1)}
	local chartab={}
	for i=1,#Lte do
	    py=math.random(1,255-Lte[i])
	    local Lt=To_16(Lte[i]+py)
	    chartab[#chartab+1]=",{\34".."\\x"..Lt.."\34,"..py.."}"
	end
	return "table.concat(unget({"..table.concat(chartab):gsub(",","",1).."}))"
end--加密算法
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
		    Enc_func1 = Enc_RanTable(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = Enc_RanTable(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. Enc_RanTable(v) .. "](")
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
            return xx .. Enc_RanTable(x)
        end,1)
    end
    for i,k in pairs(Gr) do
        if k ~= false then
            DATA = DATA:gsub("刁难逸辰第(%d+)处",function(num)
                num = tonumber(num)
                return Enc_RanTable(Gr[num])
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
            gr[#gr+1] = Enc_RanTable(rg)
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
            gr[#gr+1] = Enc_RanTable(rg)
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


lsq=gg.prompt({
    "选择脚本",
    "函数碎片化(如果不兼容就关闭)"
    },{
    gg.getFile()
    },{
    "file",
    "checkbox"
    })

    if not lsq then
    return print('你选择了退出')
end

   code=io.open(lsq[1],"r"):read("*a")
   local function Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total-1
	end
	return tRet
end--打乱table
To_16 = function(txt)
    local sp = string.format("%x",txt)
    if #sp == 1 then
        sp = "0" .. sp
    end
    return "\\x" .. sp
end--转16进制
Un_know = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 6)
    end
    for x = 1, num do
        zl[#zl+1] = To_16(math.random(1, 255))
    end
    return table.concat(zl)
end--生成16进制字符
local function spit(Para)
    local Et={}
    if Para:find(",") then
        for i in Para:gmatch("(.-),") do
            Et[#Et+1]=i
        end
        Et[#Et+1]=Para:match(".+,(.+)")
    elseif Para=="" then
        Et=nil
    else
        Et[#Et+1]=Para
    end
    return Et
end
local function PsCode(xl)
    local ENV, GG = Un_know(), Un_know()
    local Ctab = {}
    local function Enc_Code(fuc,cl)
        local xk = {"\n","\n"}
        local xh=nil
        local vl={"Xr[\""..ENV.."\"][Xr[\""..GG.."\"]]"}
        cl=cl:gsub("[\34\39](.-)[\34\39]",function(ne)
            ne=ne:gsub(",","")
            return "\""..ne.."\""
        end)
        cl=spit(cl)
        local Asm = Un_know()
        xk[#xk+1] = "Xr[\""..Asm.."\"]=\""..fuc.."\""
        vl[#vl+1] = "[Xr[\""..Asm.."\"]]("
        if cl~=nil then
            for i, k in pairs(cl) do
                local Asm = Un_know()
                xk[#xk+1] = "Xr[\""..Asm.."\"]="..k
                vl[#vl+1] = ",Xr[\""..Asm.."\"]"
            end
        end
        vl=table.concat(Table_Rand(xk),"\n").."\n"..table.concat(vl):gsub(",","",1)..")"
        return vl
    end
    local function mat(xl)
	    local bl = xl:match("(.+)gg%.[%w_]+%(")
	    if xl:find("if[^\n]-gg%.[%w_]+%(")==nil and xl:find("[%w_]+%s*=%s*gg%.[%w_]+")==nil and tostring(bl):find("%(")==nil then
		    xl = xl:gsub("gg%.([%w_]+)%(([^%(\n]-)%)", Enc_Code)
	    end
    	return xl
    end
    for kl in xl:gmatch("[^\n]+") do
	    Ctab[#Ctab+1] = mat(kl)
	end
	return "local Xr={[\""..ENV.."\"]=_ENV,[\""..GG.."\"]=\"gg\"}\n"..table.concat(Ctab,"\n")
end
   if lsq[2] then
   code=PsCode(code)
   end
   fy=[=[
   ]=]
   code=fy.."\n\n"..code

   
   code=Enc_Strings(code)
   Bool = 'local _Bool={}_Bool[2]=not _Bool[1]_Bool[3]=not _Bool[2]\n'
   code = code:gsub('([^%w_])nil([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[1]' .. txt2
end)
code = code:gsub('([^%w_])true([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[2]' .. txt2
end)
code = code:gsub('([^%w_])false([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[3]' .. txt2
end)
hex=[=[
local function unget(data,py)
    local tab={}
    for i,k in pairs(data) do
        tab[#tab+1]=string.char(string.byte(k[1])-k[2])
    end
    return tab
end--解密算法
]=]
code = Bool  .. hex .. "\n" .. code

code = "local XR=(function()\n" .. code .. ' end)([=[' .. [=[

. . . . .＿＿╭╮╭╮＿＿. . . . .
. . . .＿...╭－┴┴★╮＿. . . .
. . . .＿...│◎　　︵│＿. . . .
. . . .＿...╰○－－○╯...＿. . . .
. . . . . . .欢迎使用. . . . . . .
 . . . .★ 仙若定制加密 ★. . . .
 
--加密时间:]=] ..os.date("%Y年%m月%d日%H时%M分%S秒  %A\n")..']=])'
     code = code:gsub('\\x\\x','\\x')
    io.open(lsq[1]..".lua.lua","w"):write(code)
   code = load(code)
   code = string.dump(code,true,true)
        path2 = lsq[1] .. 'tmp.lasm'
     if not gg.internal2(load(code), path2) then
         return gg.alert('加密失败')
     end
     code=io.open(path2,"r"):read("*a")
     os.remove(path2)

local TFORLOOP = require('TFORLOOP-Rl-Enc')
code = TFORLOOP.enc(code)
--code=Disloc(code)
     code=code:gsub("linedefined [^\n]+", "linedefined 0")
     code=code:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
     code=code:gsub("numparams [^\n]+", "numparams 250")
     code=code:gsub("is_vararg [^\n]+", "is_vararg 250")
     code=code:gsub("maxstacksize [^\n]+", "maxstacksize 250")
     code=load(code)
     code=string.dump(code,true)
   io.open(lsq[1]..".lua","w"):write(code)