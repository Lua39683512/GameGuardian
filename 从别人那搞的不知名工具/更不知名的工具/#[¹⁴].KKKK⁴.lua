local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expirity Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
},g.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
})
if g.info == nil then break end
gg.saveVariable(g.info,g.config)
DATA = io.input(g.info[1]):read("*a")
if not load(DATA) then os.exit() end

if g.info[3] == true then
day = os.date("%d")
exp_date = gg.prompt({
"📆 Set Expired Date : ",
"📝 Type Expired Message : "},
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired ⚠️️"},{"number", "text"})
end
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("\n📅 Added Expired Date : ".. exp_date[1])
DATA = '\n if os.date("%Y%m%d") >= "' ..exp_date[1].. '" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end

if g.info[4] == true then
PASS = gg["prompt"]({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Wrong Password ⚠️"},{
"text",
"text"})
end
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("\n🔐Added Password Script : ".. PASS[1])
DATA = 'PASSW = gg.prompt({\'🔒 Input password: \'},{[1]=\'\'},{[1]=\'text\'})\nif not PASSW the﻿n return\nend \nif PASSW[1] == "" then gg.alert("Password Can Not Be Empty❕") end\nif PASSW[1] =="' .. PASS[1] .. '" then\ngg.toast(\'✅ Password correct❕\')\nelse\nreturn gg.alert("' .. PASS[2] .. '") end\n' .. DATA
end

if g.info[5] == true then
VERSION = gg.prompt({
"🔐 Set Minimal GG Version : ",
"🗒️ Set Error GG Message :"
}, {gg.VERSION,"⚠️ Error GG VERSION ⚠️"}, {
"number",
"text"})
end
if not VERSION then
gg.setVisible(true)
elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true)
else
print("\n🛡️Added Minimal GG Version : "..VERSION[1])
DATA = '\n if gg.VERSION < "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end

g.last = g.info[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".enc")
g.out = g.info[2]..'/'..g.out..'.lua'
local DATA = io.input(g.last):read('*a')

local KEYO = {
'3773737',
'627',
}
local TTable, Table, TTTable = {}, {}, {};AB = math.random(1000,20000);ABB = math.random(1000,20000);ABBB = math.random(1000,20000);AC = math.random(3000,40000);ACC = math.random(3000,40000);ACCC = math.random(3000,40000);AD = math.random(5000,60000);ADD = math.random(5000,60000);ADDD = math.random(5000,60000);AE = math.random(7000,80000);AEE = math.random(7000,80000);AEEE = math.random(7000,80000);AF = math.random(9000,100000);AFF = math.random(9000,100000);AFFF = math.random(9000,100000);AG = math.random(300,600);AGG = math.random(300,600);AGGG = math.random(300,600);local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];local inv256;local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4] ;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF};local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]i19922 = math.random(99000,99600);i77 = math.random(58,80)
local _I1 = math.random(1122,36131)
function Sha(str)str = str:gsub("\\n", "\n"):gsub("\\t","\t")if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1 - AG, AG - KY2 return (str:gsub('.', function(m)local L = K % i19922 local H = (K - L) / i19922 local M = H % i77 local m = m:byte()local c = (m * inv256[M] - (H - M) / i77) % 256 K = L * F + H + c + m  return ('%02x'):format(c)end)):gsub(" $", "", 1) end
k = math.random(1,20)
function EncSTR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd ={}
for i = 1, #c do
c[i] = (c[i] - Key1 - Key2 - Key3 % Key4 % Key5 - Key6 * Key1) % _I1
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{K4={"..table.concat(c, ",").."}}"
end
KYE={}
KYEEE={}
for i = 1,15 do
Gener=math.random(333,333)
table.insert(KYE, Gener)
end
Mke= 1 * math.random(11,71)
Mke2= 2 * math.random(7,71)
Mker= 3 * math.random(5,71)
Mker2= 4 * math.random(2,61)
Mk1 = (Mke+Mke2)
Mk2 = (Mke2-Mke)
Key_v1 = (Mker2*Mker)
Key_v2 = (Mke+Mker2)
Key_Veru = Key_v1 + Key_v2
for i in ipairs(KYE) do
c = ((KYE[i] - Key_Veru  + (Mk1 + i)  * Mk2) % 256)
table.insert(KYEEE, c)
end

function EncSTRR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd = {}
for i = 1, #c do
c[i] = (c[i] - KYY1 - KYE[12] - KYE[3] * (KYE[5] + i) - (KYE[7] + i) - (KYE[6] + i) * (KYE[14] + i) - (KYE[4] + i)- KYE[9] - (KYE[11] + i) * (KYE[10] + i) - KYE[8] - KYE[13] * (KYE[1] + i) - KYE[2] * (KYE[15] + i)) % 256
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{K4={"..table.concat(c, ",").."}}"
end
TOTEXT ='for mi=1,0 do;local z={}if mi.mi~=nil then mi.mi=mi.mi()end;end;local ABB = "'..ABB..'";for mkm = 1,0 do;KKKK4 = "KKKK4";end;local i = "53718";local ACC = I_("'..ACC..'");local i = "71659";local ADD = "'..ADD..'";local AEE = "'..AEE..'";local i = "61539";local AFF = I_("'..AFF..'");local i = "16165";local AGG = "'..AGG..'";local i = "31584";local AB = I_("'..AB..'");local AC = "'..AC..'";local AD = I_("'..AD..'");local AE = "'..AE..'";local AF = "'..AF..'";local mi = "191";local AG = '..AG..';local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KKKK4 = "KKKK4";end;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local Moma1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];local L_=I_("'..math.random(9,999)..'");local L_ = I_("'.._I1..'");local Moma2 = (keyy[5]+keyy[4]*4)-keyy[1];local Moma3 = (keyy[3]+keyy[1]*2)-keyy[2];local Moma4 = (keyy[2]+keyy[4]*2)-keyy[3];local Moma5 = (keyy[1]+keyy[3]*4)-keyy[3];local Moma6 = (keyy[2]+keyy[4]*1)-keyy[5];local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local _UPVALUE_ = function(c)  res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KKKK4 = "KKKK4";end;for mkm = 1,0 do;KKKK4 = "KKKK4";end;res = res..string.char((c[m] + Moma2 + (Moma1 + m) + Moma2 * (Moma3 + m)) % 256)  end  if true then return res end if true then return end if true then return end end;local _UPVALUE_ , _UP_ = function(c) for mkm = 1,0 do;KKKK4 = "KKKK4";end c = c.K4 res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KKKK4 = "KKKK4";end;res = res..string.char((c[m] + Key1 + Key2 + Key3 % Key4 % Key5 + Key6 * Key1 ) % L_)  end  if true then return res end if true then return end if true then return end end , function(str)for mkm = 1,0 do;KKKK4 = "KKKK4";end str=str.K4 local K, F = KY1 - AG, AG - KY2 while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end for mkm = 1,0 do;KKKK4 = "KKKK4";end return (str:gsub("%x%x", function(c)  local L = K % _iii local H = (K - L) / _iii local M = H % _ii  while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end c = tonumber(c, 16) while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end local m = (c + (H - M) / _ii) * (2*M + 1) % 256 K = L * F + H + c + m  if true then return string.char(m)end if true then return end if true then return end end))end\n '

GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
function tempstr(sz,isF)
sz = sz or math.random(8,58)
local se = ' goto '..GTR..' '
local strs = ''
for s = 1, sz do
strs = strs..se
end
strs = 'if(nil)then '..strs..' ::'..GTR..':: end Fucekk = Fucekk'
if isF then strs = strs:gsub('Fucekk = Fucekk','')end
return strs
end

kuhp0 = ''
for i = 1, math.random(50,100) do
Meqi = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nfor i = 1,0 do;OC = 'K4';end;while(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;goto X1;if(nil or 0)then;return;end::X0::_1()::X1::function _1()goto X2;if(nil or 0)then;return;end::X3::_1()::X2::function _2()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end

Number = 18
Numberr = 17
ksmkk = 6
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
TOTEXT = TOTEXT:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
TOTEXT = TOTEXT:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
---Bta
for k, v in pairs(gg) do
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "gg[_UP_(INV.GG["..Numberr.."])]"
end)
end
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
for k, v in pairs(io) do
ambl = "io." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "io[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(os) do
ambl = "os." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "os[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(math) do
ambl = "math." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "math[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(debug) do
ambl = "debug." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "debug[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(string) do
ambl = "string." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "string[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(table) do
ambl = "table." .. k
DATA = DATA:gsub(ambl, function()
T = "{K4 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "table[_UP_(INV.GG["..Numberr.."])]"
end)
end
DATA = TOTEXT .. DATA
function Ker(c)
k=" for i = 1,0 do;OPC = 'K4';end "
return k:rep(c)
end
io.output(g.out, "w")
io.write([[
collectgarbage("collect")
local _ = "\n\n[' IDC U ']\n\n"
for i = 1,0 do;OC = 'K4';end
local g = {};local INV = {};local EI = {}
local I_=function(c) c="" end;local I_=function(c)return c end;local M_=function(c,m)end;local M_=function(c,m) return c * m end;for _iii = 1,0 do if _iii ~= nil then local _iii = {} _iii._iii = _iii._iii() end end;local g, g, g = {}, {}, {}while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for _ii = 1,0 do if _ii ~= nil then local _ii = {} _ii._ii = _ii._ii() end end;local i = I_("]]..math.random(100,88000)..[[");local Mke = ]]..Mke..[[;for i = 1,0 do;OPC = 'K4';end; EI.GF = EI.GF EI.GF = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,]]..table.concat(Table, ",")..[[,true,false,false,nil,nil,nil,true,nil,true,nil})EI.GF = EI.GF;local ABBB = ]]..ABBB..[[;local ACCC = ]]..ACCC..[[;local _ii=]]..i77..[[;for i = 1,0 do;OPC = 'K4';end;local Mker2 = ]]..Mker2..[[;local Key_v1 = M_(Mker2, ]]..Mker..[[);local Key_v2 = (Mke+Mker2);local Key_Veru = Key_v1 + Key_v2;local AGGG = ]]..AGGG..[[;local _l = I_({nil,nil,false,false,true,nil,]]..table.concat(TTTable, ",")..[[,]]..Mk1..[[,]]..Mk2..[[,{K4={]]..math.random(1,271)..[[}},{K4={]]..math.random(1,265)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},{K4={]]..math.random(1,221)..[[}},nil,false,false,{K4={]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},nil,nil,false,nil,{K4={]]..math.random(1,211)..[[,]]..math.random(1,231)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},false,true,nil}) function I_(c)res=""KeyYY={}for i in ipairs(c) do;res = (c[i] + Key_Veru - (_l[37] + i)  * _l[38]) % 256
table.insert(KeyYY, res)end;return KeyYY;end;local KYE= I_({]]..table.concat(KYEEE,",")..[[});I_=function(c)return c end ;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;INV.GG = INV.GG INV.GG = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,]]..table.concat(TTable, ",")..[[,false,nil,true,nil,true,nil,false,true,false,nil,false,true,nil,false,true,nil})INV.GG = INV.GG;MOD4 = "address";MOD5 = "flags";MOD6 = "values";MOD7 = "ERROR\nRESTART SCRIPT";local ADDD = I_("]]..ADDD..[[");local AEEE = I_("]]..AEEE..[[");local i = "]]..math.random(100,9300)..[[";MOD8 = "⚠️ERROR⚠️\nTime Lost🦅";local _iii= ]]..i19922..[[;for i = 1,0 do;OPC = 'K4';end;for i = 1,0 do;OPC = 'K4';end;MOD9 = "🎭RESTART SCRIPT NO LOG🦅";local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;for i = 1,5 do;loadfile = loadfile;load = load;loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end;a = {};for i = 1, string.char(53,48,48,48,48) do;table.insert(a, {[MOD4] = 0 + i,[MOD5] = 4,[MOD6] = 0});end;t1 = os.time();for i = 1, 6 do;gg.removeResults(a);end;gg.clearList();t2, a = os.time(), MOD7;if t2 < t1 then;gg.alert(MOD8, "");do return end;return;end;if t2 > t1 then;a = MOD9;end;if os.difftime(t2, t1) > 2 then;return F(a, "");end;local i = "]]..math.random(61,918)..[["local AFFF = I_("]]..AFFF..[[");local i = I_("]]..math.random(100,8900)..[[")local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF}
for i = 1,0 do;OC = 'K4';end
local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]
for i = 1,0 do;OLC = 'K4';end
_o = _o
_o = function(c) 
c=c.K4
res = '' 
for m in ipairs(c) do
res = res..string.char((c[m] + KYY1 + KYE[12] + KYE[3] * (KYE[5] + m) + (KYE[7] + m) + (KYE[6] + m) * (KYE[14] + m) + (KYE[4] + m)+ KYE[9] + (KYE[11] + m) * (KYE[10] + m) + KYE[8] + KYE[13] * (KYE[1] + m) + KYE[2] * (KYE[15] + m)) % 256)  
end
return res
end

]]..kuhp0..[[

for i = 1,0 do;OLC = 'K4';end
local GetKeyyy = ]]..KEYO[2]..[[

]]..DATA..[[

LK = string.char(table.unpack({39,69,67,79,78,68,69,32,83,67,82,73,80,84,32,66,89,32,75,75,75,75,52,39}))
gg.toast(LK)
print(LK)
for i = 1,0 do;OLC = 'K4';end
]])
io.close()
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
lass=[[
MOVE v0 v20
OP[118] 0x9880E3
MOVE v0 v32
OP[86] 0x82859FF0
MOVE v0 v0
OP[82] 0xB8849FF0
MOVE v0 v0
OP[115] 0xBC849FF0
MOVE v0 v0
OP[96] 0xBF849FF0
MOVE v0 v0
OP[123] 0xBB849FF0
MOVE v0 v0
OP[111] 0xB4849FF0
MOVE v0 v32
OP[71] 0x9980E3
MOVE v0 v0
]]
kos=[[
MOVE v0 v20
OP[92] 0x9880E3
MOVE v0 v32
OP[84] 0xB4849FF0
MOVE v0 v0
OP[128] 0xBB849FF0
MOVE v0 v0
OP[63] 0xB6849FF0
MOVE v0 v0
OP[73] 0xB6849FF0
MOVE v0 v32
OP[44] 0xEA68FE1
MOVE v0 v0
OP[44] 0xEA68FE1
MOVE v0 v0
OP[44] 0xEA68FE1
MOVE v0 v0
OP[44] 0xEA68FE1
MOVE v0 v0
OP[42] 0xA68FE15F34
MOVE v0 v32
OP[122] 0x9980E3
MOVE v0 v0
]]
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u0 "OLC" "K4"', lass):gsub("Infinity.0","100")
DATA = DATA:gsub('SETTABUP u0 "OC" "K4"', kos):gsub("Infinity.0","100")
os.remove(g.out..".tmp")
io.open(g.out,"w"):write(string.gsub(string.dump(load(string.dump(load(DATA), true)), true),'LuaR', 'LuaK', 1)):write(DATA.."\n['😈 I Am No need By ur Ask 😈']\n['I dont Care who r me']"):close()

--Anti Lasm
func = {}
function dzsh(Text)
    Text = Text:gsub(" ", "")
    return (Text:gsub(
        "..",
        function(jie)
            return string.char((tonumber(jie, 16)) % 256)
        end
    ))
end

function escapeOpcode(str,repl)
	if (repl==true) then 
	magic_character = {37}
	else
	magic_character = {40,41,46,37,43,45,42,63,91,93,94,36}
	end
	invi = {}
	txt = ""
	string.gsub(str,".",function(w) w= string.byte(w) invi[#invi+1]=w end)
	for i, v in ipairs(invi) do 
		if string.len(v)== 1 then invi[i] = "【0"..v.."】" 
		else invi[i] = "【"..v.."】"end
	end
	for i = 1,#invi do
		for m, k in ipairs(magic_character)do
			if(invi[i])~=	"【"..k.."】" then
				else invi[i] = "【37】"..invi[i]..""
			end
		end
		txt = txt .. invi[i]
	end
	txt = string.gsub(txt,"【(.-)】",function(w) return string.char(w) end)
	return txt
end

function numToHex(txt,skip)
    local ss = {}
    txt = string.format("%x", txt)
    len = string.len(txt)
    if string.len(txt) % 2 == 0 then
        txt:gsub("..?",function(n) ss[#ss + 1] = n end)
    else
        ss[1] = string.sub(txt, 1, 1)
        txt = string.sub(txt, 2)
        txt:gsub( "..?",function(n)ss[#ss + 1] = n end)
    end
    for i = 1, #ss do
        if string.len(ss[i]) == 1 then
            ss[i] = "0" .. ss[i]
        end
    end
    str = ""
    for i = #ss, 1, -1 do
        str = str .. ss[i]
    end
    if string.len(str) == 1 then
        str = str .. "0000000"
    elseif string.len(str) == 2 then
        str = str .. "000000"
    elseif string.len(str) == 3 then
        str = str .. "00000"
    elseif string.len(str) == 4 then
        str = str .. "0000"
    elseif string.len(str) == 5 then
        str = str .. "000"
    elseif string.len(str) == 6 then
        str = str .. "00"
    elseif string.len(str) == 7 then
        str = str .. "0"
    end
    return str
end

function formatTwo(str)
	if string.len(str)~=2 then str = "0"..str end
	return str
end

function getSources(source)
    io.open("/sdcard/readSources", "w"):write(source)
    file = io.open("/sdcard/readSources")
    s = 0
    n = 0
    local determinant = ""
    repeat
        s = s + 1
        text = file:read("*l")
        if text == nil then
            break
        end
        if text ~= nil then
            local lineDefine = string.match(text, "%.linedefined [-]?(%d+)")
            local lastLineDefine = string.match(text, "%.lastlinedefined [-]?(%d+)")
            local numparams = string.match(text, "%.numparams [-]?(%d+)")
            local isVararg = string.match(text, "%.is_vararg [-]?(%d+)")
            local maxStack = string.match(text, "%.maxstacksize [-]?(%d+)")
            if lineDefine ~= nil then
                n = n + 1
                func[n] = {[1] = numToHex(lineDefine)}
            end
            if lastLineDefine ~= nil then
                func[n] = {[1] = func[n][1], [2] = numToHex(lastLineDefine)}
            end
            if numparams ~= nil then
                numparams = string.format("%x", numparams)
                func[n] = {[1] = func[n][1], [2] = func[n][2], [3] = formatTwo(numparams)}
            end
            if isVararg ~= nil then
				isVararg = string.format("%x", isVararg)
                func[n] = {
                    [1] = func[n][1],
                    [2] = func[n][2],
                    [3] = func[n][3],
                    [4] = formatTwo(isVararg)
                }
            end
            if maxStack ~= nil then
				maxStack = string.format("%x", maxStack)
                func[n] = {
                    ["LineStarted"] = func[n][1],
                    ["LineEnded"] = func[n][2],
                    ["Parameter"] = func[n][3],
                    ["isVararg"] = func[n][4],
                    ["maxStack"] = formatTwo(maxStack)
                }
            end
        end
    until text == nil
    os.remove("/sdcard/readSources")
    return func
end

function antiLasm(source)
    Instruction = {}
    for i = 1, #func do
        indicator = dzsh(func[i]["LineStarted"] ..func[i]["LineEnded"] .. func[i]["Parameter"] .. func[i]["isVararg"] .. func[i]["maxStack"])
        indicator = escapeOpcode(indicator)
		
        replacement = dzsh(numToHex(math.random(2447483649, 3294967296)) .. numToHex(math.random(2447483649, 3294967296))) .. dzsh("FA01FA")
        replacement = escapeOpcode(replacement, true)
        ins = string.match(source, indicator .. "[^\20-\7e][^\20-\7e][^\20-\7e][^\20-\7e]") -- 提取后一个空白Byte (Number of Instructions)
		if(Instruction[2]==nil)then 
			if ins ~= nil then
				ins = string.sub(ins, string.len(ins) - 3, string.len(ins))
			end
			Instruction[#Instruction + 1] = table.concat({ins:byte(1, -1)}, ",")
		end
        source = string.gsub(source, indicator, replacement)
    end
    return source
end
    chunk = string.dump(loadfile(g.out), true, true)
    chunk = load(chunk)
    gg.internal2(chunk, g.out .. ".tmp") -- 导出 Lasm
    source = io.open(g.out .. ".tmp"):read("*a")
    getSources(source)
    file = io.open(g.out):read("*a")
    file = antiLasm(file)
    io.open(g.out..".lua", "w"):write(file)
    os.remove(g.out)
    os.remove(g.out .. ".tmp")
    gg.toast("Done Encrypt ✔")
    gg.setVisible(true)
print([[
File Saved To : ]]..g.out..[[

File Selected : ]]..g.info[1]..[[

File Output Choised : ]]..g.info[2]..[[

]])
os.exit()
end