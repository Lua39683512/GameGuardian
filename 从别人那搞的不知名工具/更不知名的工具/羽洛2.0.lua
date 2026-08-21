FY=[===[
local GG={"art","ByXEY","ART","Art","dec","Dec","DEC","hook","Hook","HooK","HOOK","log","Log","LOG","YkTool","laallkxhtrnqncw",}
local _gg={gg.CACHE_DIR,gg.EXT_FILES_DIR,gg.EXT_CACHE_DIR,gg.FILES_DIR,gg.PACKAGE}
for i,v in pairs(GG) do
if string.find(tostring(_gg),v) or(not string.find(tostring(_gg),"com"))then
Error(true)
end
end


--检测拦截器行为
local info={} 
for i=2,2 do
info[i]=_ENV["debug"]["getinfo"](i+1,"S")
end
str=_ENV["tostring"](info):match("@(.-),")
if str ==nil then else
if str ~= _ENV["gg"]["getFile"]() then
while (true) do
_ENV["os"]["exit"](_ENV["print"]("羽洛:艹你妈用拦截器废物东西"))
end
else
end
end

for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
local zhuangtai=pcall(_ENV["debug"]["getlocal"],i[m],0,1)
while not zhuangtai do
_ENV["os"]["exit"](_ENV["print"]("羽洛:艹你妈用拦截器废物东西"))
end
end
end
elseif type(i) == "function" then
local zhuangtai=pcall(_ENV["debug"]["getlocal"],i,0,1)
while not zhuangtai do
_ENV["os"]["exit"](_ENV["print"]("羽洛:艹你妈用拦截器废物东西"))
end
end
end





if ("a"):rep("1")~="a" then 
while (true) do
_ENV["os"]["exit"](_ENV["print"]("羽洛:艹你妈用拦截器废物东西"))
end
end

]===]

UI=[===[





🌸Thanks for · QRX
高强度加密--By-羽洛
]===] .. os.date("%Y年%m月%d日%H时%M分") .. [===[




]===]
local select = gg.prompt({'选择脚本:','添加防御'}, {gg.getFile()}, {'file','checkbox'})
if not select then
    return os.exit()
end
local file = io.open(select[1])
if not file then
    os.exit()
end
local data = file:read('*a')
file:close()

if select[2] == true then
data = FY .. data
end

function Enc_code(san_data, str_enc)
    assert(type(str_enc) == 'function', '请传入加密函数')
    local data_table = {}
    repeat
        local A1, A2, A3 = string.find(san_data, "([\034\039%\045%\091])")
        if A3 == "\034" or A3 == '\039' then
            san_data = string.gsub(san_data, '(.-)(' .. A3 .. '.-' .. A3 .. ')', function(...)
                local P = {...}
                data_table[#data_table + 1] = P[1]
                local txt1 = P[2]
                txt1 = string.gsub(txt1, '\\([\\\034\039])', function(str)
                    return string.format('\\x%02X', string.byte(str))
                end)
                if string.sub(txt1, -1, -1) ~= A3 then
                    return txt1
                end
                local loadStr = load("return " .. txt1)
                if not loadStr then
                    gg.alert(gg.getLine() .. '字符串加密失败')
                    os.exit()
                end
                txt1 = loadStr()
                data_table[#data_table + 1] = str_enc(txt1)
                return ''
            end, 1)
        elseif A3 == "\045" then
            local B1, B2, B3, B4 = string.find(san_data, "%-%-")
            if B1 == A1 then
                A1 = B1
                B1, B2, B3, B4 = string.find(san_data, "%-%-(%[([=]*)%[)")
                if B1 == A1 then
                    san_data = string.gsub(san_data, "(.-)%-%-%[" .. B4 .. "%[.-%]" .. B4 .. "%]", function(txt1)
                        data_table[#data_table + 1] = txt1
                        return " "
                    end, 1)
                else
                    san_data = string.gsub(san_data, "(.-)%-%-[^\n]*", function(txt1)
                        data_table[#data_table + 1] = txt1
                        return ""
                    end, 1)
                end
            else
                san_data = string.gsub(san_data, ".-%\045", function(txt1)
                    data_table[#data_table + 1] = txt1
                    return ''
                end, 1)
            end
        elseif A3 == "\091" then
            local B1, B2, B3 = string.find(san_data, "%[([=]*)%[")
            if B1 == A1 then
                san_data = string.gsub(san_data, "(.-)(%[" .. B3 .. "%[.-%]" .. B3 .. "%])", function(...)
                    local P = {...}
                    data_table[#data_table + 1] = P[1]
                    local txt2 = P[2]
                    txt2 = load("return " .. txt2)()
                    data_table[#data_table + 1] = str_enc(txt2)
                    return ''
                end, 1)
            else
                san_data = string.gsub(san_data, ".-%\091", function(txt1)
                    data_table[#data_table + 1] = txt1
                    return ''
                end, 1)
            end
        else
            break
        end
    until not A3
    data_table[#data_table + 1] = san_data
    san_data = table.concat(data_table)
    return san_data
end

py = math.random(0,255)
        jiami = function(str)
            local t = {string.byte(str, 1, -1)}
            for i, v in pairs(t) do
                t[i] = string.format('\\x%02X',v ~ py)
            end
            str = table.concat(t)
            str = '"' .. str .. '"'
            return str
        end
        jie='local SS_San=function(t)t={string.byte(t,1,-1)}for i,v in pairs(t)do t[i]=v~'..py..' end return string.char(table.unpack(t)) end\n'

VarName_Ran = math.random(60,90)
local Vername_dec=[===[
local char, Tostring, Char, gmatc, ToNumber
local KwtRv={}
KwtRv["\x4d\x7f\xfd"]="s"
KwtRv["\x57\x0a\xf8\x03\x1f"]="n"
KwtRv["\x45\x58\x60"]="a"
KwtRv["\x66\x68\x8a"]="t"
KwtRv["\x50\xf4\x2f"]="r"
KwtRv["\x14\x43\x7b\x5d\xa6"]="i"
KwtRv["\xdd\xf5\xd6\xd2\x24"]="o"
KwtRv["\xa4\xa9\x72\x27\x63"]="m"
KwtRv["\x94\x59\x51"]="u"
KwtRv["\xa9\x59\x72\x67\x83"]="b"
KwtRv["\x4b\x44\x16\x94\x75"]="g"
KwtRv["\x92\xe6\x0b\xd3\x34"]="c"
KwtRv["\x40\x63\x9e\xd0"]="h"
KwtRv["\xc4\xd9\xc6\xf7\xe1"]="e"
local skjtRv=function(Table)
    local data=""
    for index = (#KwtRv)^(#KwtRv), #Table do
        data=data..KwtRv[Table[index]]
    end
    return data
end
local KmsUy={}
KmsUy["\xc1\x13\x25\x62"]=skjtRv({"\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KmsUy["\x2f\xa6\x6c\x4d"]=skjtRv({"\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0","\x45\x58\x60","\x50\xf4\x2f"})
KmsUy["\x8f\xb3\x18\x5c\x3f"]=skjtRv({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KmsUy["\x74\x39\xfd"]=skjtRv({"\x4b\x44\x16\x94\x75","\xa4\xa9\x72\x27\x63","\x45\x58\x60","\x66\x68\x8a","\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0"})
KmsUy["\x54\x19\x8d"]=skjtRv({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x57\x0a\xf8\x03\x1f","\x94\x59\x51","\xa4\xa9\x72\x27\x63","\xa9\x59\x72\x67\x83","\xc4\xd9\xc6\xf7\xe1","\x50\xf4\x2f"})
char=_ENV[(KmsUy["\xc1\x13\x25\x62"])][(KmsUy["\x2f\xa6\x6c\x4d"])]
Tostring=_ENV[(KmsUy["\x8f\xb3\x18\x5c\x3f"])]
gmatc=_ENV[(KmsUy["\xc1\x13\x25\x62"])][(KmsUy["\x74\x39\xfd"])]
ToNumber=_ENV[(KmsUy["\x54\x19\x8d"])]
Char={}
for i=(#KwtRv-#KwtRv),255 do
    Char[i]=char(i)
    Char[char(i)]=i
end
local Dec_FuncVarName = function(x,n)
    if x~=nil then
        local re=""
        for i in gmatc(x,".") do
            re=re..Char[Char[i]-VarName_Ran]
        end
        if n then
            re = ToNumber(re)
        end
        return re
    end
end
]===]
local Let = {}
Let.Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl + 1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end
Let.To_16 = function(txt)
    local sp = string.format("%x",txt)
    if #sp == 1 then
        sp = "0" .. sp
    end
    return "\\x" .. sp
end--转16进制
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
Enc_FuncVarName = function(x)
    return string.gsub(x,".",function(s)
        return Let.To_16(string.byte(s)+VarName_Ran)
    end)
end
BOOL = [[
FuncVarName=0
Dec_FuncVarName("\xFD\xFE")
_ENV['\255\255\255\255\255']=true
_ENV['\254\254\254\254\254']=false
_ENV['\253\253\253\253\253']=nil
]]

Q={}
Q.Get={}
Q.tab={}
local logo3='\nwhile not _ENV do ' .. '\n_ENV["DQDQDQ"]=_ENV["DQDQDQ"]\nend\n'
shuaqu1='GETTABUP v0 u0 "DQDQDQ"\nSETTABUP u0 "DQDQDQ" v0\n'
shuaqu1=shuaqu1:rep(8000)
shuaqu2='SETTABUP u0 "DQDQDQ" v0\n'..shuaqu1
function Q_shuaqu(data)
data=data:gsub('SETTABUP u0 "DQDQDQ" v0',shuaqu2)
return data
end
Q.Get.zjm=function()
local tab={}
    for i=1,12 do
        tab[i]=string.char(math.random(0,255))
    end
	return table.concat(tab)
end

g={}
g.random = {}
g.random.used = {}
function g.random.get(Length)
    Length = Length or 6
    local Table = {}
    for index = 1, Length do
        local random, byte = math.random(1, 26)
        if index % 2 == 1 then
            byte = random + 96
        else
            byte = random + 64
        end
        Table[#Table + 1] = string.char(byte)
    end
    local Content = table.concat(Table)
    if g.random.used[Content] then
        return g.random.get(Length + 1)
    end
    g.random.used[Content] = 1
    if g.data and string.match(g.data, '[^%w_]' .. Content .. '[^%w_]') then
        return g.random.get(Length + 1)
    end
    return Content
end

g.string = {}
g.string.used = {}
g.string.name = g.random.get()
g.string.index = 0
g.string.data = {}
table.insert(g.string.data, g.string.name .. '={}')

function encrypt(data)
index = jiami('"'..g.random.get()..'"')
table.insert(g.string.data, g.string.name .. "[" .. index .. "]=" .. jiami(data))--偏移破损字符串存放
return "(function() while(function(_)return _ end)()do ::RY:: if(function()end)()then goto RY end _ENV['c=�']=nil _ENV['c=�']=663789 _ENV['c=�']=-663789 end return (SS_San(" .. g.string.name .. "[" .. index .. "]))" .. " end)()"--函数调用破损字符串解码
end

data = Enc_code(data,encrypt)

g.config = {}
g.config.used = {}
g.config.name = g.random.get()
g.config.data = {}
table.insert(g.config.data, table.concat(g.string.data, '\n'))
g.data2 = table.concat(g.config.data, '\n')
data = g.data2 .. '\n' .. data

data = jie .. data

data = "(function(...)\nDec_FuncVarName(\"\\xFD\\xFE\")\n" .. data:gsub("([^%w]function[%w%s%._:]*%(.-%))","%1\nDec_FuncVarName(\"\\xFD\\xFE\")\n") .."\nend)()"

ffa = '(function()\n'
ffa = string.rep(ffa, 80)
ffb = '\nend)()'
ffb = string.rep(ffb, 80)

data = ffa .. data .. ffb

data = "(function(...)\nlocal main=(function(...)\nlocal VarName_Ran="..VarName_Ran.."\n".. Vername_dec .. "\n(function(...)\n"..BOOL .. logo3 .. data .. "\nend)()\nend)()\nend)([===[" .. UI .. "]===])"

local path = select[1] .. '-羽洛加密.lua'

data=string.dump(load(data),true)
local res = gg.internal2(load(data), path)
if not res then print("错误！ 脚本可能出错，请用不带编译的版本进行查错") end
data=io.open(path,"r"):read("*a")

data=data:gsub("663789", "1e10008")

local function Table_Rand(t)
    local tRet = {}
    local Total = #t
    while Total > 0 do
        local i = math.random(1, Total)
        table.insert(tRet, t[i])
        t[i] = t[Total]
        Total = Total - 1
    end
    return tRet
end 
InsOne={}
SetOne=520520
SetTwo=5201314
logodata='LOADK v1 "\n\n\n苏酥苏酥\n\n\n"'
logodata=""
local Q_1,Q_2,Q_3,Q_4
local Qktab,Qktab2={},{},{}
GetQk=function(SetCode)
SetCode=SetCode:gsub("CLOSURE v0 F0","CLOSURE v0 F520520")
Q_4="\n.line 0\n"..SetCode.."\n"
table.insert(Qktab,Q_4)
    for i=1,200 do
        Q_1="\n.func F"..tostring(SetOne).."\n"
        Q_2="\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
        SetOne=SetOne+1
        Q_3="CLOSURE v0 F"..tostring((SetOne)).."\nVARARG v1\nTAILCALL v0\n"
        Q_3=Q_1..Q_2..Q_3
        Q_4="\n.func F"..tostring(SetTwo).."\n"..
                      "\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 255\n.is_vararg 255\n.maxstacksize 255\n.upval u0 nil ; u0\n"..
                           "\nVARARG v1\nTAILCALL v0\n.end\n"
        SetTwo=SetTwo+1
        table.insert(Qktab,Q_3)
        table.insert(Qktab2,".end"..Q_4)
    end
Q_1="\n.func F"..tostring(SetOne).."\n"
Q_2="\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
Q_3="CLOSURE v0 F0\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(Qktab,Q_3)
table.insert(Qktab2,".end")
    return table.concat(Qktab,"\n")
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
    ['RETURN'] = 2,
}

    ret=string.rep("\nRETURN\n",3)
local function Disloc(Tran,free)
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
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. ret
                        num = num+1
                    else
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s
                        num = num+1
                    end
                elseif zl:find("goto_") then
                    tre_S[#tre_S+1] = s .. "\n" .. "JMP :goto_" .. num .. ret
                elseif zl == "JMP" then
                    if tre_S[1] then
                        tre_S[#tre_S] = tre_S[#tre_S]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                            return zz .. s .. "\n" .. o
                    end)
                    else
                        tre_C[#tre_C+1] = s
                    end
                else
                    tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. ret
                    num = num+1
                end
            end)
            tre_S = Table_Rand(tre_S)
            for i,k in pairs(tre_C) do
                table.insert(tre_S,i,k)
            end
            table.insert(tre_S,#tre_C+1,"JMP :goto_1000000")
            tre_S = table.concat(tre_S,"\n")
            return "maxstacksize "..math.random(190,230).."\n" .. tre_S:gsub("\n%s+","\n") .. "\nRETURN ;exit\n"
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
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. ret
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

local start, fina
    fina=string.find(data,"FuncVarName")
    start=data:sub(0,fina-1)
    fina=data:sub(fina,-1)
    fina=fina:gsub("(GETUPVAL v(%d+) u%d+%s+LOADK v%d+ \"\\xFD\\xFE\"%s+CALL v%d+..v%d+)","%1\nMOVE v221 v%2")
    local Tab_OP={"SETTABLE","GETTABLE","SETTABUP","GETTABUP","SELF"}
    for k,v in pairs(Tab_OP) do
        fina = fina:gsub("("..v.." [^\n]-)\"([^\n]-)\"",function(vb,i)
            if not i:find("[^%w_]") and i:gsub("[%w_]","")=="" and #i>1 then
                return "MOVE v222 v221\nLOADK v223 \""..Enc_FuncVarName(i).."\"\nCALL v222..v223 v222..v222\n"..vb.."v222"
            else
                return vb.."\""..i.."\""
            end
        end)
    end
    fina = fina:gsub("LOADK (v%d+) \"([^\n]-)\"",function(vb,i)
        if not i:find("[^%w_]") and i:gsub("[%w_]","")=="" and #i>1 then
            return "MOVE v222 v221\nLOADK v223 \""..Enc_FuncVarName(i).."\"\nCALL v222..v223 v222..v222\nMOVE "..vb.." v222"
        else
            return "LOADK "..vb.." \""..i.."\""
        end
    end)
    data=start..fina
	data=data:gsub("(SETTABUP[^\n]+FuncVarName[^\n]+%s+MOVE v)(%d+)( v%d+%s+LOADK v%d+ \"\\xFD\\xFE\"%s+CALL[^\n]+\n)","%1%2%3\nMOVE v221 v%2\n")

    data = Disloc(data,1)

data = string.gsub(data,"%.line 0",".line 0\nLOADK v248 0\n")
data = string.gsub(data, "%s*\n%s*", "\n")
data = string.gsub(data,"(%.upval [^\n]+)\n([^%.][^\n]+)",function(p1,p2) return p1.."\nLOADK v248 0\n"..p2 end)
data = string.gsub(data,"[^\n]*JMP%s*:","TFORLOOP v247:")

    data = data:gsub("linedefined [^\n]+", "linedefined 0"):gsub("lastlinedefined [^\n]+", "lastlinedefined 0"):gsub("%.numparams %d+%s+%.is_vararg (%d+)%s+%.maxstacksize %d+", function(vararg)
        if tonumber(vararg) == 1 then
            return ".numparams 0\n.is_vararg 250\n.maxstacksize 250"
        else
            return ".numparams 250\n.is_vararg 250\n.maxstacksize 250"
        end
    end)

data=Q_shuaqu(data)

data = string.gsub(data, "%.line 0\n(.-).func F0(.-)\n", (function(OneCode, TwoCode)
        return GetQk(OneCode) .. "\n.func F0" .. TwoCode .. "\n"
    end))
    data = string.gsub(data, "%;%s*%]%=%=%=%=%=%=%=%=%=%](.-)%s*", (function(code)
        code = "\n" .. table.concat(Qktab2, "\n") .. "\n; ]=========]" .. code
        return code
    end))
    data = string.gsub(data, "%s*\n%s*", "\n")

    function losegoto(p1, data)
        local zlnum = 0
        for ii in string.gmatch(string.gsub(string.gsub(string.gsub(data, ";[^\n]+", ""), ":goto[^\n]+", ""), "\n%s*", "\n"), "[^\n]+") do
            zlnum = zlnum + 1
        end
        return p1 .. "\nTFORLOOP v245 GOTO[" .. (zlnum) .. "]\n" .. data
    end
        data = string.gsub(data, "%.line 0", "")
        data = string.gsub(data, "\n%s*", "\n")
        data = string.gsub(data, "(%.upval [^\n]+)\n([^%.].-)RETURN %;exit", function(p1, str)
            return losegoto(p1, str)
        end)

        data = string.gsub(data, "%.line 0", ".line 0\nJMP :goto_999999\n:goto_999999\nMOVE v0 v0\n")
        data = string.gsub(data, "%s*\n%s*", "\n")
        data = string.gsub(data, "(%.upval [^\n]+)\n([^%.][^\n]+)", function(p1, p2)
            return p1 .. "\nJMP :goto_999999\n:goto_999999\nMOVE v0 v0\n" .. p2
        end)
        function LSQ()
    local Random=math.random(1,20)
    return string.rep("�",Random)
end
    Tab={}
    for k=241,249 do
    Tab[#Tab+1]="LOADK v"..k..' "'..LSQ()..'"'
end

--测试匹配次数
huazhiling=0

    data=data:gsub("[^\n]*LOADK v239 0[^\n]*",
    function(txt)
return txt:gsub(".+",txt.."\nNEWTABLE v240 200 0\n"..table.concat(Tab,"\n").."\nSETLIST v240..v249 1")
end)

--打印出匹配次数
if data then
    huazhiling=huazhiling+1
    gg.toast("花指令区块匹配 :"..huazhiling.."次")
    end
        data=data:gsub("(%.upval v)(%d+) (.-) (; u)(%d+)",function(a,b,c,d,e)
return b:gsub(b,a..b.." \"������\" "..d..e)
end)

data=data:gsub("(%.upval u)(%d+) (.-) (; u)(%d+)",function(a,b,c,d,e)
return b:gsub(b,a..b.." \"������\" "..d..e)
end)

--NEWTABLE键值超载防御
    local suiji=function()
    return math.random(200,300)
end

    data=data:gsub("[^\n]*NEWTABLE[^\n]*",
    function(txt)
    return txt:gsub("(NEWTABLE v%d+) %d+ (%d+)","%1 "..suiji().." %2")
end)
io.open("jmp优化.lua","w"):write(data)
data=string.dump(load(data),true)

data=string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x44, 0x51, 0x44, 0x51, 0x44, 0x51),(function() local tab={} table.insert(tab,string.char(0x04, 0x11, 0x27, 0x00, 0x00)) for i=1,10000 do table.insert(tab,string.char(math.random(58,126))) end return table.concat(tab) end))
data=string.gsub(data,string.rep(string.char(0x1F,0x00,0x80,0x00),3),Q.Get.zjm)

data=string.gsub(data,string.rep(string.char(0x1F,0x00,0x80,0x00),3),Q.Get.zjm)
data = data:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
	        return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(250,255),math.random(95,127))
	    end):gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
	        return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(250,255),math.random(95,127))
end)
data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
     
    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00), string.char(0x04, 0x00, 0x00, 0x00, 0x00))

    data, error = data:gsub(utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x01), utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x17))

    data, error = data:gsub(utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x01), utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x99))

    data, error = data:gsub(utf8.char(0x17, 0x80, 0xFE, 0x7F, 0x06), utf8.char(0x17, 0x80, 0x1B, 0x7F, 0x06))

    data, error = data:gsub(utf8.char(0x1F, 0x00, 0x80, 0x00), utf8.char(0x1F, 0x00, 0x80, 0xAB))

    data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

    data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF))

    data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00), string.char(0x00, 0x00, 0x00, 0x00), 1)

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00), string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C), string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52), string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
    data=data:gsub(string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),
string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))

data=data:gsub(string.char(0x1F ,0x00 ,0x80 ,0x00 ),
string.char(0x1F ,0x00 ,0x80 ,0xAB))
              data=string.gsub(data,string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
				string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data=string.gsub(data,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA), function()
			return string.char(math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 
						math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 0xFA, 0xFA, 0xFA) end)
    :gsub("\004\x0C\000\000\000FuncVarName\000","\004\001\000\000\000\000",1)

io.open(path, 'w'):write(data):close()
gg.alert('加密成功\n\n文件为:' .. path, '确定')