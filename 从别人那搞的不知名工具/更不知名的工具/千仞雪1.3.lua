gg.alert(os.date("当前时间:%Y年/️%m月/%d日%H:%M:%S\n欢迎使用千仞雪1.3免费加密\n本加密由B̶Y̶̶-̶千仞雪👺负责更新\n感谢JS提供的算法思路\n感谢师傅san提供的JMP\n感谢鸟之风提供的字符串算法\n防御请自行添加\n官方加密都是不安全的\n所以我们没有办法防阻止log的破解....\n千仞雪牛逼吗"),"牛逼","必须牛逼")

FY=[===[
print("本脚本使用\n千仞雪Lua混淆服务！")
for i = -1, -2 do;se = 'The wind of birds';end local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) local _ = _  == false or (function() gg.alert("拦截失败","","","") os.exit() end)()
a = debug.getinfo(gg.searchNumber)
b = tostring(a.func)
c = tostring(a.short_src)
if string.find(b, "searchNumber") == nil then
  gg.alert("Toast:你瞎鸡巴解密啥？")
  print("违规调用脚本位于::\n" .. c)
  error("Toast:你瞎鸡巴解密啥？")
end
for _FORV_3_, _FORV_4_ in pairs(os) do
  a = debug.getinfo(os[_FORV_3_])
  b = tostring(a.func)
  c = tostring(a.short_src)
  if string.find(b, tostring(_FORV_3_)) == nil then
    gg.alert("Toast:你瞎鸡巴解密啥？")
    print("违规调用脚本位于::\n" .. c)
    error("Toast:你瞎鸡巴解密啥？")
  end
end
local _g = {}
for i, v in pairs(_ENV["gg"]) do
    _g[i] = v
end
for i,v in pairs(_g) do
    if type(v)=="function" then
        local Zt,Return_str=pcall(gg.toast,{v})
        while not Return_str or string.find(Return_str,"%[Java%]%:%-1") do
            print("Detection LOG or Hook")
            os.exit()
        end
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
_ENV["os"]["exit"](_ENV["print"]("Toast:你就是个鸡巴?"))
end
else
end
end

--检测重写行为
local getinfo = debug["getinfo"]
local tables = {}
local strings = {}
local tI = table["insert"]
for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
tI(tables, getinfo(i[m]))
end
end
elseif type(i) == "function" then
tI(tables, getinfo(i))
elseif type(i) == "string" then
tI(strings, i)
end
end
for i = 1, 100 do
(function()
return (function()
if _ENV["math"]["random"](0, 1) == 1 then
repeat
until _ENV["debug"]["getinfo"](2).istailcall and _ENV["math"]["random"](0, 1)==0
else
while _ENV["debug"]["getinfo"](3).istailcall do
end
end
end)()
end)()
end
--与第三方搭配使用的防log
local getinfo = debug['getinfo']
local tables = {}
local strings = {}
local tI = table['insert']
for i, v in pairs(_ENV) do
i = _ENV[i]
if type(i) == 'table' then
for m, n in pairs(i) do
if type(i[m]) == 'function' then
tI(tables, getinfo(i[m]))
end
end
elseif type(i) == 'function' then
tI(tables, getinfo(i))
elseif type(i) == 'string' then
tI(strings, i)
end
end
for i = 1, 100 do
(function()
return (function()
if math.random(0, 1) == 1 then
repeat
until debug.getinfo(2).istailcall and math.random(0, 1)==0
else
while debug.getinfo(3).istailcall do
end
end
end)()
end)()
end
local istailcall, isvararg, short_src, source, what = 'istailcall', 'isvararg', 'short_src', 'source', 'what'
for i, v in pairs(tables) do
local tab = v
if tab["func"]==_ENV["debug"]['getinfo'] then
tab[istailcall]=false
end
if tab[istailcall] or not tab[isvararg] or tab[short_src] ~= '[Java]' or tab[source] ~= '=[Java]' or tab[what] ~=
'Java' then 
--判断
Lujing=tab[short_src]
hook = true
break
end
end
if strings[2] then
hook = true
end
tables, strings = nil, nil

_ENV["debug"]["getinfo"]=nil
while pcall(load("tostring()")) do
print("你就是个鸡巴，还想解密?")
os.exit()
end
local hxxx=string.rep('😏😏略略略，大坏蛋！',99999) for ii=1,100 do local tab={} tab[hxxx]='aa' end

local Y=string.rep("���������",999999)
T={}
for i=1,2048 do
T[i]=Y
end
for k,v in pairs (string) do
pcall(v,T)
end
--网络时间差
local shijian=function(wangzhan)
while wangzhan==nil do
print("访问频率过高 请稍候再试-103")
os.exit()
end
local wangzhan=wangzhan:match("%d........%d")
return wangzhan
end


--记录进入脚本时间的时间戳
local jilu1=function()
return shijian(gg.makeRequest("http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp").content)
end

--记录第一次进入时间
local puanduan1=jilu1()

local puanduan=function(fuanhui)
while #fuanhui<100 or  fuanhui:find("java.net.UnknownHostException:") do
os.exit()
end
end

local URL="https://m.ip138.com/" 

local fuanhui=tostring(gg.makeRequest(URL))

--防hook
new=os.clock()
local Luffyyf={}
for i=1,20 do
  Luffyyf[#Luffyyf+1]=math.random(1,255)
  Luffyyf[#Luffyyf+1]=10
end
Luffyyf="string.char(table.unpack({"..((","..table.concat(Luffyyf,",")):rep(1000)):gsub(",","",1).."}))"
pcall(load(Luffyyf))
while os.clock()-new>0.2 do
print("检测到解密行为!")
os.exit()
while true do end
end
]===]

   UI = "\n" .. [=[
   
   
   
   
🌠Thanks for · QRX🎀
🛡️高强度加密--By-千仞雪💎
⏰]=] .. os.date("%Y年%m月%d日%H时%M分") .. [=[





]=]
local ByLZG = gg.prompt({'选择脚本:','添加防御','chunk叠加','防拆卸','JMP混淆','指令混淆','混淆区块','字符混淆','GOTO混淆'}, {gg.getFile()}, {'file','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
if not ByLZG then
    return os.exit()
end
local file = io.open(ByLZG[1])
if not file then
    os.exit()
end
local data = file:read('*a')
file:close()

if ByLZG[2] == true then
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
return "(function() while(function(_)return _ end)()do ::RY:: if(function()end)()then goto RY end _ENV['NaN.0']=nil _ENV['NaN.0']=663789 _ENV['NaN.0']=-663789 end return (SS_San(" .. g.string.name .. "[" .. index .. "]))" .. " end)()"--函数调用破损字符串解码
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

local path = ByLZG[1] .. '.lua'

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
QK={}
QK1=520520
QK2=5201314
local Q_1,Q_2,Q_3,Q_4
local QK3,QK4={},{},{}
QK5=function(QK6)
QK6=QK6:gsub("CLOSURE v0 F0","CLOSURE v0 F520520")
Q_4="\n.line 0\n"..QK6.."\n"
table.insert(QK3,Q_4)
for i=1,120 do
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"SY\x00\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
QK1=QK1+1
Q_3="CLOSURE v0 F"..tostring((QK1)).."\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
end
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"SY\x00\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
Q_3="CLOSURE v0 F0\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
return table.concat(QK3,"\n")
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
    local Pic = {"🤡","🥶","😈️","👾","🤖","🤯","👹","👺️"}
    local Star = 0
    Confu=function()
        return ""
    end
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local TAB_ = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(TAB_, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(TAB_)
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
                    tre_V[#tre_V+1] = ":goto_" .. num .. "\n" .. s .. "\nTFORLOOP v247 :goto_" .. (num+1)..Resver().."\nMOD v2 v0 v2\nBXOR v25 v8 v10\n"..Confu()
                    num = num+1
                    Dt = true
                end
                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\nTFORLOOP v247 :goto_" .. (num+1) .. Resver() .. "\nMOD v2 v0 v2\nBXOR v25 v8 v10\n" .. Confu()
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "TFORLOOP v245 :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "TFORLOOP v245 :goto_" .. num
                else
                    return s
                end
            end)
            str = ":goto_1000000\n" .. str
            local system = {}
            for i in str:gmatch(":goto_%d+.-TFORLOOP v245 :goto_%d+") do
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
if ByLZG[5] == true then
    data = Disloc(data,1)
    end
--花指令
ASM={["LOADK"]=2,["GETTABUP"]=2}
jmp1=1000000
jmppz={}
for text in string.gmatch(data,'[^\n]+')do
if text~=''then
txt1=string.match(text,'%S+')
if ASM[txt1]then
jmp2=jmp1+1
jmp3=jmp2+1
suiji=math.random(-10000,-1)
text='JMP :goto_'..jmp1..'\nTEST v103 0\nTEST v153 1\n:goto_'..jmp2..'\n'..text..'\nJMP :goto_'..jmp3..'\nTFORLOOP v135 GOTO['..suiji..']\n:goto_'..jmp1..'\nJMP :goto_'..jmp2..'\nFORPREP v151 GOTO['..suiji..']\n:goto_'..jmp3
jmp1=jmp3+1
end
jmppz[#jmppz+1]=text
end
end

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
if ByLZG[3] == true then
data=data:gsub("%.line 0\n(.-).func F0(.-)\n",(function(QK7,QK8)
return QK5(QK7).."\n.func F0"..QK8.."\n"
end))
data=data:gsub("%;%s*%]%=%=%=%=%=%=%=%=%=%](.-)%s*",(function(data)
data="\n"..table.concat(QK4,"\n").."\n; ]=========]"..data
return data
end))
data=data:gsub("%s*\n%s*","\n")
end
if ByLZG[4] == true then
data=data:gsub('(\n%s*RETURN [^\n]*)','%1\nRETURN v250..v250;\x052\x04C',32)
data=data:gsub('(\n%s*TAILCALL [^\n]*)','%1\nRETURN v250..v250;\x052\x04C',32)
end
data = string.dump(load(data),true).."\n\n\n\n\n\n\n\n\n       =�千仞雪6。           "

data=string.gsub(data,string.char(0x9F,0x3E,0x00,0x01),string.char(0x24,0x00,0x00,0x00))
data=string.gsub(data,string.rep(string.char(0x1F,0x00,0x80,0x00),3),Q.Get.zjm)

data=string.gsub(data,string.rep(string.char(0x1F,0x00,0x80,0x00),3),Q.Get.zjm)

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