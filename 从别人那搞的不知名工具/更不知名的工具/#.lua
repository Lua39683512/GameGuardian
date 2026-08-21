local g = {}
g.sel = gg.prompt({
	"📂Select File"
	},{
		"/sdcard"
		},{
			"file"})
if g.sel == nil then return end
local DATA = io.input(g.sel[1]):read('*a')


X = math.random(1,286) AB = math.random(10600,20000) AC = math.random(36000,40000) AD = math.random(57000,607000) AE = math.random(78000,80000) AF = math.random(90700,100000) AG = math.random(38600,60086) local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF} local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1] local KY2 = (key[2]+key[3]*1)-key[4] local GBLK = {} local PORNX = {} local Key53 = 8186484168865098; local Key14 = 4887;
local inv256
function Sha(DATA)
if not inv256 then
inv256 = {}
for M = 0, 127 do
local inv = -1
repeat inv = inv + 2
until inv * (2*M + 1) % 256 == 1
inv256[M] = inv
end
end
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, 16384 + Key14 return (DATA:gsub('.', function(m)local L = K % 274877906944;local H = (K - L) / 274877906944;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
function XNX(str)
str=Sha(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
LESS = '\\'..X..''
for i = 1, #gb do
gb[i] = (gb[i] - KY1 - (KY2 + i) * (KY1 + i) ) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "{"..table.concat(sd, ",").."}"
end
SANZ = 0
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
XN = XNX(c)
table.insert(GBLK, XN)
SANZ = SANZ + 1
return "XSNZ(g.XSNZ["..SANZ.."])"
end)
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
XN = XNX(k)
table.insert(GBLK, XN)
SANZ = SANZ + 1
return "gg[XSNZ(g.XSNZ["..SANZ.."])]"
end)
until DATA:match(ambl) == nil
end
local PRO = table.concat(GBLK, ",")
XSNZ =[[
local g ={}
g.XSNZ = {]]..PRO..[[}
g.XSNZ = g.XSNZ
local Key53 = 8186484168865098;local KyeC = 4917;local KeyX = 8186484168869262;local Key14 = 4887;local inv256
local Official = function(DATA)
local K, F = Key53, 16384 + Key14 return (DATA:gsub('%x%x', function(c) local L = K % 274877906944 local H = (K - L) / 274877906944 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
--Fake Key
local Key1 = "Key1";local Key2 = "478273";local Kye3 = "823562";local Kye4 = "683383";local Kye5 = "Kye2";local Kye6 = "364792";local Kyee1 = "376293";local Kyee2 = "Key3";local Kye3 = "993269";local Kye4 = "836283";local Kye5 = "648923";local Kye6 = "837362";local KYY1 = "848363";local KYY2 = "946833";local KY3 = "432993";local KY4 = "4793";local KY5 = "9374";local KY6 = "7292";local Key1 = "6943";local Key2 = "3945";local Kye3 = "7926";local Kye4 = "8629";local Kye5 = "9374";local Kye6 = "593284";local Key1 = "9362";local Key2 = "3927292";local Kye3 = "6283";local Kye4 = "8363";local Kye5 = "Key53";local Kye6 = "3583";local Kyee1 = "8363";local Kyee2 = "Key14";local Kye3 = "926292";local Kye4 = "437373";local Kye5 = "8263";local Kye6 = "9363";local KYY1 = "7367";local KYY2 = "9363";local KY3 = "4729";local KY4 = "892284";local KY5 = "392628";local KY6 = "2438";local Key1 = "7363";local Key2 = "Key7";local Kye3 = "836263";local Kye4 = "9363";local Kye5 = "438934";local Kye6 = "8363";local iimi = "2828";local iimi = "4628";local Key1 = "4927";local Key2 = "817393";local Kye3 = "4927";local Kye4 = "9172";local Kye5 = "5291";local Kye6 = "1482"; local Kyee1 = "8261";local Kyee2 = "6382";local Kye3 = "8352";local Kye4 = "536183";local Kye5 = "926523";local Kye6 = "283927";local KYY1 = "6281";local KYY2 = "6292";local KY3 = "4729";local KY4 = "1828";local KY5 = "7392";local KY6 = "5282";local Key1 = "5282";local Key2 = "9262";local Kye3 = "3682";local Kye4 = "3937";local Kye5 = "3683";local Kye6 = "3793";local AB = "]]..AB..[[";local iimi = "Key10";local iimi = "8271";local iimi = "4817";AC = "]]..AC..[[";local iimi = "9272";local iimi = "2727";local iimi = "3727";local iimi = "4783";local iimi = "9473";local iimi = "4783";local iimi = "8363";local AD = "]]..AD..[[";local iimi = "3073";local iimi = "8362";local iimi = "7392";local AE = "]]..AE..[[";local iimi = "7494";local AF = "]]..AF..[[";local iimi = "3728";local AG = "]]..AG..[[";local iimi = "7282";local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1];local KY2 = (key[2]+key[3]*1)-key[4]local Key1 = "4927";local Key2 = "8193";local Kye3 = "4927";local Kye4 = "9172";local Kye5 = "5291";local Kye6 = "1482"; local Kyee1 = "8261";local Kyee2 = "6382";local Kye3 = "8352";local Kye4 = "5383";local Kye5 = "9263";local Kye6 = "2927";local KYY1 = "6281";local KYY2 = "6292";local KY3 = "4729";local KY4 = "1828";local KY5 = "7392";local KY6 = "5282";local Key1 = "5282";local Key2 = "9262";local Kye3 = "3682";local Kye4 = "3937";local Kye5 = "3683";local Kye6 = "3793"
function XSNZ(c) res = "" for m in ipairs(c) do res = res..string.char((#c[m] + KY1 + (KY2 + m) * (KY1 + m)) % 256) end return Official(res) end
]]
DATA = XSNZ..DATA
DATA=[[
collectgarbage("collect")
local _ = '🛡️ Encryption By XSanZYT v3.0 (BETA) 🛡️' 
gg.setVisible(true)
gg.toast("🛡️ Encryption By XSanZYT v3.0 (BETA) 🛡️")
gg.setVisible(false)
local Q = {}
Q.Q = function()
]]..DATA..[[
 end
Q.Q()
]]











gg.setVisible(true)
DATA = string.dump(load(DATA),true)
DATA = DATA:gsub("LuaR"..string.char(0, 1, 4,4,4,8,0), "LuaR"..string.char(0, 1,0,0,4,4,0))
io.open(g.sel[1]..".Enc.lua","w"):write(DATA)

	gg.alert("Successfully Encrypted")
