local File_operations = function(path,text)
	if text then
    	io.open(path, "w+"):write(text):close()
    else
    	return io.open(path):read("*a")
    end
end

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

local function table_maxn(t)
    local mn = nil;
    for k, v in pairs(t) do
        if(mn == nil) then
            mn = v
        end
        if mn < v then
            mn = v
        end
    end
    return mn
end--table最大值

local To_16 = function(txt)
    local sp = string.format("%x",txt)
    if #sp == 1 then
        sp = "0" .. sp
    end
    return "\\x" .. sp
end--转16进制

local Un_know = function(num)
    local zl = {}
    if not num then
        num = math.random(4, 8)
    end
    for x = 1, num do
        zl[#zl+1] = To_16(math.random(128, 248))
    end
    return table.concat(zl)
end--生成16进制字符

local function Ran_str(len)
    if not len then
        len = math.random(4, 7)
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

local Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end

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
local function Disloc(Tran,free)
    local Pic = {"🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️"}
    local Resver
    if free then
	    function Resver(b)
            local tab = {}
            for k,v in pairs(b) do
                table.insert(tab, 1, string.format("%x",v))
            end
            str = table.concat(tab)
            tab = {}
            str = str:gsub("........",function (x)
                table.insert(tab, 1, "OP[48] 0x" .. x .. "\n")
            end)
            return "\n" .. table.concat(tab)
        end
    else
        function Resver(b)
            return ""
        end
    end
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
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver(gg.bytes(Pic[math.random(1,#Pic)]))
                        num = num+1
                    else
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s
                        num = num+1
                    end
                elseif zl:find("goto_") then
                    tre_S[#tre_S+1] = s .. "\n" .. "JMP :goto_" .. num .. Resver(gg.bytes(Pic[math.random(1,#Pic)]))
                elseif zl == "JMP" then
                    if tre_S[1] then
                        tre_S[#tre_S] = tre_S[#tre_S]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                            return zz .. s .. "\n" .. o
                    end)
                    else
                        tre_C[#tre_C+1] = s
                    end
                else
                    tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver(gg.bytes(Pic[math.random(1,#Pic)]))
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
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver(gg.bytes(Pic[math.random(1,#Pic)]))
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
local Hash_Ran = math.random(90,140)
local Un_Hash = Un_know()
local Re_Num = math.random(1,5)
local function Check(text)
    local yc = {}
    for v in tostring(text):gmatch(".") do
        table.insert(yc, {Yx = v})
    end
    return yc
end
local Hash = function(str)
    local l = string.len(str)
    local h = l
    local step = bit32.rshift(l, 5) + 1
    for i = l,step,-step do
        h = bit32.bxor(h, (bit32.lshift(h, 5) + string.byte(string.sub(str, i, i)) + bit32.rshift(h, 2)))
    end
    if 10-string.len(h) ~= 0 then
        h = h*10^(10-string.len(h))
    end
    h = h*10+Re_Num
    return h
end
function Enc_RanTable(Table)
    local Done_table,fun,Join_table,Lianj,i,Table_Number
    Done_table = {}
    fun = {}
    Join_table = {}
    for n = 1,#Table do
        fun[n] = Table[n]
    end
    Lianj = #Table
    while Lianj > 0 do
        i = math.random(1,Lianj)
        table.insert(Done_table,Table[i])
        Table[i] = Table[Lianj]
        Lianj = Lianj-1
    end
    for n=1,#Table do
        Join_table[n] = Done_table[n]
    end
    Table_Number = {}
    for k,v in pairs(fun) do
        for Nb,s in pairs(Join_table) do
            if v == s then
                Table_Number[#Table_Number+1] = Nb
                Join_table[Nb] = ""
                break
            end
        end
    end
    RaNum = math.random(1,255 - table_maxn(Done_table))
    for i, k in pairs(Done_table) do
        Done_table[i] = To_16(k + RaNum)
    end
    return "Dec_RanTable({\34" .. table.concat(Done_table,"\34,\34") .. "\34},\34" .. table.concat(Table_Number,"\000") .. "\000\34,\34" .. RaNum .. "\34)"
end
local function GRA(DATA)
    DATA = DATA:gsub("\\\\", "\\092\\092")
    DATA = DATA:gsub("\092\034", "\\034")
    DATA = DATA:gsub("\092\039", "\\039")
    return DATA
end
local function GRC(Tx)
    Tx=Tx:gsub("\\092\\092", "\\\\")
            :gsub("\\034", "\034")
          :gsub("\\039", "\039")
        :gsub("\\n", "\n")
      :gsub("\\t", "\t")
    :gsub("\\r", "\r")
    return Tx
end
local tr,sk,gx,Dete = {}, {}, {}, {}
local function ToStrong_Str(Tx,free)
    local tab1, tab2, RanNum
    if Tx ~= "" then
        local Drvx = Tx
        if not Dete[Drvx] then
            Tx = GRC(Tx)
            if not free then
                th = "\""
            else
                th = "替换"
            end
            Tx = {Tx:byte(0,-1)}
            if #Tx <= 255 then
                tab1, tab2 = {}, {}
                for i = 1, #Tx do
                    tab2[#tab2+1] = i
                end
                tab2 = Table_Rand(tab2)
                for i, k in pairs(tab2) do
                    tab1[#tab1+1] = Tx[k]
                end
                for i = 0, #tab2-1 do
                    tab1[#tab1+1] = tab2[#tab2 - i]
                end
                RanNum = math.random(1,255 - table_maxn(tab1))
                for i, k in pairs(tab1) do
                    tab1[i] = "\34" .. To_16(k + RanNum) .. "\34"
                end
                local lI = Un_know()
                local Il = Un_know()
                local yi = "\34" .. To_16(RanNum+Re_Num) .. "\34"
                tab1 = table.concat(tab1,",")
                if not gx[yi] then
                    gx[yi] = Il
                    sk[#sk+1] = "Fr_Dt[\"" .. Il .. "\"]=" .. yi
                    tr[#tr+1] = "tr[\34" .. lI .. "\34]={" .. tab1 .. ",\"" .. Il .. "\"}"
                else
                    tr[#tr+1] = "tr[\34" .. lI .. "\34]={" .. tab1 .. ",\"" .. gx[yi] .. "\"}"
                end
                Dete[Drvx] = "TaC_Bt(sr[" .. th .. "SreOv" .. th .. "][" .. th .. "SreOv" .. th .. "][" .. th .. lI .. th .. "])"
                return "TaC_Bt(sr[" .. th .. "SreOv" .. th .. "][" .. th .. "SreOv" .. th .. "][" .. th .. lI .. th .. "])"
            else
                return Enc_RanTable(Tx)
            end
        else
            return Dete[Drvx]
        end
    else
        return "string.char()"
    end
end
local NumStr = function(gr)
    gg.toast("正在加密number...")
    Tonum = ToStrong_Str("tonumber")
    local Calcul={}
    local Num_Match = "%s*(%-?%d+%.?%d*E?e?%-?%+?%d*)%s*"
    local Num_Match2 = "%s*(%-?0?x?X?[A-Fa-f0-9]*%.?[%-%+A-Fa-f0-9]*)"
    local Fd_Num = function(Trmi, str)
        if tonumber(str) ~= nil then
            if not Calcul[tonumber(str)] then
                local numTostr = ToStrong_Str(str)
                Calcul[tonumber(str)] = numTostr
                return Trmi .. "_ENV[" .. Tonum .. "](" .. numTostr .. ")"
            else
                return Trmi .. "_ENV[" .. Tonum .. "](" .. Calcul[tonumber(str)] .. ")"
            end
        end
    end
    gr = gr:gsub("(=)" .. Num_Match2, Fd_Num)
    local Num_Tab = {
        {"{", ","},
        {",", ","},
        {"{", "}"},
        {",", "}"},
    }
    for i, k in pairs(Num_Tab) do
        gr = gr:gsub(k[1] .. Num_Match .. k[2],function(x)
            local it = load("str=" .. x)
            if it ~= nil then
                it()
                if tonumber(str) ~= nil then
                    if not Calcul[tonumber(str)] then
                        local numTostr = ToStrong_Str(tostring(str))
                        Calcul[tonumber(str)] = numTostr
                        return k[1] .. "_ENV[" .. Tonum .. "](" .. numTostr .. ")" .. k[2]
                    else
                        return k[1] .. "_ENV[" .. Tonum .. "](" .. Calcul[tonumber(str)] .. ")" .. k[2]
                    end
                end
            else
                return x
            end
        end)
    end
    gr = gr:gsub("%(" .. Num_Match .. "%)",function(x)
        local it = load("str=" .. x)
        if it ~= nil then
            it()
            if tonumber(str) ~= nil then
                if not Calcul[tonumber(str)] then
                    local numTostr = ToStrong_Str(tostring(str))
                    Calcul[tonumber(str)] = numTostr
                    return "(_ENV[" .. Tonum .. "](" .. numTostr .. "))"
                else
                    return "(_ENV[" .. Tonum .. "](" .. Calcul[tonumber(str)] .. "))"
                end
            end
        else
            return x
        end
    end)
    gr = gr:gsub("(%-)" .. Num_Match2, Fd_Num)
    gr = gr:gsub("(%+)" .. Num_Match2, Fd_Num)
    return gr
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
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and fuc[v] then
		    Enc_func1 = ToStrong_Str(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = ToStrong_Str(i)
			    	ltre = ltre:gsub(v .. "%." .. i .. "%(", "_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub(v .. "%." .. i .. "%s*,", "_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub(v .. "%." .. i .. "%)", "_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. ToStrong_Str(v) .. "](")
		    end
		end
	end
	return ltre
end
local BooLean = function(nr)
    local Bool_Num = math.random(10000, 99999)
    local Num_Bool = math.random(1000, 9999)
    _BooLean = "BooLean={}\nBooLean[" .. Bool_Num .. "]=not BooLean[1]\nBooLean[" .. Num_Bool .. "]=not BooLean[" .. Bool_Num .. "]"
    nr = nr:gsub("([^%w_])nil([^%w_])","%1BooLean[" .. math.random(100, 999) .."]%2")
    nr = nr:gsub("([^%w_])true([^%w_])","%1BooLean[" .. Bool_Num .."]%2")
    nr = nr:gsub("([^%w_])false([^%w_])","%1BooLean[" .. Num_Bool .."]%2")
    return nr
end
local function GRB(DATA)
    DATA = DATA:gsub("\\092\\092", "\\\\")
    DATA = DATA:gsub("\\034", "\092\034")
    DATA = DATA:gsub("\\039", "\092\039")
    return DATA
end
local Enc_Strings = function(DATA)
    local gr,rg,Rg,Gr = {}, {}, {}, {}
    DATA = GRA(DATA)
    DATA = DATA:gsub("\39([^\n]-%[[=]*%[[^\n]-)\39([^\n]-)\39([^\n]-%][=]*%][^\n]-)\39",function(l,I,i)
        Gr[#Gr+1] = l
        Gr[#Gr+1] = i
        return "刁难逸辰第" .. (#Gr-1) .. "处" .. I .. "刁难逸辰第" .. #Gr .. "处"
    end)
    DATA = DATA:gsub("\34([^\n]-%[[=]*%[[^\n]-)\34([^\n]-)\34([^\n]-%][=]*%][^\n]-)\34",function(l,I,i)
        Gr[#Gr+1] = l
        Gr[#Gr+1] = i
        return "刁难逸辰第" .. (#Gr-1) .. "处" .. I .. "刁难逸辰第" .. #Gr .. "处"
    end)
    DATA = DATA:gsub("\34([^\n]-%[[=]*%[[^\n]-%][=]*%][^\n]-)\34",function(l)
        Gr[#Gr+1] = l
        return "刁难逸辰第" .. #Gr .. "处"
    end)
    DATA = DATA:gsub("\39([^\n]-%[[=]*%[[^\n]-%][=]*%][^\n]-)\39",function(l)
        Gr[#Gr+1] = l
        return "刁难逸辰第" .. #Gr .. "处"
    end)
    DATA = GRB(DATA)
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
            return xx .. ToStrong_Str(x,1)
        end,1)
    end
    for i,k in pairs(Gr) do
        if k ~= false then
            DATA = DATA:gsub("刁难逸辰第(%d+)处",function(num)
                num = tonumber(num)
                return ToStrong_Str(Gr[num],1)
            end)
        end
    end
    DATA = GRA(DATA)
    local Buffer, Buffer2 = nil
    gg.toast("正在加密string...")
    for i = 1, DATA:len() do
        local yr = DATA:sub(i,i):byte()
        if yr == 34 and Buffer == nil and Buffer2 == nil then
            Buffer = true
        elseif yr == 34 and Buffer then
            Buffer = nil
            rg=table.concat(rg)
            gr[#gr+1] = ToStrong_Str(rg)
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
            gr[#gr+1] = ToStrong_Str(rg)
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
    gr = BooLean(gr)
    return gr
end
local Eoe = {}
Eoe.last = gg.getFile()
Eoe.info = nil
Eoe.config = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/Eoe.cfg22"
Eoe.data = loadfile(Eoe.config)
if Eoe.data ~= nil then;
	Eoe.info = Eoe.data()
	Eoe.data = nil
end
if Eoe.info == nil then
	Eoe.info = {Eoe.last}
end
yc = gg.prompt({"请选择文件：", "JMP错位(兼容挺好，但不代表兼容一切)", "刷OP图标指令","Lasm常量刷取", "取消部分三方防御(云端运行脚本则勾选)", "取消number加密", "关闭流程混淆","略减弱算法(提高执行效率及执行速度)", "是否调试编译函数"}, Eoe.info, {"file","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if yc == nil then
    os.exit(print("未选择"))
end
local beg = os.clock()
gg.saveVariable(yc, Eoe.config)
yx = io.open(yc[1],"r"):read("*a")
local Cloud=loadfile("/sdcard/tencent/index.dll")
if yc[5] and Cloud==nil then
    local gn = gg.alert("系统检测你开启了取消三方防御\n该方案是为了便携云端执行所开发的功能\n若你不需要云端执行则请关闭此功能\n云端加载模板为：\nReSkT=gg.makeRequest(\"链接\").content\nload(ReSkT)()\n以上模板是因为脚本内部需要调用ReSkT这个变量\n所以在添加其他中请添加此变量","复制模板","不再提示","输出模板")
    if gn == 1 then
        gg.copyText("ReSkT=gg.makeRequest(\"链接\").content\nload(ReSkT)()",false)
    elseif gn == 2 then
        io.open("/sdcard/tencent/index.dll","w"):write("sbcnm=1"):close()
    elseif gn == 3 then
        io.open("/sdcard/云端模板.lua","w"):write("ReSkT=gg.makeRequest(\"链接\").content\nload(ReSkT)()"):close()
    end
end
yx = Enc_Strings(yx)
if not yc[6] then
    yx = NumStr(yx)
end
HAHS={}
HAHS[#HAHS+1]='arm={...}'
HAHS[#HAHS+1]='vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]'
HAHS[#HAHS+1]='Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")'
HAHS[#HAHS+1]=[===[if Hour=="00" then
    Hour=24
end]===]
HAHS[#HAHS+1]='time1=Hour*3600+Montie*60+Second'
HAHS[#HAHS+1]='rzlog=tonumber("800")'
HAHS[#HAHS+1]='Rep={}'
HAHS[#HAHS+1]=[===[for i=1,rzlog do
    Rep[i]=" "
end]===]
HAHS[#HAHS+1]=[===[logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end]===]
HAHS[#HAHS+1]='logFk=(table.concat(Rep))'
HAHS[#HAHS+1]=[===[while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end]===]
HAHS[#HAHS+1]=[===[while string.rep("a",5)~="aaaaa" do
end]===]
HAHS[#HAHS+1]='logSy={}'
HAHS[#HAHS+1]=[===[for logTi=1,rzlog do
    logSy[logTi]=logFk
end]===]
HAHS[#HAHS+1]='logFk=nil'
HAHS[#HAHS+1]='log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Search,_ENV["gg"]["toast"]}'
HAHS[#HAHS+1]=[===[for log1, log2 in pairs(log3) do
    xpcall(log2,Search,logSy)
end]===]
HAHS[#HAHS+1]='log4=string.char(rzlog-rzlog)'
HAHS[#HAHS+1]='search_e=(log4):rep(7)'
HAHS[#HAHS+1]=[===[for i=1,22 do 
    search_e=search_e..search_e 
end]===]
HAHS[#HAHS+1]='gg.getResults(0)'
HAHS[#HAHS+1]='gg.editAll(search_e,4)'
HAHS[#HAHS+1]='Search(search_e,16,false,gg.SIGN_EQUAL,0,-1)'
HAHS[#HAHS+1]='rzlog, logFk={}, {}'
HAHS[#HAHS+1]=[===[for i=1,50 do
    logFk[i]=math.random(1,2140000000)
    rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end]===]
HAHS[#HAHS+1]='rzlog=gg.getValues(rzlog)'
HAHS[#HAHS+1]='vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]'
HAHS[#HAHS+1]='Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")'
HAHS[#HAHS+1]=[===[if Hour=="00" then
    Hour=24
end]===]
HAHS[#HAHS+1]='time2=Hour*3600+Montie*60+Second'
HAHS[#HAHS+1]=[===[while time2-time1>1 do
os.exit()
end]===]
HASH={}
HASH[#HASH+1]=[===[for index, value in _ENV["pairs"]({_ENV["table"],_ENV["debug"], _ENV["gg"], _ENV["os"], _ENV["io"], _ENV["bit32"], _ENV["utf8"], _ENV["string"], _ENV["math"]}) do
  index = _ENV["tostring"](value)
  xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end]===]
HASH[#HASH+1]=[===[
for index, value in _ENV["pairs"]({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do
   value = _ENV[value]
   index = _ENV["tostring"](value)
   xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end
]===]
if not yc[5] then
HASH[#HASH+1]=[===[function Errose()
    while true do
    end
end]===]
HASH[#HASH+1]='io.input(gg.getFile(), "r")'
HASH[#HASH+1]='os.remove(gg.getFile())'
HASH[#HASH+1]=[===[if not loadfile(gg.getFile()) then 
    return Errose() 
end]===]
HASH[#HASH+1]='io.output(gg.getFile())'
HASH[#HASH+1]='re=io.read("*a")'
HASH[#HASH+1]='io.write(re)'
HASH[#HASH+1]=[===[if (loadfile or load) == nil then 
    return Errose() 
end]===]
HASH[#HASH+1]='io.output("/sdcard/Tencent/1s2r.dll")'
HASH[#HASH+1]='loadfile("/sdcard/Tencent/1s2r.dll")()'
HASH[#HASH+1]=[===[if not loadfile("/sdcard/Tencent/1s2r.dll") then
    return Errose()
end]===]
HASH[#HASH+1]='os.remove("/sdcard/Tencent/1s2r.dll")'
HASH[#HASH+1]=[===[if loadfile("/sdcard/Tencent/1s2r.dll") then
    return Errose()
end]===]
HASH[#HASH+1]='os.rename(gg.getFile(), "/sdcard/Tencent/361.dll")'
HASH[#HASH+1]=[===[if not loadfile(gg.getFile()) then 
    return Errose() 
end]===]
HASH[#HASH+1]='os.rename("/sdcard/Tencent/Android/361.dll", gg.getFile())'
end
HASH[#HASH+1]='gg.setVisible(false)'
HASH[#HASH+1]='vpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"'
HASH[#HASH+1]='vpn=tostring(gg["makeRequest"](vpn))'
HASH[#HASH+1]=[===[if not vpn  or not vpn:sub(1,20) then 
    gg["alert"]("请允许访问网络！",string.char())
else
    while #vpn<100 or vpn:find("SSL") or vpn:find("I/O") or vpn:find("javax") do
    end
end]===]
HASH[#HASH+1]='rzlog=tonumber("1024")'
HASH[#HASH+1]='Rep={}'
HASH[#HASH+1]=[===[for i=1,rzlog do
    Rep[i]=" "
end]===]
HASH[#HASH+1]=[===[logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end]===]
HASH[#HASH+1]='logFk=(table.concat(Rep))'
HASH[#HASH+1]=[===[while logFk~=string.rep(" ",rzlog*rzlog) and #logFk~=rzlog^2 do
end]===]
HASH[#HASH+1]=[===[while string.rep("a",5)~="aaaaa" do
end]===]
HASH[#HASH+1]='LYF_DefEnv = {["输出你🐴"]="输出你🐴"}'
HASH[#HASH+1]='LYF_DefGetYb = {["输出你🐴"]="输出你🐴"}'
HASH[#HASH+1]='LYF_DefGetDg = {["输出你🐴"]="输出你🐴"}'
HASH[#HASH+1]='setmetatable(LYF_DefGetDg,{__index = debug.getmetatable})'
HASH[#HASH+1]='setmetatable(LYF_DefEnv, {__index = _ENV})'
HASH[#HASH+1]='setmetatable(LYF_DefGetYb,{__index = getmetatable})'
HASH[#HASH+1]='_ENV=LYF_DefEnv'
HASH[#HASH+1]='getmetatable=LYF_DefGetYb'
HASH[#HASH+1]='debug.getmetatable=LYF_DefGetDg'
HASH[#HASH+1]='debug.setupvalue(debug.getinfo(1)["func"],1,_ENV)'
for value in _BooLean:gmatch("[^\n]+") do
    HASH[#HASH+1]=value
end
HASH[#HASH+1]=[===[Hash=function(str)
    local l = string.len(str)
    local h = l
    local step = bit32.rshift(l, 5) + 1
    for i=l,step,-step do
        h = bit32.bxor(h, (bit32.lshift(h, 5) + string.byte(string.sub(str, i, i)) + bit32.rshift(h, 2)))
    end
    if 10-string.len(h)~=0 then
        h=h*10^(10-string.len(h))
    end
    h=h*10+]===] .. Re_Num .. [===[
    
    return h
end]===]
HASH[#HASH+1]=[===[Hash_dec=function(num)
    local dec_Hash={}
    num=num:gsub(".",function(x)
        dec_Hash[#dec_Hash+1]=Char[Char[x]-]===] .. Hash_Ran .. [===[]
        return string.char()
    end)
    dec_Hash=table.concat(dec_Hash)
    return dec_Hash
end]===]
if not yc[5] then
HASH[#HASH+1]='_ENV["io"]["input"](_ENV["gg"]["getFile"](),"rb")'
HASH[#HASH+1]='ReSkT=_ENV["io"]["read"]("*a")'
end
if not yc[8] then
HASH[#HASH+1]=[===[while true do
	if Hash(ReSkT) ~= Hash_dec(pj4) then
		while true do
		end
	else
	    TaC_Bt=function(num)
	        local TaR_Mv=function(nr)
	            table.remove(nr,2)
	            return table.concat(nr)
	        end
	        return TaR_Mv({num:gsub(",(%d+)",function(x)
	            return Char[tonumber(x) - #UI - #logFk]
	        end)})
	    end
	    gg.setVisible(true)
	    break
	end
end]===]
else
HASH[#HASH+1]=[===[while true do
	if Hash(ReSkT) ~= Hash_dec(pj4) then
		while true do
		end
	else
	    TaC_Bt=function(nr)
	        return table.concat(nr)
	    end
	    gg.setVisible(true)
	    break
	end
end]===]
end
dec=[===[
local Char={}
for i=1,255 do
    Char[i]=string.char(i)
end
for i=256,510 do
    Char[Char[i-255]]=i-255
end
]===]
	local Enc_Fuc = function(ltre)
		for v, s in pairs(_ENV) do
			if type(s) == "table" and fuc[v] then
				for i in pairs(s) do
					ltre = ltre:gsub(v .. "%." .. i .. "%(", "_ENV[\34" .. v .. "\34]" .. "[\34" .. i .. "\34](")
					ltre = ltre:gsub(v .. "%." .. i .. "%s*,", "_ENV[\34" .. v .. "\34]" .. "[\34" .. i .. "\34],")
					ltre = ltre:gsub(v .. "%." .. i .. "%)", "_ENV[\34" .. v .. "\34]" .. "[\34" .. i .. "\34])")
				end
			elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
				ltre = ltre:gsub(v .. "%(", "_ENV[\34" .. v .. "\34](")
				ltre = ltre:gsub(v .. "%s*,", "_ENV[\34" .. v .. "\34],")
			end
		end
		return ltre
	end
for i,k in pairs(HASH) do
    HASH[i] = Enc_Fuc(k)
    HASH[i] = k:gsub("\"(.-)\"",function(x)
        x = {x:byte(0,-1)}
        max_tab = table_maxn(x)
        ran_tab = math.random(1,255-max_tab)
        for i,k in pairs(x) do
            x[i] = To_16(k+ran_tab)
        end
        x[#x+1] = To_16(ran_tab)
        x = "HASH_SF({\34" .. table.concat(x,"\34,\34") .. "\34})"
        return x
    end)
end
for i,k in pairs(HAHS) do
    HAHS[i] = Enc_Fuc(k)
    HAHS[i] = k:gsub("\"(.-)\"",function(x)
        x = {x:byte(0,-1)}
        max_tab = table_maxn(x)
        ran_tab = math.random(1,255-max_tab)
        for i,k in pairs(x) do
            x[i] = To_16(k+ran_tab)
        end
        x[#x+1] = To_16(ran_tab)
        x = "HASH_SF({\34" .. table.concat(x,"\34,\34") .. "\34})"
        return x
    end)
end
local For_De={}
For_De[#For_De+1]=[==[Sub=tonumber((Hash_dec(sr["SreOv"][]==] .. "\34" .. Un_Hash .. "\34" .. [==[])):sub(#sr["SreOv"][]==] .. "\34" .. Un_Hash .. "\34" .. [==[],#sr["SreOv"][]==] .. "\34" .. Un_Hash .. "\34" .. [==[]))]==]
if not yc[8] then
For_De[#For_De+1]=[==[
for i,k in pairs(tr) do
    local To_off = function(n,frr)
        n=n - Char[Fr_Dt[k[#k]]] + Sub
        return n
    end
    local Wv={}
    for i=1, (#k-Char[49])/Char[50] do
        Wv[To_off(Char[k[#k-i]])] = To_off(Char[k[i]]) + (Char[50]^10)^2 + #UI
    end
    sr["SreOv"]["SreOv"][i]="," .. table.concat(Wv,",")
end]==]
else
For_De[#For_De+1]=[==[
for i,k in pairs(tr) do
    local To_off = function(n,frr)
        n=n - Char[Fr_Dt[k[#k]]] + Sub
        return n
    end
    local Wv={}
    for i=1, (#k-Char[49])/Char[50] do
        Wv[To_off(Char[k[#k-i]])] = Char[To_off(Char[k[i]])]
    end
    sr["SreOv"]["SreOv"][i]=Wv
end]==]
end
For_De[#For_De+1]="Hide = {}"
For_De[#For_De+1]="setmetatable(Hide, {__index = sr})"
For_De[#For_De+1]="sr = Hide"
For_De[#For_De+1]=[==[function Dec_RanTable(Table,numb,ofre)
    local Nmsl,Charr
    Nmsl={}
    Charr={}
    for i,k in pairs(Table) do
        Table[i]=Char[Char[k]-ofre]
    end
    for n in numb:gmatch("(%d-)\000") do
        Charr[#Charr+1]=tonumber(n)
    end
    for W,v in pairs(Charr) do
        Nmsl[W]= Table[v]
    end
    return table.concat(Nmsl)
end]==]
Cou=[==[
HASH_SF=function(tab)
    local re={}
    for i=1,#tab-1 do
        re[#re+1]=Char[Char[tab[i]]-Char[tab[#tab]]]
    end
    return table.concat(re)
end
]==]
last = yc[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[Yx-New]-" .. y
    return x .. "/[Yx-New]-" .. y
end)
local UI = "\n\n\n" .. [=[
-- ☨━━━━━━━━━━━━━━━━━━━☨
🏆Welcome➨

  ⚡[Yx · Enc - 系列 - Script]⚡
     ➖➖➖➖➖➖➖➖
        VERSION：1.6🌸
     ➖➖➖➖➖➖➖➖

🔸Script By➨
  🔏加密作者：Yx - for 逸辰
  🔐脚本名称：]=] .. CoNe .. [=[
 
  ✏️加密时间：]=] .. os.date("%Y.%m.%d.%H.%M.%S") .. [=[

  🔍加密强度：★★★★★★★★★☆
-- ☦︎━━━━━━━━━━━━━━━━━━━☦︎
🔫Yx · Tips➨
 ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
˘                                             ˘
 ꯭遗꯭憾꯭就꯭是꯭看꯭着꯭终꯭究꯭不꯭属꯭于꯭我꯭们꯭的꯭慢꯭慢꯭走꯭去꯭🧸

       ꯭慢꯭慢꯭又꯭漫꯭漫꯭🌠
            
                        ꯭终꯭究꯭还꯭是꯭新꯭鲜꯭感꯭.꯭✨
           
   ꯭好꯭像꯭还꯭没꯭正꯭式꯭的꯭说꯭过꯭再꯭见꯭🎈
               
                 ꯭也꯭好꯭像꯭没꯭有꯭一꯭个꯭像꯭样꯭收꯭场꯭🔹
˘＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿˘
    


   © 2018 ~ 2021 By\-Yx All Rights Reserved.

]=] .. "--[["

local Yx_NuTa,Yx_Zxc
local Gsrt = function(nr)
    if not Yx_NuTa then
        Yx_NuTa,Yx_Zxc = {}, {}
        local n3 = Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Ran_str()
            nr = nr:gsub(i,n2)
            Yx_Zxc[i] = n2
            Yx_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Yx_NuTa = table.concat(Yx_NuTa,"\n")
        Yx_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Yx_NuTa
        n4 = Ran_str()
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
local NumCal = function(num)
    local s1, s2, s3, s4, s5, s6, s7, s8, s9, rk, kr
    local t1, t2 = " + "
    t2 = math.random(0,9)
    s1 = num / 256--11
    s2 = num % 256--31
    s6 = s1 - t2
    s7 = math.random(1, 7)
    s8 = math.random(1, 7)
    s4 = 0
    repeat
        s4 = s4 + 1
        s3 = 2 ^ s4
        s5 = s2 - s3
    until s5 < 10
    if s5 <= -10 then
        rk = math.random(-9,9)
        s5 = rk - s5
        kr = Ran_bit()
        NusRv[kr] = s5 + #UI - 1
        s5 = rk
    end
    if s5 < 0 then
        t1 = ""
    end
    if rk then
        s5 = s5 .. " - NusRv[\"" .. kr .. "\"] - #UI"
        rk = nil
    end
    if s6 >= 10 then
        rk = math.random(-9,9)
        s6 = rk - s6
        kr = Ran_bit()
        NusRv[kr] = s6 + #UI - 1
        s6 = rk .. " - " .. "NusRv[\"" .. kr .. "\"] - #UI"
        rk = nil
    end
    s1 = "((" .. tostring(2 ~ s7) .. " ~ " .. s7 .. ") ^ (" .. s4 .. ") ".. t1 .. s5 .. " + (2 ^ 8) * (" .. s6 .. " + " .. t2 .. "))"
    s1 = Gsrt(s1)
    return s1
end
table.insert(sk,1,"sr[\"SreOv\"]={function(x)return x end,[\""
     .. Un_Hash .. 
    "\"]=\"10100110010\",[\34SreOv\34]={}}")
table.insert(sk,1,Cou)
local WlCon, WlConGoto
function WlCon(nr)--while写法
    local func_Name = Ran_str()
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
    return "local " .. func_Name .."=" .. Main_Key .. "\nwhile true do\n" .. table.concat(Table_Rand(nr)).."\nend"
end
function WlConGoto(nr)--goto写法
    local func_Name = Ran_str()
    local Key = NumCal(math.random(10000,999999))
    local Main_Key = Key
    local s=0
    for i,k in pairs(nr) do
        if i==#nr then
            nr[i]="::S" .. s .. "::\nif " .. func_Name .. "==" .. Key .. " then\n" .. nr[i] .. "\nend\ngoto S" .. (s + 1) .. "\n"
        else
            nr[i]="::S" .. s .. "::\nif " .. func_Name.."==" .. Key .. " then\n" .. nr[i]
            Key = NumCal(math.random(10000,999999))
            nr[i]=nr[i] .. "\n" .. func_Name .. "=" .. Key .. "\nend\ngoto S" .. (s + 1) .. "\n"
            s=s+1
        end
    end
    return "local " .. func_Name .."=" .. Main_Key .. "\ngoto S0\n" .. table.concat(Table_Rand(nr)) .. "::S" .. (s + 1) .. "::"
end
sk = WlCon(sk)
HASH = WlCon(HASH)
For_De = WlCon(For_De)
if not yc[7] then
    HAHS = WlConGoto(HAHS)
    tr = WlConGoto(tr)
else
    HAHS = table.concat(HAHS,"\n")
    tr = table.concat(tr,"\n")
end
local Yx_NumCal
Yx_NumCal = {}
for i, k in pairs(NusRv) do
     Yx_NumCal[#Yx_NumCal+1] = "[\"" .. i .. "\"]=" .. k
end
Yx_NumCal="local NusRv = {"
     .. table.concat(Yx_NumCal,",") .. "}\n"
     .. Yx_NuTa .. "\n"
local Constant
if yc[4] then
    Constant="while i do\nlocal i\nwhile i==200502053412 do\n"..("_ENV[\"消炎水笑死人了\"]=\"牛马玩意笑飞我\"\n"):rep(math.random(3000,4000)).."end\nbreak\nend\n"
else
    Constant=""
end
yx = "local UI=[=[" .. UI
     .. "]=]\n"
     .. dec .. "\nlocal Yx_Yc=(function(...)\n"
     ..Constant
     .. "local Fr_Dt={}\n"..Yx_NumCal.."local HASH_SF, TaC_Bt\nlocal sr={}\n"
     .. sk .. "\nlocal __index, LYF_DefEnv, LYF_DefGetYb, LYF_DefGetDg, Errose, xxxx, NewTime, newTime, re, Hash, Hash_dec, vpn, rzlog, Rep, logFk, BooLean\n"
     .. HASH
     .. "\nlocal Search=gg.searchNumber\nfunction gg.searchNumber(...)\n    local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm\n"
     .. HAHS .. "\n    return Search(table.unpack(arm))\nend\nlocal tr={}\n"
     .. tr .. "\nlocal Sub, Dec_RanTable, Hide\n"
     .. For_De .. "\n" .. yx .. "\nend)()"
yx = yx:gsub("Hash_dec%(pj4%)","Hash_dec(sr[\"SreOv\"][\"" .. Un_Hash .. "\"])")
yx = yx:gsub("SreOv",Un_know())
--yx = string.dump(load(yx),true)
if yc[9] then
    gg.toast("正在编译...")
    yx = load(yx)
    if yx == nil then
        gg.alert("未知错误导致加密失败","")
        print("未知错误导致加密失败")
        io.open(last .. "[报错文件].lua","w"):write(yx)
        os.exit()
    end
	yx = string.dump(yx,true)
	gg.internal2(load(yx), last)
	yx = io.open(last,"r"):read("*a")
    yx = yx:gsub("linedefined [^\n]+", "linedefined 0")
    yx = yx:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
    yx = yx:gsub("%.numparams (%d+)%s+%.is_vararg %d+%s+%.maxstacksize (%d+)", function(min, max)
        if tonumber(max)<20 then
            return ".numparams 188\n.is_vararg 188\n.maxstacksize 188"
        else
            return ".numparams " .. min .. "\n.is_vararg 200\n.maxstacksize 200"
        end
    end)
    yx = yx:gsub("200502053412","1e30008",1):gsub("\n%s+","\n")
	if yc[2] then
	    if yc[3] then
	        yx = Disloc(yx,true)
	    else
	        yx = Disloc(yx)
	    end
        soucr = load(yx)
        if soucr == nil then
            gg.alert("JMP加密失败","")
            print("JMP加密失败")
            io.open(last .. "[报错文件].lua","w"):write(yx)
            os.exit()
        end
	end
	soucr = load(yx)
	yx = string.dump(soucr,true)
end
if yc[4] then
    local TeSl=function(num)
        local zl={}
        if not num then
            num=math.random(30000,35000)
        end
        for x=1,num do
            zl[#zl+1]=string.char(math.random(1,255))
        end
        return table.concat(zl)
    end
    local Ren = math.random(5000,7000)+1
    local x1 = Ren/256
    local x2 = Ren%256
    local Ren = TeSl(Ren-1)
    yx = yx:gsub("\004\022\000\000\000消炎水笑死人了",function(x)
        return "\004"..string.char(x2,x1).."\000\000"..Ren
    end)
    local Ner = TeSl(math.random(10000,13000)).."\x04"..string.char(x2,x1).."\x00\x00"..Ren.."\000"..TeSl(math.random(10000,13000))
    local y1 = (#Ner+1)/256
    local y2 = (#Ner+1)%256
    yx = yx:gsub("\004\022\000\000\000牛马玩意笑飞我",function(x)
        return "\004"..string.char(y2,y1).."\000\000"..Ner
    end)
end
hash = Hash(yx)
local Hash_Off = {}
for k, v in ipairs(Check(hash)) do
    Hash_Off[#Hash_Off+1] = (v.Yx):byte()+Hash_Ran
end
yx = yx:gsub(string.char(0x04,0x0C,0x00,0x00,0x00) .. "10100110010",string.char(0x04,#Hash_Off+1,0x00,0x00,0x00) .. string.char(table.unpack(Hash_Off)))
yx = yx:gsub("10100110010",string.char(table.unpack(Hash_Off)))
io.open(last,"w"):write(yx)
gg.setVisible(true)
print("加密成功 脚本生成路径为：\n" .. last)
print("加密耗时" .. os.clock()-beg .. "s")