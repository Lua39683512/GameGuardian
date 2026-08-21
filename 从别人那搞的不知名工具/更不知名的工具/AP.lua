Fy = [===[
local TonumbEr = tonumber


]===]
local File_operations = function(path,text)
	if text then
    	io.open(path, "w+"):write(text):close()
    else
        reTn = io.open(path):read("*a")
    	return reTn
    end
end
local Tab={}
function Tab.Table_Rand(t)
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
local Let={}
Let.Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end
Let.Ran_str = function(len)
    if not len then
        len = math.random(4, 6)
    end
	local res = ""
	for i = 1, len do
		local choice = math.random(1, 2)
		if choice == 1 then
			res = res .. string.char(math.random(65, 90))
		 elseif choice == 2 then
		    res = res .. string.char(math.random(97, 122))
		end
	end
	return res
end
local Gsrt = function(nr)
    if not Yx_NuTa then
        Yx_NuTa,Yx_Zxc = {}, {}
        local n3 = Let.Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Let.Ran_str()
            nr = nr:gsub(i,n2)
            Yx_Zxc[i] = n2
            Yx_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Yx_NuTa = table.concat(Yx_NuTa,"\n")
        Yx_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Yx_NuTa
        n4 = Let.Ran_str()
        nr = nr:gsub("0",n4)
        Yx_Zxc[0] = n4
        Yx_NuTa = Yx_NuTa .. "\nlocal " .. n4 .. " = " .. n3 .." - " .. n3
    else
        for i=0,9 do
            nr = nr:gsub(i, Yx_Zxc[i])
        end
    end
    return nr
end
local NusRv = {}
local cxk = {}
NumCal = function(num)
    local s1, s2, s3, s4, s5, s6, s7, s9, rk, kr
    local t1, t2 = " + "
    t2 = math.random(0,9)
    s1 = num / 256
    s2 = num % 256
    s6 = s1 - t2
    s7 = math.random(1, 7)
    s4 = 0
    repeat
        s4 = s4 + 1
        s3 = 2 ^ s4
        s5 = s2 - s3
    until s5 < 10
    if s5 <= -10 then
        rk = math.random(-9,9)
        s5 = rk - s5
        if not cxk[s5] then
            kr = Let.Ran_bit()
            NusRv[kr] = s5
            cxk[s5] = kr
            trx = cxk[s5]
        else
            trx = cxk[s5]
        end
        s5 = rk
    end
    if s5 < 0 then
        t1 = ""
    end
    if rk then
        s5 = s5 .. " - Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    if s6 >= 10 then
        rk = math.random(-9,9)
        s6 = rk - s6
        if not cxk[s6] then
            kr = Let.Ran_bit()
            NusRv[kr] = s6
            cxk[s6] = kr
            trx = cxk[s6]
        else
            trx = cxk[s6]
        end
        s6 = rk .. " - " .. "Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    s1 = "((" .. tostring(2 ~ s7) .. " ~ " .. s7 .. ") ^ (" .. s4 .. ") ".. t1 .. s5 .. " + (2 ^ (2 ^ 3)) * (" .. s6 .. " + " .. t2 .. "))"
    s1 = Gsrt(s1)
    return s1
end
function WlCon(nr)--while写法
    local func_Name = Let.Ran_str()
    local Key = NumCal(math.random(10000,999999))
    local Main_Key = Key
    for i,k in pairs(nr) do
        if i==#nr then
            nr[i]="if " .. func_Name .. "==" .. Key .. " then\n" .. nr[i] .. "\nbreak\nend\n"
        else
            nr[i]="if " .. func_Name.."==" .. Key .. " then\n" .. nr[i]
            Key = NumCal(math.random(10000,999999))
            nr[i]=nr[i] .. "\n" .. func_Name .. "=" .. Key .. "\nend\n"
        end
    end
    return "local " .. func_Name .."=" .. Main_Key .. "\nwhile true do\n" .. table.concat(Tab.Table_Rand(nr)).."\nend"
end
local fuc = {
    ["gg"] = 2,
    ["os"] = 2,
    ["io"] = 2,
    ["string"] = 2,
    ["math"] = 2,
    ["table"] = 2,
    ["debug"] = 2,
    ["bit32"] = 2,
    ["utf8"] = 2,
}
local Tab2, Be, str_Calcul = {}, {}, {}
local XtyP=0
local Str_Enc = function(Data)
    if Data=="" then
        return "string.char()"
    end
    if str_Calcul[Data] then
        return str_Calcul[Data]
    end
    local max
    while true do
        max = math.random(3000,9000)
        if not Be[max] then
            Be[max]=2
            break
        end
    end
    local compline
    reTn = math.random(10,20)
    local data = {string.byte(Data,0,-1)}
    for i,k in pairs(data) do
        data[i]=k~reTn
    end
    data[#data+1]=reTn
    data = "(function() return Str_dec({"..table.concat(data,",").."}) end)()"
    Tab2[#Tab2+1] = "Sherlock["..max.."]="..data
    str_Calcul[Data] = "string_char(Sherlock["..max.."])"
    return str_Calcul[Data]
end
local Min_num = function(...)
    local arm = {...}
    local num = nil
    for i, v in pairs(arm) do
        if v ~= nil then
            if not num then
                num = v
            elseif num > v then
                num = v
            end
        end
    end
    return num
end
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and fuc[v] then
		    Enc_func1 = Str_Enc(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = Str_Enc(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("=(%s*)" .. v .. "%." .. i .. "([^%w_])", "=%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]%2")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*=", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]=")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. Str_Enc(v) .. "](")
		    	ltre = ltre:gsub("=%s*" .. v .. "([^%w_])", "=_ENV[" .. Str_Enc(v) .. "]%1")
		    end
		end
	end
	return ltre
end
local Enc_Strings = function(DATA,ToStrong_Str)
    local gr = {}
    
    repeat
        local s1, ss1, x1, xx1, n1, n2, str
        s1 = string.find(DATA, "\034")--单引号
        ss1 = string.find(DATA, "\039")--双引号
        x1 = string.find(DATA, "%[[=]*%[")--中括号
        xx1 = string.find(DATA, "%-%-")--注释
        n1 = string.find(DATA, "[^%w_]0[xX][0-9A-Fa-f]+")--Hex
        n2 = string.find(DATA, "[^%w_]%d+")--Number
        
        str = Min_num(s1, ss1, x1, xx1, n1, n2)
        
        if str == nil then
            break
        end
        
        if str == s1 then
            DATA = DATA:gsub("(.-)(\034.-\034)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\034", "\\034")
                
                if t2:sub(-1, -1) ~= "\034" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\034加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == ss1 then
            DATA = DATA:gsub("(.-)(\039.-\039)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\039", "\\039")
                
                if t2:sub(-1, -1) ~= "\039" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\039加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == x1 then
            local g1 = string.match(DATA,"%[([=]*)%[")
            DATA=DATA:gsub("(.-)(%["..g1.."%[.-%]"..g1.."%])",function(t1, t2)
                gr[#gr + 1] = t1
                t3 = load("return "..t2)
                
                if not t3 then
                gg.alert("[[加密失败\n"..t2)
                os.exit()
            end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == xx1 then
            d1, d2, d3, d4 = string.find(DATA, "%-%-(%[([=]*)%[)")
            
            if d1 == xx1 then
                DATA = string.gsub(DATA, "(.-)%-%-%[" .. d4 .. "%[.-%]" .. d4 .. "%]", function(txt1)
                    gr[#gr + 1] = txt1
                    return " "
                end, 1)
            else
                DATA = string.gsub(DATA, "(.-)%-%-[^\n]*", function(txt1)
                    gr[#gr + 1] = txt1
                    return ""
                end, 1)
                
            end
            
        elseif str == n1 then
            DATA = DATA:gsub("(.-[^%w_])(0[xX][0-9A-Fa-f]+)",function(txt1,txt2)
                gr[#gr + 1] = txt1
                gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                return ""
            end,1)
            
        elseif str == n2 then
            local n3, n4, n5, n6
            n3 = string.find(DATA, "[^%w_]%d+%.%d+[eE][%-%+]%d+")
            n4 = string.find(DATA, "[^%w_]%d+%.%d+[eE]%d+")
            n5 = string.find(DATA, "[^%w_]%d+[eE]%d+")
            n6 = string.find(DATA, "[^%w_]%d+%.%d+")
            
            if str == n3 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE][%-%+]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n4 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n5 then
                DATA = DATA:gsub("(.-[^%w_])(%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n6 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
            else
                DATA = DATA:gsub("(.-[^%w_])(%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            end
            
        else
            break
        end
        
    until not str
    gr[#gr+1]=DATA
    gr = table.concat(gr)
    :gsub("return%s+end","return 0\nend")
    return gr
end
local g, yc = {}, {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/g.cfgsx"
g.data = loadfile(g.config)
if g.data ~= nil then;
	g.info = g.data()
	g.data = nil
end
if g.info == nil then
	g.info = {g.last}
end
yc.main = gg.prompt({"请选择文件："},g.info,{"file"})
if yc.main == nil then
    os.exit(print("未选择"))
end
gg.saveVariable(yc.main, g.config)
yc.data = Fy.."\n"..File_operations(yc.main[1])
gr = Fuc_Enc(Enc_Strings(yc.data,Str_Enc))

char=[=[
(function()
(function()

end)()
local Xty2=0
local Char={}
for i=0,255 do
    Char[i]=string.char(i)
    Char[string.char(i)]=i
end
local Str_dec = function(_Tab)
    for i=1,(#_Tab-1) do
        _Tab[i]=_Tab[i]~_Tab[#_Tab]
    end
    table.remove(_Tab,#_Tab)
    return _Tab
end
local string_char=function(Tab1)
    for i,k in pairs(Tab1) do
        if type(k)=="number" then
            Tab1[i]=Char[k]
        end
    end
    return table.concat(Tab1)
end
]=]
UI="\000"..[===[

	🔱[加密作者]：🔱阿皮

    📙[加密工具]：AP加密     

    💋[加密版本]：7.0
    
    📈[加密强度]：★★★★★★  

    💫[温馨提示]：请勿尝试破解或解密代码 禁止倒卖或用做商业用途 禁止在游戏内使用
    
]===]
last = yc.main[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[加密]-" .. y
    return x .. "/[加密]-" .. y
end)

gr=char.."local Sherlock={}\n"..table.concat(Tab2,"\n").."\n".."\n"..gr.."\nend)([===["..UI.."]===])"
local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end
local ZL = {
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['BNOT'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['IDIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['BXOR'] = 2,
    ['BOR'] = 2,
    ['BAND'] =2,
    ['SHL'] = 2,
    ['SHR'] = 2,
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
    ['RETURN'] = 2,
    ['FORLOOP'] = 2,
    ['FORPREP'] = 2,
    ['TFORLOOP'] = 2,
}
function Disloc(Tran,free)
  local Pic= {"🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️"}
    local Star = 0
    Confu=function()
        local Vr={
        "CONCAT v69 v0..v41",
        "CONCAT v69 v20..v41",
        "CONCAT v69 v0..v1",
        }
        return Vr[math.random(1,#Vr)]
    end
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local Tab = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(Tab, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(Tab)
    end
    if not free then
        Resver=function()
            return ""
        end
    end
    gg.toast("正在进行JMP错位...")
    Tran = Tran:gsub("; .local v[^\n]+\n",""):gsub("\n%s*; .end local v[^\n]+",""):gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if #str>100 then
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT,HX = nil, nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end
                if num>1005000 then
                    HX = true
                end
                if zl == "LOADK" and HX == nil then
                    num = num+1
                    tre_V[#tre_V+1] = ":goto_" .. num .. "\n" .. s .. "\nTEST v249 1\nTFORLOOP v248 :goto_" .. (num+1)..Resver().."\n"..Confu()
                    num = num+1
                    Dt = true
                end
                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\nTEST v249 1\nTFORLOOP v248 :goto_" .. (num+1) .. Resver() .. "\n" .. Confu()
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "FORPREP v244 :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "FORPREP v244 :goto_" .. num
                else
                    return s
                end
            end)
            str = ":goto_1000000\n" .. str
            local system = {}
            for i in str:gmatch(":goto_%d+.-FORPREP v244 :goto_%d+") do
                system[#system+1]=i
            end
            str=table.concat(Tab.Table_Rand(system),"\n")
            return "maxstacksize "..max.."\n" .. table.concat(tre_Z,"\n") .. "\nLOADK v244 1\nLOADK v245 1\nLOADK v246 1\nLOADBOOL v249 1\nTFORLOOP v248 :goto_1000000\n" .. table.concat(Tab.Table_Rand(tre_X),"\n") .. "\n" .. str .. "\n" .. table.concat(Tab.Table_Rand(tre_V),"\n")  .. "\n"
        else
            return "maxstacksize "..max..str.."\n"
        end
    end)
    Tran = Tran:gsub("\n%s+","\n")
    return Tran
end
gr=string.dump(rg,true)
gg.internal2(load(gr), last)
gr = io.open(last,"r"):read("*a")
gr = gr:gsub("linedefined [^\n]+", "linedefined 0")
:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
:gsub("%.maxstacksize %d+", ".maxstacksize 250")
 
gr=Disloc(gr,1)
File_operations(last,gr)
local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end
gr=string.dump(rg,true)
File_operations(last,gr)
gg.setVisible(true)