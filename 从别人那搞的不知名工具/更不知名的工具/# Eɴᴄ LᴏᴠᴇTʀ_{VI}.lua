aurell = gg.alert(os.date([[
LoveTr Eɴᴄʀʏᴘᴛɪᴏɴ {Vᴇʀsɪᴏɴ VI}

┏━━━━━━━━━━━━━━━━━━━
┣[🛡️] Bᴀsᴇ64 >> SHA >> Sᴛʀɪɴɢ
┣[🛡️] HEX 
┣[🛡️] SSTᴏᴏʟ 1-0
┣[🛡️] SSTᴏᴏʟ Cʀᴀsʜ
┣[🛡️] Bɪɢ Lᴀsᴍ ++
┣[🛡️] Fᴀᴋᴇ Kᴇʏ + Fᴀᴋᴇ Tᴀʙʟᴇ
┣[🛡️] Rᴀɴᴅᴏᴍ Tᴀʙʟᴇ
┣[🛡️] Aɴᴛɪ Lᴏɢ 900GB+
┣[🛡️] Aɴᴛɪ Lᴏᴀᴅ (3 Fᴏʀᴍᴜʟᴀs)
┣[🛡️] Bʟᴏᴄᴋ SSTᴏᴏʟ
┣[🛡️] Aɴᴛɪ DEGG Lᴏɢ GG
┣[🛡️] Cᴀɴ Eɴᴄ Lɪʙ Vᴀʟᴜᴇs
┣[🛡️] Fɪx Lᴏɴɢ Tɪᴍᴇ Eɴᴄ
┗━━━━━━━━━━━━━━━━━━━]]),"🛡️Start","❌Exit")
if aurell == nil then end
if aurell == 1 then end
if aurell == 2 then print("Encryption Canceled!") os.exit()end
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
	"[📁] Select File:",--1
	"[📁] Select Path:",--2
	"[🛡️] Big Lasm",--3
	"[🗓️] Add Expired Date",--4
	"[🔐] Add Password",--5
	"[🛡️] Add Minimal GG Package",--6
	"[🛡️] Add Minimal GG Version",--7
	"[📝] Add Costum Lua Header (Make SSTool Crash + 1-0 Error)",--8
	"[📝]Cᴜsᴛᴏᴍ Tᴏᴀsᴛ",--9
	"[📝] Cᴜsᴛᴏᴍ Pʀɪɴᴛ"--10
},g.info,{
	"file", 
	"path",
	"checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "text",
    "text"})
if g.info == nil then print("🛠️Encryption Canceled🛠️") os.exit() end
gg.saveVariable(g.info,g.config)
DATA = io.input(g.info[1]):read("*a")
if not load(DATA) then
gg.alert('Script Error!')
os.exit() end
g.last = g.info[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".encLua")
g.out = g.info[2]..'/'..g.out..'.lua'


if g.info[4] == true then
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

if g.info[5] == true then
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
DATA = 'PASSW = gg.prompt({\'🔒 Input Password (Password in Video): \'},{[1]=\'\'},{[1]=\'text\'})\nif not PASSW the﻿n return\nend \nif PASSW[1] == "" then gg.alert("Password Can Not Be Empty❕") end\nif PASSW[1] =="' .. PASS[1] .. '" then\ngg.toast(\'✅ Password correct❕\')\nelse\nreturn gg.alert("' .. PASS[2] .. '") end\n' .. DATA
end

if g.info[6] == true then
ArthurGanteng = gg.prompt({
"✏️ Set Your Package GameGuardian",
"📝 Type Message If Package Is Wrong :"
}, {"com.lovetr.gg","⚠ Use LoveTr GG! ⚠"},{
"text",
"text"})
end--if
if not ArthurGanteng then
gg.setVisible(true)
elseif ArthurGanteng[1] == nil then
gg.alert("⚠️ Set Package GameGuardian Can Not Empty!")
gg.setVisible(true)
else
print("⚠ SetPeckage GG : True√ ")
DATA = '\nif gg.PACKAGE == "' .. ArthurGanteng[1] .. '" then\nelse\ngg.alert("' .. ArthurGanteng[2] .. '")\nprint("' .. ArthurGanteng[2] .. '")\nos.exit()\nend\n' .. DATA
end

if g.info[7] == true then
VERSION = gg.prompt({
"🔐 Set Minimal GG Version : ",
"🗒️ Set Error GG Message :"
}, {gg.VERSION,"⚠️ Error GG VERSION ⚠️"}, {
"number",
"text"})
end--if
if not VERSION then
gg.setVisible(true)
elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true)
else
print("🛡 Minimal Version Required : True✔")
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Nab = {}
local KeyTBL = {}
local Lass = {}
local KeyLast = {}
local GTBL = {}
local TBNUB = {}
local GTG_ArthurXTL= {}
local TG_ArthurXTNUB = {}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function fakekey()
res = ''
for i = 1,math.random(1,3) do
res = res.."\n".."local imii = "..math.random(1000,800000).."\n"
end
return res
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Key1 = math.random(1000,800000)
local Key2 = math.random(1000,800000)
local Key3 = math.random(1000,800000)
local Key4 = math.random(1000,800000)
local Key5 = math.random(1000,800000)
local Key6 = math.random(1000,800000)
local Key7 = math.random(1000,800000)
local Key8 = math.random(1000,800000)
local Key9 = math.random(1000,800000)
local Key10 = math.random(1000,800000)
local Key11 = math.random(1000,800000)
local Key12 = math.random(1000,800000)
local Key13 = math.random(1000,800000)
local Key14 = math.random(1000,800000)
local Key15 = math.random(1000,800000)
local Key16 = math.random(1000,800000)
local Key17 = math.random(1000,800000)
local Key18 = math.random(1000,800000)
local Key19 = math.random(1000,800000)
local Key20 = math.random(1000,800000)
local KeyHex1 = math.random(1000,800000)
local KeyHex2 = math.random(1000,800000)
local KeyHex3 = math.random(1000,800000)
local KeyHex4 = math.random(1000,800000)
local KeyHex5 = math.random(1000,800000)
local getKey = -Key1+Key2-Key3+Key4-Key5+Key7-Key8+Key9-Key10+Key11-Key12+Key13-Key14+Key15-Key16+Key17-Key18+Key19-Key20
function Hex(str) --hex key
    return str:gsub('.', function (c)
		return string.format('%02x ', (string.byte(c)+KeyHex1-KeyHex2+KeyHex3+KeyHex4-KeyHex5)%256)
    end):gsub(" $", "", 1)
end
-- FUNCTION ENCODE --
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--gsub
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Base 64
local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function Base64(data)
 return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EncSHA(str)
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end
local K, F = Key3, 16384 + Key11 
return (str:gsub('.', function(m)
local L = K % Key2;local H = (K - L) / Key2;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TG_ArthurXT(str)
gb = {str:byte(1,-1)}
for i = 1, #gb do
gb[i] = (gb[i] - Key1 - (getKey + i) * (Key1 + i) ) % Key6
end
return "{"..table.concat(gb, ",").."}"
end

for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DATA = DATA:gsub('gg.getRangesList', function()
T = EncSHA("getRangesList")
return 'gg[LoveTr("'..T..'")]' end)

DATA = DATA:gsub('"(.-)"', function(c)
T = EncSHA(c)
return 'ArthurXT("'..T..'")' end)

for k, v in pairs(gg) do
repeat
Kuhaku = "gg."..k
DATA = DATA:gsub(Kuhaku, function()
T = EncSHA(k)
return 'gg[ArthurXT("'..T..'")]'
end)

until DATA:match(Kuhaku) == nil
end
for k, v in pairs(os) do
repeat
Kuhaku = "os."..k
DATA = DATA:gsub(Kuhaku, function()
T = EncSHA(k)
return 'os[ArthurXT("'..T..'")]'
end)

until DATA:match(Kuhaku) == nil
end

tblvalue = {}
p = 0
DATA = DATA:gsub('"(.-)"',function(c)
c = Hex(c)
c = Base64(c)
c = TG_ArthurXT(c)
if p == 0 then
tes= load("return "..c)()
takesample = tes[1]
end
table.insert(tblvalue,c)
p = p + 1
return "Conan(Dec64(ArthurXT_Pro(hUwfJfNc["..p.."])))"
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if g.info[3] == true then
big = 'B = "MeXxMx"\n'
Anjiradaasu=("local B\n"..big:rep(659).." if(nil)then(function()end)()end;"):rep(40)
DATA=Anjiradaasu..DATA
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
chunk = "for i = 1,0 do;Arthur='Chunk';end"
chunk = chunk.."\n"
chunk = chunk:rep(10)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function makeRandomTbl()
rettable = ""
for i = 1,p do
tabel = {}
for j = 1,math.random(10,60) do-- isinya{{!!!},} brp banyak
table.insert(tabel,math.random(takesample-40,takesample+50))
end
rettable=rettable.."{"..table.concat(tabel,",").."},"
end
return rettable
end

function faketbl()
res = ""
for i = 1,math.random(1,3) do
res = res.."\nlocal imii = {"..makeRandomTbl().."}\n"
end
return res
end
DATA =[[
local LT = {};local Madarchod = {}; collectgarbage("collect")
local _ =  ([=[


┏━━━━━━━━━━━━━━━━━━━
┣[🛡️] Eɴᴄʀʏᴘᴛɪᴏɴ LoveTr
┣[🛡️] Vᴇʀsɪᴏɴ VI
┣[🛡️] Thanks to All My Teacher
┗━━━━━━━━━━━━━━━━━━━



]=])
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
LT.Madarchod = function()
]]..chunk..[[;
]]..chunk..[[;
]]..faketbl()..[[;
local hUwfJfNc = {]]..table.concat(tblvalue,",")..[[};
]]..faketbl()..[[;
]]..chunk..[[;
]]..fakekey()..[[;
local Key1 = ]]..Key1..[[;
]]..fakekey()..[[;
local Key2 = ]]..Key2..[[;
]]..fakekey()..[[;
local Key4 = ]]..Key4..[[;
]]..fakekey()..[[;
local Key5 = ]]..Key5..[[;
]]..fakekey()..[[;
local Key13 = ]]..Key13..[[;
]]..fakekey()..[[;
local Key19 = ]]..Key19..[[;
]]..fakekey()..[[;
local Key6 = ]]..Key6..[[;
]]..fakekey()..[[;
local Key7 = ]]..Key7..[[;
]]..fakekey()..[[;
local Key8 = ]]..Key8..[[;
]]..fakekey()..[[;
local Key14 = ]]..Key14..[[;
]]..fakekey()..[[;
local Key9 = ]]..Key9..[[;
]]..fakekey()..[[;
local Key10 = ]]..Key10..[[;
]]..fakekey()..[[;
local Key15 = ]]..Key15..[[;
]]..fakekey()..[[;
local Key12 = ]]..Key12..[[;
]]..fakekey()..[[;
local Key11 = ]]..Key11..[[;
]]..fakekey()..[[;
local Key16 = ]]..Key16..[[;
]]..fakekey()..[[;
local Key17 = ]]..Key17..[[;
]]..fakekey()..[[;
local Key3 = ]]..Key3..[[;
]]..fakekey()..[[;
local Key18 = ]]..Key18..[[;
]]..fakekey()..[[;
local Key20 = ]]..Key20..[[;
]]..fakekey()..[[;
local KeyHex1 = ]]..KeyHex1..[[;
]]..fakekey()..[[;
local KeyHex2 = ]]..KeyHex2..[[;
]]..fakekey()..[[;
local KeyHex3 = ]]..KeyHex3..[[;
]]..fakekey()..[[;
local KeyHex4 = ]]..KeyHex4..[[;
]]..fakekey()..[[;
local KeyHex5 = ]]..KeyHex5..[[;
]]..fakekey()..[[
local getKey = -Key1+Key2-Key3+Key4-Key5+Key7-Key8+Key9-Key10+Key11-Key12+Key13-Key14+Key15-Key16+Key17-Key18+Key19-Key20
]]..fakekey()..[[;
local Key53 = ]]..Key3..[[;local Key14 = ]]..Key11..[[;local inv256
]]..chunk..[[;
gg.toast("]]..g.info[9]..[[");
print("]]..g.info[10]..[[");
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
]]..chunk..[[;
local function Conan(Text)
Text = Text:gsub(" ","")
return (Text:gsub("..",function (Text)
return string.char((tonumber(Text,16) -KeyHex1+KeyHex2-KeyHex3-KeyHex4+KeyHex5)%256)
end))
end
]]..chunk..[[;
local ArthurXT_Pro=function(c)
text = ''
for i in ipairs(c) do
text = text .. string.char((c[i] + Key1 + (getKey + i) * (Key1 + i)) % Key6)
end;return text;end
]]..chunk..[[;
local ArthurXT = function(str)local K, F = Key53, 16384 + Key14 return (str:gsub('%x%x', function(c) local L = K % Key2 local H = (K - L) / Key2 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
]]..chunk..[[;
local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

local function Dec64(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end
]]..chunk..[[;
local hook = gg.searchNumber local hook2  = gg.editAll gg.editAll = function(...) parm = {...} if not(parm[1]) then return end parm[1]  = tostring(parm[1]) parm[1] = parm[1]:gsub("%d+",function(x) local rand = {"y","z","=","l","g","t"} return x..(rand[math.random(1,#rand)]):rep(100000)..(rand[math.random(1,#rand)]):rep(100000) end) hook2(table.unpack(parm)) end gg.searchNumber = function(...) parm = {...} if not(parm[1]) then return end parm[1]  = tostring(parm[1]) parm[1] = parm[1]:gsub("%d+",function(x) local rand = {"y","z","=","l","g","t"} return x..(rand[math.random(1,#rand)]):rep(100000)..(rand[math.random(1,#rand)]):rep(100000) end) hook(table.unpack(parm)) end
if gg.isPackageInstalled("com.hckeam.mjgql") == true then --Log tool checker
gg.alert("Remove noob GG Logger\nDEGG Shit") os.exit()
else end
LOG = os.clock()
Spam = string.char(0):rep(999)
for i = 1,100000 do
debug.getinfo(i,nil,Spam) end
LOGD = os.clock() - LOG
if LOGD <= 1 then else end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
]]..DATA..[[ 
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local
yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy=
{}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
os.rename(gg.getFile(), gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)))
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while(nil)do;for w=w,w do;local w={102,88,4,56,73}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={102,88,4,56,73}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={102,88,4,56,73}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={102,88,4,56,73}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={102,88,4,56,73}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={102,88,4,56,73}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={102,88,4,56,73}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={102,88,4,56,73}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
for i = 1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {15,3,100,23,98} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local j = {15,3,100,23,98} j[''] = j local t = (j)(j, j) t[1] = 1 end
for i = 1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local j = {} j[''] = j local t = (j)(j, j) t[1] = 1 end
while(nil)do;local w={}if(w.w)then;w.w=(w.w(w))end;end
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
tg = gg
gg = nil
while (gg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
gg =tg
tg = nil
while (tg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.AYT() zzzzz.zzt = zzzzz.AYT.zzyyt() zzzzz.zlyt = zzzzz.BSG.eSports() zzzzz.zzz = zzzzz.TLL.evils() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local
yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy=
{}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bangke = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local zz = {} zz.sel = zz.data() if zz.data ~= nil then zz.sel = zz.data() end zz = nil end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
os.rename(gg.getFile(), gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)))
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for i in ipairs({}) do i((true | false) - true) end
for i in ipairs({}) do (-nil)((-nil)[nil] | nil | nil) end
for i, v in ipairs({}) do if ipairs(i .. v) == true then break end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
while(nil)do;local w={102,88,4,56,73}if(w.w)then;w.w=(w.w(w))end;end
while(nil)do;for w=w,w do;local w={102,88,4,56,73}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={102,88,4,56,73}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={102,88,4,56,73}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={102,88,4,56,73}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={102,88,4,56,73}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={102,88,4,56,73}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={102,88,4,56,73}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={102,88,4,56,73}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
for i = 1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {15,3,100,23,98} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local j = {15,3,100,23,98} j[''] = j local t = (j)(j, j) t[1] = 1 end
for i = 1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local j = {} j[''] = j local t = (j)(j, j) t[1] = 1 end
while(nil)do;local w={}if(w.w)then;w.w=(w.w(w))end;end
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
tg = gg
gg = nil
while (gg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
gg =tg
tg = nil
while (tg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.zcot = zzzzz.zl() zzzzz.zzt = zzzzz.zl.zl() zzzzz.zlyt = zzzzz.zl.zlin() zzzzz.zzz = zzzzz.zl.ayt() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.d = zz.d() if zz.d ~= zz.d then zz.d = zz.d() end local zz = {} zz.clearResults = zz.clearResults() if zz.clearResults ~= zz.clearResults then zz.clearResults = zz.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local zz = {} zz.g = zz.g() if zz.g ~= zz.g then zz.g = zz.g() end local zz = {} zz.setRanges = zz.setRanges() if zz.setRanges ~= zz.setRanges then zz.setRanges = zz.setRanges() end end end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for i = 1,5 do;x = {};x[1] = {xx,xx,xx,xx,xx,xx,xx};x[2] = {{x[1][1],_,__,___,___x},{'LoveTr'}};x[3] = {5,10,15,20};xd = table.insert(x,'\\0x000');end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for u = 1,3 do
local i = {"]]..math.random(2500)..[["}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 1,0 do
xxxxxxxx__ = xxxxxxxx__
local i = {"]]..math.random(2500)..[[",xxxxxxxx__,"\000\000\000\000\000\000\000\000",nil} 
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 0,900,0 do
xxxxxxxx__({{iiii,iiii,iiii,iiii,i},iiii,iiii,iiii,iiii})
xxxxxxxx__({{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i})
xxxxxxxx__( {{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},i,ii,iii,i,ii,iii})
xxxxxxxx__({{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii})
for u = 0, 800 do
xxxxxxxx__ = xxxxxxxx__
local i = {"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000",xxxxxxxx__}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 0, 700 ,0 do
xxxxxxxx__({{iiii,iiii,iiii,iiii,i},iiii,iiii,iiii,iiii})
xxxxxxxx__({{{iii,ii,iii,iii},i,i,i,i},i,ii,i,ii,i})
xxxxxxxx__( {{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},i,ii,iii,i,ii,iii})
xxxxxxxx__({{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},iii,iii,iii,iiii,iiii,iii,iii,iii})
                            end
                     end
              end
       end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end if(nil)then if(true)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end ::GBE:: end while(nil)do;local x={}if(x.x)then;x.x=(x.x(x))end;end while(nil)do;for x=x,x do;local x={}if(x.x)then;x.x=x.x(x)end;for xx=x.x,x.x,x.x do;local xx={}if(xx.x)then;xx.x=xx.x()end;for xxx=x,xx.x,x do;local xxx={}if(xxx.x)then;xxx.x=xxx.x(x)end;for xxxx=x,xx,xxx.x do;local xxxx={}if(xxxx.x)then;xxxx.x=xxxx.x(x)end;local xxxx={}if(xxxx.x)then;xxxx.x=(xxxx|xxx|xx|x)(x)end;end;local xxx={}if(xxx.x)then;xxx.x=(true|xxx|xx|x)(x)end;end;local xx={}if(xx.x)then;xx.x=(true|false|xx|x)(x)end;end;local x={}if(x.x)then;x.x=(true|nil|false|nil|x|nil|false|true|nil)(x)end;return(true|false|nil)end;return;end while(nil)do;local x={}if(x.x)then;x.x=(x.x(x))end;end while(nil)do;for x=x,x do;local x={}if(x.x)then;x.x=x.x(x)end;for xx=x.x,x.x,x.x do;local xx={}if(xx.x)then;xx.x=xx.x()end;for xxx=x,xx.x,x do;local xxx={}if(xxx.x)then;xxx.x=xxx.x(x)end;for xxxx=x,xx,xxx.x do;local xxxx={}if(xxxx.x)then;xxxx.x=xxxx.x(x)end;local xxxx={}if(xxxx.x)then;xxxx.x=(xxxx|xxx|xx|x)(x)end;end;local xxx={}if(xxx.x)then;xxx.x=(true|xxx|xx|x)(x)end;end;local xx={}if(xx.x)then;xx.x=(true|false|xx|x)(x)end;end;local x={}if(x.x)then;x.x=(true|nil|false|nil|x|nil|false|true|nil)(x)end;return(true|false|nil)end;return;end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end
LT.Madarchod()
]]
function dumpplus(loadfun) -- Anti Load
local strhx=string.dump(loadfun,true)
local key0 = ('\0'):rep(16)
local iv0 = ('\0'):rep(8)
local txt0 = ('\0'):rep(48)
local iv = '\x27\x17\xF4\xD2\x1A\x56\xEB\xA6'
local str1=string.char(0x25,0x98,0xfa,0xe1,0x4d,0x66)
local str2=string.char(0x01,0x78,0xa1,0x09,0xf2,0x21)
return strhx:gsub(str1,str2)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
cank =[[
ADD v0 v0 v0
OP[190] 0x8B80E2B1879FF0
MOVE v0 v0
OP[188] 0x8B80E2B4879FF0 
MOVE v0 v0
OP[70] 0x8B80E2BB879FF0
MOVE v0 v0
OP[70] 0xAA879FF0 
MOVE v0 v0
OP[51] 0x8B80E2B9879FF0 
MOVE v0 v0
OP[94] 0x8B80E2B7879FF0
MOVE v0 v0
ADD v0 v0 v0
]]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
io.output(g.out..".cfg")
io.write(DATA)
file = io.open(g.out..".cfg", "r")
DATS = file:read("*a")
file:close()
if not load(DATS) then
gg.alert("Script cannot encrypted")
print("Check your Script")
os.exit()
end
DATS = string.dump(load(DATS), true,true)
DATS = gg.internal2(load(DATS), g.out)
io.input(g.out, "r")
DATS = io.read("*a")
DATS = DATS:gsub('SETTABUP u0 "Arthur" "Chunk"', cank)
DATS = string.dump(load(DATS),true)
local DATA = string.gsub(string.dump(load(DATS),true),"LuaR"..string.char(0, 1, 4,4,4,8,0), "LuaR"..string.char(0, 1,0,0,4,4,0))
CUK = "MeXxMx"
BIG = string.char(0)
BIG = BIG:rep(10000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Custom Lua Header
if g.info[8] == true then
::sing::
local info = gg.prompt({"✒Place the signature you want (max is 6 caractere)"},{"R"},{"text"}) or {""}
if info[1] == "" then
  gg.toast("❌ invalid signature")
  goto sing
end
local alert = gg.alert("🗒This will be the final result: Lua"..info[1]:sub(1,6),"↩Place Other","✅Ok!")
if alert == 1 then
  goto sing
end
local CstHdr = info[1]
local TTB = function (SerdaduYT) -- Text to byte
local Byte = {string.byte(SerdaduYT,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("SerdaduYT = \""..Result.."\"")()
return SerdaduYT
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(g.out)
local Text = io.read("*a")
local CD = function (TXT,Len,Header) -- Convert And Dump
local Dmp = string.dump(load(TXT),true)
if Len > 2 then 
TB = {string.match(Header,(string.gsub(Header,".", "(.)")))}
Text1 = TB[1]..TB[2]
end
if Len == 1 then
Save = string.gsub(Dmp,"\82",TTB(Header),1)
elseif Len == 2 then
Save = string.gsub(Dmp,"\82\0",TTB(Header),1)
elseif Len == 3 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4",TTB(TB[3]),1)
elseif Len == 4 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4",TTB(TB[3]..TB[4]),1)
elseif Len == 5 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4\4",TTB(TB[3]..TB[4]..TB[5]),1)
elseif Len == 6 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4\4\8",TTB(TB[3]..TB[4]..TB[5]..TB[6]),1)
end
return Save
end
local Script = CD(Text,(#CstHdr),CstHdr)
DATA = Script
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gg.setVisible(true)
ends = os.time()
print([[
═══════════════════════
[🛡] Encrypted By LoveͲr [🛡️]
═══════════════════════
🔒FILE : ]]..g.info[1]..[[

🔒PATH : ]]..g.info[2]..[[
]])
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))

io.open(g.out,"w"):write(DATA)
os.remove(g.out..".cfg")
os.exit()
end