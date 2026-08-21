local Alone = {}
for k, v in pairs(gg) do
	Alone[k] = gg[k]
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  zz = Alone.getFile();PROMPT = nil;Config = Alone.EXT_CACHE_DIR .. "/" .. Alone.getFile():match("[^/]+$") .. ".cfg";Data = loadfile(Config);if Data ~= nil then PROMPT = Data() Data = nil end;if PROMPT == nil then PROMPT = {zz, zz:gsub("/[^/]+$", "")} end
while true do
PROMPT = Alone.prompt({
'📂 Select Script :',
'📂 Select Ouput :',
},PROMPT,{
'file',
'path',
})
if PROMPT == nil then Alone.alert('❌ script was canceled ❌') return end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ;Out = Alone.getFile():match("[^/]+$");Out = "『404』".. Out:gsub(".lua", "");Out = PROMPT[2] .. "/" .. Out .. ".lua"
local DATA = io.open(PROMPT[1],"r"):read("*a")

DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]]):gsub([["']],[[']]):gsub([['"]],[[']]):gsub([['\']],[[']]):gsub([[\'']],[[']]):gsub([['"]],[[']]):gsub([["']],[[']])

Table = {}
TTable = {}

local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end

KY = {}
Rand = math.random(20,100)
for i = 1,3491 do
Ma = Rand + math.random(1,10)
table.insert(KY,Ma)
end

KY2 = {}
Rand = math.random(20,100)
for i = 1,3491 do
Ma = Rand + math.random(1,10)
table.insert(KY2,Ma)
end

KY3 = {}
Rand = math.random(20,100)
for i = 1,3491 do
Ma = Rand + math.random(1,10)
table.insert(KY3,Ma)
end

local A = KY[1] + KY[2] + KY[26] + KY[2] + KY[26] + KY[58] + KY[77] + KY[42] + KY[53] + KY[25] + KY[2] + KY[26] + KY[2] + KY[26] + KY[58] + KY[77]
local A2=KY2[52] + KY2[27] + KY2[68] + KY3[73] + KY2[54] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY2[25] + KY2[53] + KY3[73] + KY2[54] + KY2[28] + KY3[84] + KY2[99] 
local B = KY[A] + KY[1] + KY[2] + KY[26] + KY[2] + KY2[68] + KY3[73] + KY2[54] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY2[25] + KY2[53] + KY[98]
local B2 = KY2[A2] + KY[A] + KY2[B] + KY[1] + KY[2] + KY[26] + KY[2] + KY[26] + KY[58] + KY[77] + KY[42] + KY[54] + KY2[32] + KY[43] + KY2[55]
local C = KY[B2] + KY2[B2] + KY[A] + KY2[A] + KY[A2] + KY2[A2] + KY3[56] + KY[65] + KY2[90] + KY[30] + KY[34] + KY[2] + KY[26] + KY3[15] + KY[A] + KY2[B] + KY[16]
local C2 = KY[1] + KY[2] + KY[26] + KY[2] + KY[26] + KY[B2] + KY2[B2] + KY[A] + KY[26] + KY[2] + KY[26] + KY3[73] + KY2[54] + KY[A] + KY2[B] + KY[18]
local AB = (A+A2*B/B2) + (C2*A2/50+B2)
local ABB = (A+A2*B/B2) + (C2*A2/50+B2)
local ACC = (A+B2*KY[5]) + (KY[8]*KY[9]+C2-B2)
local ADD = (0x1F2C5E+A2+KY3[99]) + (0x2D5E+0x23F1)
local AEE = (0xF50E1+0x5FD5) + (KY2[90]+0xFD5E) + (0x50F4A)
local KEYY = {(ABB+ACC-ADD+AEE)-KY[56],AEE+KY[34]*KY2[76]-KY[8],KY[50]*AEE,AEE,ABB+ACC,ADD*KY3[88],0x2EF69,KY3[30]*KY[200],ABB+KY[A2],KY2[B2]}


AH = math.random(2,77)
B = math.random(2,77)
C = math.random(2,77)
FF = math.random(2,77)
AB = math.random(50,100)
AC = math.random(50,100)
AD = math.random(50,100)
AE = math.random(50,100)
AF = math.random(50,100)
AG = math.random(50,100)

local KEY = {(AB+AC*AD-AF)+AE-AG+AB*AC,AB+AD-AE+AF*AG}

local inv256
function EncSHA(str)
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end end
local K = ((KEY[1] + KEY[2] - AB) + (AB - AC + AD) - (AB)) - ((AB+AC*AE)+(AF+AD-AG)-(50/2*AB))
local F = (KEY[1] + KEY[2] - AB) + (AB - AC + AD) - (AB) * (K + AB / 2) / (AB + AC * AE)
return (str:gsub('.', function(m)
local L = ((K % AB) + (AB - F) * (F + K) - (F + K / AB) + ((F - K) + (50*2/5) - (KEY[1] + KEY[2])))
local H = ((K - L) / AC ) + ((AB + AC) + (AD - AE)) - (L + K)
local M = (H % AD)--Bisa
local m = m:byte()
local c = ((m * inv256[M] - (H - M) / 128) % 256)
K = L * F + H + c + m return ('%02x'):format(c)
end))
end

function EncString(str)
sd = {}
str = EncSHA(str)
gb = {str:byte(0,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - (KEYY[2] + KEYY[3] + i) - (KEYY[8] * KEYY[5] - KEYY[3] + i) * (KEYY[7] + KEYY[4] - AEE + i)) % 256
end
return "{"..table.concat(gb, ",").."}"
end

block=([[
;if(nil)then;(function()end)();end

if true then else return end if true then else return end
]])
DATA=DATA
:gsub("end","\nend\n"..block)
:gsub("gg.getRangesList","ggetRngesList")
:gsub([["\"]],[["]]):gsub([[\""]],[["]])
:gsub([["']],[[']]):gsub([['"]],[[']])
:gsub([['\']],[[']]):gsub([[\'']],[[']])
:gsub([['"]],[[']]):gsub([["']],[[']])

for i = 1, 3 do
load(DATA)
end
if DATA:match('"(.-)"') ~= nil then
repeat DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncString(c)
return "zxRend(XyzB("..T.."))"
end)
Alone.toast('⏳ Wait Encode Value.')
until DATA:match('"(.-)"') == nil end
for k, v in pairs(gg) do
ambl = "gg." .. k
if DATA:match(ambl) ~= nil then
repeat DATA = DATA:gsub(ambl, function()
T = EncString(k)
return "gg[zxRend(XyzB("..T.."))]"
end)
Alone.toast('⏳ Wait Encode gg.')
until DATA:match(ambl) == nil end
end
for k, v in pairs(os) do
ambl = "os." .. k
if DATA:match(ambl) ~= nil then
repeat DATA = DATA:gsub(ambl, function()
T = EncString(k)
return "os[zxRend(XyzB("..T.."))]"
end)
Alone.toast('⏳ Wait Encode os.')
until DATA:match(ambl) == nil end
end

DATA=DATA:gsub("ggetRngesList","gg.getRangesList")
BLOKER = "while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end;"
BLOKER = BLOKER:rep(10)
lasm = 'B = "MeXxMx"\n'
lasm = lasm:rep(30000)
Decode =[[
local g ={};local function ___(c,f,...)f = ...,...,... return c end;]]..BLOKER..[[;local B;]]..lasm..[[;
for i = 1,0 do;E='E';end;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;local AH = ]]..AH..[[;
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;for i = 1,0 do;E='E';end;;local FF = ]]..FF..[[;local B = ]]..B..[[;local C = ]]..C..[[;for i = 1,0 do;E='E';end;
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;local GetKey = {]]..cCc(KY, ",")..[[};while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
for i = 1,0 do;E='E';end;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;local GetKey2 = {]]..cCc(KY2, ",")..[[};while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
for i = 1,0 do;E='E';end;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;local GetKey3 = {]]..cCc(KY3, ",")..[[}
for i = 1,0 do;E='E';end;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
local A = GetKey[1] + GetKey[2] + GetKey[26] + GetKey[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey[42] + GetKey[53] + GetKey[25] + GetKey[2] + GetKey[26] + GetKey[2] + GetKey[26] + GetKey[58] + GetKey[77]
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ]]..math.random(100,8000)..[[;
local A2=GetKey2[52] + GetKey2[27] + GetKey2[68] + GetKey3[73] + GetKey2[54] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey2[25] + GetKey2[53] + GetKey3[73] + GetKey2[54] + GetKey2[28] + GetKey3[84] + GetKey2[99] 
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local B = GetKey[A] + GetKey[1] + GetKey[2] + GetKey[26] + GetKey[2] + GetKey2[68] + GetKey3[73] + GetKey2[54] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey2[25] + GetKey2[53] + GetKey[98]
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local B2 = GetKey2[A2] + GetKey[A] + GetKey2[B] + GetKey[1] + GetKey[2] + GetKey[26] + GetKey[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey[42] + GetKey[54] + GetKey2[32] + GetKey[43] + GetKey2[55]
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local C = GetKey[B2] + GetKey2[B2] + GetKey[A] + GetKey2[A] + GetKey[A2] + GetKey2[A2] + GetKey3[56] + GetKey[65] + GetKey2[90] + GetKey[30] + GetKey[34] + GetKey[2] + GetKey[26] + GetKey3[15] + GetKey[A] + GetKey2[B] + GetKey[16]
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local C2 = GetKey[1] + GetKey[2] + GetKey[26] + GetKey[2] + GetKey[26] + GetKey[B2] + GetKey2[B2] + GetKey[A] + GetKey[26] + GetKey[2] + GetKey[26] + GetKey3[73] + GetKey2[54] + GetKey[A] + GetKey2[B] + GetKey[18]
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local AB = (A+A2*B/B2) + (C2*A2/50+B2)
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local ABB = (A+A2*B/B2) + (C2*A2/50+B2)
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local ACC = (A+B2*GetKey[5]) + (GetKey[8]*GetKey[9]+C2-B2)
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local ADD = (0x1F2C5E+A2+GetKey3[99]) + (0x2D5E+0x23F1)
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local AEE = (0xF50E1+0x5FD5) + (GetKey2[90]+0xFD5E) + (0x50F4A)
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local KEYY = {(ABB+ACC-ADD+AEE)-GetKey[56],AEE+GetKey[34]*GetKey2[76]-GetKey[8],GetKey[50]*AEE,AEE,ABB+ACC,ADD*GetKey3[88],0x2EF69,GetKey3[30]*GetKey[200],ABB+GetKey[A2],GetKey2[B2]}
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
local ____ = ___("Dream");for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;local AB = ]]..AB..[[;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;
local AC = ]]..AC..[[;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;local AD = ]]..AD..[[;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;
if(nil)then;(function()end)();end;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;local AE = ]]..AE..[[;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;
local ____ = ___("Dream");local AF = ]]..AF..[[;for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;local AG = ]]..AG..[[
for i = 1,0 do;OP='OP';end;for i = 1,0 do;OP='OP';end;local ____ = ___("Dream");
if(nil)then;(function()end)();end;local KEY = {(AB+AC*AD-AF)+AE-AG+AB*AC,AB+AD-AE+AF*AG}
local function zxRend(str) 
local K = ___((KEY[1] + KEY[2] - AB) + (AB - AC + AD) - (AB)) - ((AB+AC*AE)+(AF+AD-AG)-(50/2*AB))
local F = ___(KEY[1] + KEY[2] - AB) + (AB - AC + AD) - (AB) * (K + AB / 2) / (AB + AC * AE)
return (str:gsub('%x%x', function(c) 
local L = ___((K % AB) + (AB - F) * (F + K) - (F + K / AB) + ((F - K) + (50*2/5) - (KEY[1] + KEY[2])))
local H = ___((K - L) / AC ) + ((AB + AC) + (AD - AE)) - (L + K)
local M = ___(H % AD)
c = tonumber(c, 16) 
local m = ___((c + (H - M) / 128) * (2*M + 1) % 256)
K = L * F + H + c + m 
return ___(string.char(m))
end))
end
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
function XyzB(c) 
res = "" 
for i in ipairs(c) do 
res = res..string.char((c[i] + (KEYY[2] + KEYY[3] + i) + (KEYY[8] * KEYY[5] - KEYY[3] + i) * (KEYY[7] + KEYY[4] - AEE + i)) % 256)
end 
return res
end
;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;;if(nil)then;(function() end)()end;
]]

DATA = Decode..DATA
Alone.toast('⏳ Checking Decode..')
io.output(Out,"w")
io.write([[
local _ = '\n\n\t\t\t\t🛡️ Encryption By Xyz Alone v2 🛡️\n\n'
local Xyz = {}
Xyz.Alone = function()

if gg.isPackageInstalled("com.hckeam.mjgql") then
  print("Delete Log Apk")
  os.exit()
end
if _G["debug"]["getinfo"](gg.alert).source == "=[Java]" then
else
gg.alert("HOOK Detected")
      return
end;

]]..DATA..[[;

end
Xyz.Alone()
]])
XN1 = math.random(45,63)XN2 = math.random(XN1,71)XN3 = math.random(XN2,73)XN4 = math.random(XN3,75)XN5 = math.random(XN4,77) XN6 = math.random(XN5,79)
KSMK =([[
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 'gg.alert' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 'AXYZ' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 'gg.alert' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 'AXYZ' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
]])
KSMK = KSMK:gsub("XN1", "v"..XN1):gsub("XN2", "v"..XN2):gsub("XN3", "v"..XN3):gsub("XN4", "v"..XN4):gsub("XN5", "v"..XN5):gsub("XN6", "v"..XN6)
KSMK = KSMK.."\n"
--os.exit()
Alone.toast('⏳ Checking Compile..')
if not load(DATA) then
gg.alert("Script Can't be encrypt ❌\nplease try again\nor this mean your script have code can't be encrypt 💗")
os.exit()
end
io.input(Out, "r")
local DATS = io.read("*a")
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), Out)
io.input(Out, "r")
DATS = io.read("*a")
DATS = DATS
:gsub('RETURN  ; garbage', KSMK)
:gsub("numparams [^\n]*","numparams 2")
:gsub("is_vararg [^\n]*","is_vararg 8")
:gsub("maxstacksize [^\n]*","maxstacksize 99")
:gsub("linedefined [^\n]*","linedefined 0")
:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATS = string.dump(load(DATS), true)
gg.toast("⏳ Loading 95%")
CUK = "MeXxMx"
BIG = string.char(0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35)
BIG = BIG:rep(1000)
DATS = DATS:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
DATS = DATS:gsub(string.char(163, 0, 0, 0, 156, 0, 0, 0)
,string.char(255, 255, 255, 255, 255, 255, 255, 255))
:gsub(string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,255, 255, 255, 255, 255, 255, 255, 255)
,string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,173,240,159,135,176))
DATS = DATS:gsub(string.char(255,0,0,2,1,0,0,0,31,0,128,0),
string.char(255,0,0,2,0,0,0,0))
:gsub(string.char(255,1,0,2,1,0,0,0,31,0,128,0), 
string.char(255,1,0,2,0,0,0,0))
gg.toast('⏳ Wait... String.Char metode2')
DATS = DATS:gsub(string.char(8,0,0,0,75,115,109,107,107,97,97),
string.char(25,0,0,0,77,97,102,105,97,87,97,114,40,123,32,86,53,32,126,61,32,39,115,51,39,32,125,41))
DATS = DATS:gsub(string.char(31,0,128,0,13,0,0,0,4,1),
string.char(31,0,128,0,13,0,0,0,4,17,39) .. 
(function(...) z = (...) return string.char(z:len()):rep(9999) end)(""))
DATS=DATS:gsub(string.char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,169,88,240,159,135,173,240,159,135,176,88,240,159,135,184,240,159,135,190,0,1,3,5),
string. char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,169,88,240,159,135,173,240,159,135,176,88,240,159,135,184,240,159,135,190,0,1,3,3)):gsub(
string.char(0,0,0,65,0,0,0,129,64,0,0,29,64,128,1,31,0,128,0,2,0,0,0,4),
string.char(0,0,0,102,0,0,1,30,0,0,0,2,0,0,0,4)) 
gg.toast('⏳ Wait... Compilling')
DATS = DATS:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
io.open(Out,"w"):write(DATS):close()
return os.exit()
end