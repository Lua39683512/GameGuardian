local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"File",
"path"
},g.info,{
"file",
"path"
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".(ENC)")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n📎Succeeded Encrypt File✓\n\n\n📩Save in "..g.out.."\n\n\n🛡️ᴇɴᴄʀʏᴘᴛ ʙʏ ᴀʟɪ ᴀʟ-ϙᴀɪsɪ ᴠ3 {s1}🛡️\n\n\n╔═if Need Help Dm \n╚═➣@ALIAL_QAISI\n\n╔═Telegram\n╚═➣ @XU_UQ")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
KK1 = math.random(1,283)KK2 = math.random(1,283)AB = math.random(1,283) KK3 = math.random(1,283)KEZ = math.random(1,283)KK4 = math.random(1,283)KK5 = math.random(1,283)KK6 = math.random(1,283)Kymy = math.random(1,283)Kyx = math.random(1,283)KK7 = math.random(1,283)KEZ2 = math.random(1,283) KK = math.random(1,283)AC = math.random(1,283) AD = math.random(1,283) KK8 = math.random(1,283)AE = math.random(1,283) AF = math.random(1,283) AG = math.random(1,283)
local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF} local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1] local KY2 = (key[2]+key[3]*1)-key[4] local PORN = {} local PORNX = {} local Key53 = KEZ; local Key14 = KEZ2;
local inv256
function Sha(data)
if not inv256 then
inv256 = {}
for M = 0, 127 do
local inv = -1
repeat inv = inv + 2
until inv * (2*M + 1) % 256 == 1
inv256[M] = inv
end
end
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, Kymy + Key14 return (data:gsub('.', function(m)local L = K % Kyx;local H = (K - L) / Kyx;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
function XNX(str)
str=Sha(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KY1 - KY2 - KY2 * (KY2 + i) - (KK3 + i) - (KY1 + i) * (KY2 + i) - (KY1 + i)- KK4 - (KY1 + i) * (KK5 + i) - KY1 - KK6 * (KY1 + i) - KK7 * (KK8 + i)) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "{"..cCc(sd, ",").."}"
end
XNXX = 0
repeat
DATA = DATA:gsub("gg.getRangesList","ggetRngesList")
DATA = DATA:gsub("end","end\nfor KSMK = 1,0 do;Fr5y = 'Fr5y';end")
DATA = DATA:gsub("end", "end\nif true then else return end if true then else return end\n")
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
XN = XNX(c)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "ALI(g.ALI["..XNXX.."])"
end)
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "gg[ALI(g.ALI["..XNXX.."])]"
end)
until DATA:match(ambl) == nil
end
local XNXXX = table.concat(PORN, ",")
ALI =[[
local g ={}
;if(nil)then;(function()end)();end;
g.ALI = g.ALI
g.ALI = {]]..XNXXX..[[}
g.ALI = g.ALI
;if(nil)then;(function()end)();end;
local Key53 = ]]..KEZ..[[;local Key14 = ]]..KEZ2..[[;local inv256
local QAISI = function(data)
local K, F = Key53, ]]..Kymy..[[ + Key14 return (data:gsub('%x%x', function(c) local L = K % ]]..Kyx..[[ local H = (K - L) / ]]..Kyx..[[ local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
local AB = ]]..AB..[[;local iimi = Key10;local iimi = 8271;local iimi = 4817;local AC = ]]..AC..[[;local iimi = 9272;local iimi = 2727;local iimi = 3727;local iimi = 4783;local iimi = 9473;local iimi = 4783;local iimi = 8363;local AD = ]]..AD..[[;local iimi = 3073;local iimi = 8362;local iimi = 7392;local AE = ]]..AE..[[;local iimi = 7494;local AF = ]]..AF..[[;local iimi = 3728;local AG = ]]..AG..[[;local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1];local KY2 = (key[2]+key[3]*1)-key[4]
function ALI(c) res = "" for i in ipairs(c) do res = res..string.char((#c[i] + ]]..KY1..[[ + ]]..KY2..[[ + ]]..KY2..[[ * (KY2 + i) + (]]..KK3..[[ + i) + (KY1 + i) * (KY2 + i) + (KY1 + i)+ ]]..KK4..[[ + (KY1 + i) * (]]..KK5..[[ + i) + KY1 + ]]..KK6..[[ * (KY1 + i) + ]]..KK7..[[ * (]]..KK8..[[ + i)) % 256)  end return QAISI(res) end
io.input(gg.getFile())
local Nka = io.read("*a"):rep(3)
for i = 1, 150 do
local Nqa = string.char(math.random(97,122))
io.open(gg.getFile().. Nqa.. Nka, "w")
end
;if(nil)then;(function()end)();end;
for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;
]]
DATA = ALI..DATA
io.output(g.out,"w")
io.write([[
local _ = "\n\n\n             🛡️Encryption By ALi AL-Qaisi Version 3.0🛡️\n\n\n                        if Need Encrypt Dm : @XU_UQ\n\n\n"
local Q = {}
Q.Q = function()
for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;
for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end; for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;for KSMK = 1,0 do;Fr5y = 'Fr5y';end;
]]..DATA..[[
 end
Q.Q()
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
]])
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
KSMK = "LOADK v0 CONST[262143]  ; Next OP after LOADKX not EXTRAARG ; garbage\nSETTABUP u0 v18 v116  ; variable v116 out of stack (.maxstacksize = 39 for this func) ; garbage\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nLOADK v0 CONST[262143]  ; Next OP after LOADKX not EXTRAARG ; garbage\nSETTABUP u0 v18 v116  ; variable v116 out of stack (.maxstacksize = 39 for this func) ; garbage\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\n"
KSMK = KSMK.."\n"
io.close()
--os.exit()
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u0 "Fr5y" "Fr5y"', KSMK)
DATA = DATA:gsub('RETURN  ; garbage', KSMK)
DATA = DATA:gsub("numparams [^\n]*","numparams 2")
DATA = DATA:gsub("is_vararg [^\n]*","is_vararg 8")
DATA = DATA:gsub("maxstacksize [^\n]*","maxstacksize 99")
DATA = DATA:gsub("linedefined [^\n]*","linedefined 0")
DATA = DATA:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATA = string.dump(load(DATA), true)
DATA = DATA:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
io.open(g.out,"w"):write(DATA):close()
gg.alert("📎Succeeded Encrypt File✓\n\n\n📩Save in "..g.out.."\n\n\n🛡️ᴇɴᴄʀʏᴘᴛ ʙʏ ᴀʟɪ ᴀʟ-ϙᴀɪsɪ ᴠ3 {s1}🛡️\n\n\n╔═if Need Help Dm \n╚═➣@ALIAL_QAISI\n\n╔═Telegram\n╚═➣ @XU_UQ","[OK]")
return 
end