--[[
by RL
QQ 43052113
Q群 917706448
此加密免费开源,强度一般般,如果需要更强大的加密,可以找我代加密
]]
local gg = gg
local os = os
local io = io
local debug = debug
local math = math
local table = table
local string = string
local rl = {}
local SELF_PATH, SELF_DIR
SELF_PATH = gg.getFile()
SELF_DIR = ''
for Text in SELF_PATH:gmatch('[^/]*/') do
SELF_DIR = SELF_DIR .. Text
end
-- Config_Path
local cfg
cfg = {}
cfg.dir = '/sdcard/'
cfg.name = 'Rl_Encryp.ini'
cfg.ptah = cfg.dir .. cfg.name
-- saveVariable
function cfg.io(Table, Path)
Path = Path or cfg.ptah
if Table then
return gg.saveVariable(Table, Path)
else
local Func, Table1, Table2
Func = loadfile(Path)
Table1 = {'请选择加密脚本：', '请选择输出目录：'}
Table2 = {'file', 'path'}
if Func then
return Table1, Func(), Table2
else
return Table1, {SELF_PATH, SELF_DIR}, Table2
end
end
end
rl.io = function(Path, Data)
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
-- rl.io('gg.lua','gg='..tostring(gg))
local sle
sle = gg.prompt(cfg.io())
if not sle then
return false
end
cfg.io(sle)
sle.path = sle[1]
local path = sle.path..'.lua'
sle.dir = sle[2]
rl.data = rl.io(sle.path)
local pairs = _ENV['pairs']
local type = _ENV['type']
rl.random = {}
rl.random.used = {}
function rl.random.get(Length)
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
if rl.random.used[Content] then
return rl.random.get(Length + 1)
end
rl.random.used[Content] = 1
if rl.data and string.match(rl.data, '[^%w_]' .. Content .. '[^%w_]') then
return rl.random.get(Length + 1)
end
return Content
end
rl.string = {}
rl.string.used = {}
rl.string.name = rl.random.get()
rl.string.index = 0
rl.string.data = {}
table.insert(rl.string.data, rl.string.name .. '={}')
rl.ascll = {}
rl.ascll.used = {}
rl.ascll.name = rl.random.get()
rl.ascll.data = {}
table.insert(rl.ascll.data, rl.ascll.name .. '={}')
rl.decrypt = {}
rl.decrypt.name = rl.random.get()
rl.decrypt.data = rl.decrypt.name .. '=function(Table)local data="" for index,value in pairs(Table)do data=data..' ..
rl.ascll.name .. '[value] end return data end'
rl.string.encrypt = function(data)
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
return '\\034\\034'
end
local index = rl.string.used[data]
if not index then
local Table, Ascll = {}
for i, byte in pairs({string.byte(data, 1, -1)}) do
Ascll = rl.ascll.used[byte]
if not Ascll then
Ascll = '"' .. rl.random.get() .. '"'
rl.ascll.used[byte] = Ascll
table.insert(rl.ascll.data, rl.ascll.name .. '[' .. Ascll .. ']="\\' .. byte .. '"')
end
Table[#Table + 1] = Ascll
end
Table = '{' .. table.concat(Table, ',') .. '}'
index = '"' .. rl.random.get() .. '"'
rl.string.used[data] = index
table.insert(rl.string.data, rl.string.name .. '[' .. index .. ']=' .. rl.decrypt.name .. '(' .. Table .. ')')
end
return '(' .. rl.string.name .. '[' .. index .. '])'
end
gg.toast('正在加密字符串...')
rl.data = rl.data:gsub('\\\\', '\\092\\092')
rl.data = rl.data:gsub('\092\034', '\\034')
rl.data = rl.data:gsub("\092\039", '\\039')
local Break, types, Table1, Table2, _STRING_, encrypt1
Table1 = {}
for txt1 in rl.data:gmatch('[^%-]%[([=]*)%[') do
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
repeat
Break = false
types = rl.data:match('[\034\039]')
if types == '\034' then
rl.data = rl.data:gsub('\034[^\n]-\034', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
elseif types == '\039' then
rl.data = rl.data:gsub('\039[^\n]-\039', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
end
until not Break
Table2 = nil
for text in rl.data:gmatch("[^%-]%-%-%[([=]*)%[") do
rl.data = rl.data:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1)
end
rl.data = rl.data:gsub('\\092\\092', '\\\\')
rl.data = rl.data:gsub('\\034', '\034')
rl.data = rl.data:gsub("\\039", '\039')
for index, value in pairs(Table1) do
rl.data = rl.data:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2)
if txt1:find('%-%-') then
return nil
end
txt2 = txt2:gsub('_STRING_%(#(%d+)%)', function(num)
return _STRING_[tonumber(num)]
end)
return txt1 .. rl.string.encrypt(txt2)
end)
end
rl.data = rl.data:gsub('_STRING_%(#(%d+)%)', function(num)
local data = _STRING_[tonumber(num)]
data = data:gsub('\\092\\092', '\\\\')
return rl.string.encrypt(data)
end)
_STRING_ = nil
Table1 = nil
rl.data = string.gsub(rl.data, '\\034', '\034')
rl.data = string.gsub(rl.data, '%-%-[^\n]*', '')
rl.data = string.gsub(rl.data, '%s*\n%s*', '\n')
rl.func, rl.error = load(rl.data)
-- rl.io('字符串.lua', rl.data)
if not rl.func then
gg.alert('字符串加密失败\n\n' .. rl.error)
return false, rl.error
end
rl.class = {}
rl.class.list = {
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
rl.class.used = {}
rl.class.name = rl.random.get()
rl.class.data = {}
table.insert(rl.class.data, rl.class.name .. '={}')
local class = rl.class
for index, value in pairs(_ENV) do
local types = type(value)
if types == 'table' and class.list[index] then
for index2, value2 in pairs(value) do
local Status, FuncName
FuncName = '"' .. rl.random.get() .. '"'
for _ = 1, 2 do
rl.data = rl.data:gsub('(.)([^%w_])(%s*)' .. index .. '%s*%.%s*' .. index2 .. '(%s*)([^%w_])(.)',
function(P1, P2, P3, P4, P5, P6)
if (P1 ~= '.' or P2 == '.') and (P5 ~= '.' or P6 == '.') then
Status = true
return P1 .. P2 .. P3 .. class.name .. '[' .. FuncName .. ']' .. P4 .. P5 .. P6
end
end)
end
if Status then
table.insert(class.data,
class.name .. '[' .. FuncName .. ']=_ENV[' .. rl.string.encrypt('"'..index..'"') .. '][' .. rl.string.encrypt('"'..index2..'"') .. ']')
end
end
end
end
rl.config = {}
rl.config.used = {}
rl.config.name = rl.random.get()
rl.config.data = {}
table.insert(rl.config.data, table.concat(rl.ascll.data, '\n'))
table.insert(rl.config.data, rl.decrypt.data)
table.insert(rl.config.data, table.concat(rl.string.data, '\n'))
table.insert(rl.config.data, table.concat(rl.class.data, '\n'))
rl.data2 = table.concat(rl.config.data, '\n')
rl.data = rl.data2 .. '\n' .. rl.data
rl.func, rl.error = load(rl.data)
if not rl.func then
gg.alert('标准库加密失败\n\n' .. rl.error)
return false, rl.error
end
local data = string.dump(rl.func,true,true)
local get_str = function(l)
local t={}
for i=1,l do
t[i]=math.random(160,190)
end
return string.char(table.unpack(t))
end
for k,v in pairs(rl.random.used)do
data = string.gsub(data,'\x04\x07\x00\x00\x00('..k..')\x00',function(k2)
local v2 = rl.random.used[k2]
if v2==1 then
v2=get_str(10)
rl.random.used[k2]=v2
end
return '\x04\x0B\x00\x00\x00'..v2..'\x00'
end)
end
rl.io(path, data)
gg.alert('再使用"RL字节码加密工具"加密一次效果更佳!\n\n文件保存在:'..path)