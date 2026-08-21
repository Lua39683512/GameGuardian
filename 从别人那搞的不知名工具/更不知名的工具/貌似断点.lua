local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATS = loadfile(g.config)
if g.DATS ~= nil then g.info = g.DATS() g.DATS = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"🗂️导入脚本♞断点♞",
"📩导出脚本♞断点♞"
},g.info,{
"file",
"path"})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".(kit)")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("💎™断点 这是神的国度 你永远无法模仿 ™💎\n\n"..g.out..".{ENC}")
info = {g.out}
end
local DATS = io.input(g.last):read('*a')
local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end
PORN = {}
PORN2 = {}
Mk = math.random(62,737)
Mk2 = math.random(62,157)
KY={}
for i = 1,9999 do 
S = Mk + math.random(1,10)
table.insert(KY, S)
end
KY3={}
for i = 1,9999 do 
S3 = Mk + math.random(1,10)
table.insert(KY3, S3)
end
KY2={}
for i = 1,99 do 
S2 = Mk2 + math.random(1,10)
table.insert(KY2, S2)
end
A=KY2[1] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77] + KY[42] + KY[53] + KY[25] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77]  B = KY[A] A2=KY2[52] + KY2[27] + KY2[68] + KY3[73] + KY2[54] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY2[25] + KY2[53] + KY3[73] + KY2[54] + KY2[28] + KY3[84] + KY2[99] B2 = KY[A2] A3=KY2[47] + KY2[31] + KY2[83] + KY3[73] + KY2[54] + KY2[28] + KY3[84] + KY2[99] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77]  B3 = KY3[A3] A4=KY2[68] + KY3[73] + KY2[54] + KY2[28] + KY3[84] + KY2[99] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77] B4 = KY[A4] A5=KY2[35] + KY2[25] + KY2[53] + KY2[52] + KY2[27] + KY2[68] + KY3[73] + KY2[54] + KY2[2] + KY[26] + KY2[2] + KY[26]  B5 = KY[A5] A6=KY2[35] + KY2[2] + KY[26] + KY[58] + KY[77] + KY2[2] + KY[26] + KY[58] + KY[77]  B6 = KY[A6] A7=KY2[63] + KY2[72] + KY3[36] + KY2[99] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77] B7 = KY[A7] A8=KY2[53] + KY2[74] + KY2[53] + KY2[31] + KY2[83] + KY3[73] + KY2[54] + KY2[28] + KY3[84] + KY2[99] + KY2[2] + KY[26] + KY2[2] + KY[26] + KY[58] + KY[77] + KY2[28] + KY3[84] + KY2[99] B8 = KY3[A8] A9=KY2[28] + KY3[84] + KY2[99] + KY2[2] + KY[26] + KY[58] + KY[77] B9 = KY[A9] C=KY3[1] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY[58] + KY[77] + KY[42] + KY[53] + KY[25] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY[58] + KY[77]  G = KY[C] C2=KY3[52] + KY3[27] + KY3[68] + KY3[73] + KY3[54] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY3[25] + KY3[53] + KY3[73] + KY3[54] + KY3[28] + KY3[84] + KY3[99] G2 = KY[C2] C3=KY3[47] + KY3[31] + KY3[83] + KY3[73] + KY3[54] + KY3[28] + KY3[84] + KY3[99] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY[58] + KY[77]  G3 = KY3[C3] C4=KY3[68] + KY3[73] + KY3[54] + KY3[28] + KY3[84] + KY3[99] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY[58] + KY[77] G4 = KY[C4] C5=KY3[35] + KY3[25] + KY3[53] + KY3[52] + KY3[27] + KY3[68] + KY3[73] + KY3[54] + KY3[2] + KY[26] + KY3[2] + KY[26]  G5 = KY[C5] C6=KY3[35] + KY3[2] + KY[26] + KY[58] + KY[77] + KY3[2] + KY[26] + KY[58] + KY[77]  G6 = KY[C6] C7=KY3[63] + KY3[72] + KY3[36] + KY3[99] + KY3[2] + KY[26] + KY3[2] + KY[26] + KY[58] + KY[77] G7 = KY[C7] G8 = KY3[9999] G9 = KY[9999] if B == nil then gg.alert("Have error in Key please try enc again ❌") os.exit() end
M = G + G2 + C + C2 + A + B * 3 + B2 M2 = G3 + C3 + G4 + C4 + A2 * B2 + 352 + A3 M3 = G5 + G6 + C5 + C6 + A3 + B3 + B4 * A4 + 926 / A5 + B5 M4 = G7 + C7 + C + G8 + A4 + B4 * 836 / 436 + B5 + A5 O = A + B * 3 + B2 + G + G2 + C + C2 * A9 + B9 + B8 + B9 + A8 + A7 O2 = A2 * B2 + 800 + A3 + G3 + C3 + G4 + C4 O3 = A3 + B3 + B4 * A4 + 482 / A5 + B5 + G5 + G6 + C5 + C6 O4 = A4 + B4 *628 / 594 + B5 + A5  + G7 + C7 + C + G8 MO = M + O + M2 + M3 + O3 * O2  MO2 = M2 + M3 / O2 + O3 + O3 * M2 MO3 = 528 + MO + MO2 * M4 + O4 local KAY = (M+B2*B3) local KAY2 = (B6+B8+B7*B9) local KAY3 = (B3+B6*B9) local KAY5 = (B+M2+KAY+B9*KAY3) local KAY6 = (O+B3+B4*KAY2-O2+KAY5) local KAY7 = (B9+KAY6+KAY2+B6*M3*KAY+KAY5) local KAY4 = (KAY2+KAY+KAY6*KAY7+KAY3+B+B2*B3) local KAY = (G+G2*G3) local KAY2 = (O3+G8+G7*G9) local KAY3 = (G3+M4*G9) local KAY5 = (G+G5+KAY+G9*KAY3) local KAY6 = (G8+G3+MO*KAY2-G6+KAY5) local KAY7 = (G9+KAY6+KAY2+G6*G8*KAY+KAY5) local KAY4 = (KAY2+KAY+KAY6*KAY7+KAY3+G+G2*G3) local KEY = (G+G2*G3) local KEY2 = (G6+G8+G7*G9) local KEY3 = (G3+G6*MO2) local KEY5 = (G+G5+KEY+G9*KEY3) local KEY6 = (G8+G3+G4*KEY2-G6+KEY5) local KEY7 = (MO3+KEY6+KEY2+G6*G8*KEY+KEY5) local KEY4 = (KEY2+KEY+KEY6*KEY7+KEY3+G+G2*G3) local OFKEY = (KAY+KAY2+KAY3+KAY4+KAY5+KAY6-KAY7) local OFFKEY = (KEY+KEY2+KEY3*KEY4+KEY5+KEY6*KEY7) local OFFFKEY = (OFKEY+OFFKEY*KEY+KAY-KEY2+KAY3) 
AH = math.random(2,77)
B = math.random(2,77)
C = math.random(2,77)
FF = math.random(2,77)
function XNX(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - FF - (OFFKEY + i) * (OFFFKEY + i)) % 256
end
return "{"..cCc(gb, ",").."}"
end
function XNX2(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - OFKEY - (AH + i) * (OFFFKEY + i)) % 256
end
return "{"..cCc(gb, ",").."}"
end
ALLAWI=([[
;if(nil)then;(function()end)();end

if true then else return end if true then else return end
]])
DATS=DATS
:gsub("end","\nend\n"..ALLAWI)
:gsub("gg.getRangesList","ggetRngesList")
:gsub([["\"]],[["]]):gsub([[\""]],[["]])
:gsub([["']],[[']]):gsub([['"]],[[']])
:gsub([['\']],[[']]):gsub([[\'']],[[']])
:gsub([['"]],[[']]):gsub([["']],[[']])
XNXXN = 0
repeat
DATS = DATS:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
XN = XNX2(c)
table.insert(PORN2, XN)
XNXXN = XNXXN + 1
return "ALII(g.ALII["..XNXXN.."])"
end)
until DATS:match('"(.-)"') == nil
XNXX = 0
repeat
DATS = DATS:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
XN = XNX(c)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "ALI(g.ALI["..XNXX.."])"
end)
until DATS:match("'(.-)'") == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "gg[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(os) do
repeat
ambl = "os." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "os[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(io) do
repeat
ambl = "io." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "io[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(string) do
repeat
ambl = "string." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "string[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(table) do
repeat
ambl = "table." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "table[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(math) do
repeat
ambl = "math." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "math[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
for k, v in pairs(debug) do
repeat
ambl = "debug." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "debug[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
DATS=DATS:gsub("ggetRngesList","gg.getRangesList")
local XNXXX = table.concat(PORN, ",")
local XNXXXN = table.concat(PORN2, ",")
BLOKER = "while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end "
lasm = 'B = "MeXxMx"\n'
lasm = lasm:rep(30000)
ALI =[[
local B
]]..lasm..[[
local g ={}
g.ALI = g.ALI
]]..BLOKER..[[
local AH = ]]..AH..[[
g.ALI = {]]..XNXXX..[[}
]]..BLOKER..[[
g.ALI = g.ALI
]]..BLOKER..[[
g.ALII = g.ALII
]]..BLOKER..[[
g.ALII = {]]..XNXXXN..[[}
]]..lasm..[[
]]..BLOKER..[[
local B = ]]..B..[[
g.ALII = g.ALII
]]..BLOKER..[[
LOG=string.char(0)
LOG=LOG:rep(99999999)
for ali = 1,5 do
gg.toast("🖤断点制作🖤")
gg.searchNumber(LOG)
for i = 1,100 do 
debug.traceback(1, nil, LOG)
end
end
if gg.VERSION >= "77.00" then 
gg.alert("Use gg version new pls")
return 
end
]]..lasm..[[
local GetKey = {]]..cCc(KY, ",")..[[}
local GetKey = {]]..cCc(KY, ",")..[[}
]]..BLOKER..[[
local C = ]]..C..[[
local GetKey = {]]..cCc(KY, ",")..[[}
local GetKey3 = {]]..cCc(KY3, ",")..[[}
]]..BLOKER..[[
]]..lasm..[[
local GetKey2 = {]]..cCc(KY2, ",")..[[}
local GetKey2 = {]]..cCc(KY2, ",")..[[}
local FF = ]]..FF..[[
A=GetKey2[1] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey[42] + GetKey[53] + GetKey[25] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77]  B = GetKey[A] A2=GetKey2[52] + GetKey2[27] + GetKey2[68] + GetKey3[73] + GetKey2[54] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey2[25] + GetKey2[53] + GetKey3[73] + GetKey2[54] + GetKey2[28] + GetKey3[84] + GetKey2[99] B2 = GetKey[A2] A3=GetKey2[47] + GetKey2[31] + GetKey2[83] + GetKey3[73] + GetKey2[54] + GetKey2[28] + GetKey3[84] + GetKey2[99] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77]  B3 = GetKey3[A3] A4=GetKey2[68] + GetKey3[73] + GetKey2[54] + GetKey2[28] + GetKey3[84] + GetKey2[99] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] ]]..BLOKER..[[  B4 = GetKey[A4] A5=GetKey2[35] + GetKey2[25] + GetKey2[53] + GetKey2[52] + GetKey2[27] + GetKey2[68] + GetKey3[73] + GetKey2[54] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26]  B5 = GetKey[A5] A6=GetKey2[35] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77]  B6 = GetKey[A6] A7=GetKey2[63] + GetKey2[72] + GetKey3[36] + GetKey2[99] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] B7 = GetKey[A7] A8=GetKey2[53] + GetKey2[74] + GetKey2[53] + GetKey2[31] + GetKey2[83] + GetKey3[73] + GetKey2[54] + GetKey2[28] + GetKey3[84] + GetKey2[99] + GetKey2[2] + GetKey[26] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey2[28] + GetKey3[84] + GetKey2[99] B8 = GetKey3[A8] A9=GetKey2[28] + GetKey3[84] + GetKey2[99] + GetKey2[2] + GetKey[26] + GetKey[58] + GetKey[77] B9 = GetKey[A9] C=GetKey3[1] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey[42] + GetKey[53] + GetKey[25] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77]  G = GetKey[C] ]]..BLOKER..[[  C2=GetKey3[52] + GetKey3[27] + GetKey3[68] + GetKey3[73] + GetKey3[54] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey3[25] + GetKey3[53] + GetKey3[73] + GetKey3[54] + GetKey3[28] + GetKey3[84] + GetKey3[99] G2 = GetKey[C2] C3=GetKey3[47] + GetKey3[31] + GetKey3[83] + GetKey3[73] + GetKey3[54] + GetKey3[28] + GetKey3[84] + GetKey3[99] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77]  G3 = GetKey3[C3] C4=GetKey3[68] + GetKey3[73] + GetKey3[54] + GetKey3[28] + GetKey3[84] + GetKey3[99] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77] G4 = GetKey[C4] C5=GetKey3[35] + GetKey3[25] + GetKey3[53] + GetKey3[52] + GetKey3[27] + GetKey3[68] + GetKey3[73] + GetKey3[54] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26]  G5 = GetKey[C5] C6=GetKey3[35] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77]  G6 = GetKey[C6] C7=GetKey3[63] + GetKey3[72] + GetKey3[36] + GetKey3[99] + GetKey3[2] + GetKey[26] + GetKey3[2] + GetKey[26] + GetKey[58] + GetKey[77] G7 = GetKey[C7] ]]..BLOKER..[[  G8 = GetKey3[9999] G9 = GetKey[9999] 
local M = G + G2 + C + C2 + A + B * 3 + B2 ]]..BLOKER..[[ local M2 = G3 + C3 + G4 + C4 + A2 * B2 + 352 + A3 ]]..BLOKER..[[ local M3 = G5 + G6 + C5 + C6 + A3 + B3 + B4 * A4 + 926 / A5 + B5 ]]..BLOKER..[[ local M4 = G7 + C7 + C + G8 + A4 + B4 * 836 / 436 + B5 + A5 ]]..BLOKER..[[ local O = A + B * 3 + B2 + G + G2 + C + C2 * A9 + B9 + B8 + B9 + A8 + A7 ]]..BLOKER..[[ local O2 = A2 * B2 + 800 + A3 + G3 + C3 + G4 + C4 ]]..BLOKER..[[ local O3 = A3 + B3 + B4 * A4 + 482 / A5 + B5 + G5 + G6 + C5 + C6 ]]..BLOKER..[[ local O4 = A4 + B4 *628 / 594 + B5 + A5  + G7 + C7 + C + G8 ]]..BLOKER..[[ local MO = M + O + M2 + M3 + O3 * O2  ]]..BLOKER..[[ local MO2 = M2 + M3 / O2 + O3 + O3 * M2 ]]..BLOKER..[[ local MO3 = 528 + MO + MO2 * M4 + O4 local KAY = (M+B2*B3) local KAY2 = (B6+B8+B7*B9) local KAY3 = (B3+B6*B9) local KAY5 = (B+M2+KAY+B9*KAY3) local KAY6 = (O+B3+B4*KAY2-O2+KAY5) local KAY7 = (B9+KAY6+KAY2+B6*M3*KAY+KAY5) local KAY4 = (KAY2+KAY+KAY6*KAY7+KAY3+B+B2*B3) local KAY = (G+G2*G3) local KAY2 = (O3+G8+G7*G9) ]]..BLOKER..[[ local KAY3 = (G3+M4*G9) local KAY5 = (G+G5+KAY+G9*KAY3) local KAY6 = (G8+G3+MO*KAY2-G6+KAY5) local KAY7 = (G9+KAY6+KAY2+G6*G8*KAY+KAY5) local KAY4 = (KAY2+KAY+KAY6*KAY7+KAY3+G+G2*G3) local KEY = (G+G2*G3) local KEY2 = (G6+G8+G7*G9) ]]..BLOKER..[[ local KEY3 = (G3+G6*MO2) local KEY5 = (G+G5+KEY+G9*KEY3) local KEY6 = (G8+G3+G4*KEY2-G6+KEY5) local KEY7 = (MO3+KEY6+KEY2+G6*G8*KEY+KEY5) local KEY4 = (KEY2+KEY+KEY6*KEY7+KEY3+G+G2*G3) local OFKEY = (KAY+KAY2+KAY3+KAY4+KAY5+KAY6-KAY7) local OFFKEY = (KEY+KEY2+KEY3*KEY4+KEY5+KEY6*KEY7) local OFFFKEY = (OFKEY+OFFKEY*KEY+KAY-KEY2+KAY3) 
function ALI(c) 
res = "" 
for i in ipairs(c) do 
res = res..string.char((c[i] + FF + (OFFKEY + i) * (OFFFKEY + i)) % 256)
end 
return res
end
function ALII(c) 
res = "" 
for i in ipairs(c) do 
res = res..string.char((c[i] + OFKEY + (AH + i) * (OFFFKEY + i)) % 256)
end 
return res
end
]]
DATS = ALI..DATS
io.output(g.out,"w")
io.write([[
local _ = '\n\n\t\t\t\t💎™ ♥断点 ♥这是神的国度 你永远无法模仿 ™💎\n\n۩ بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ۩\n\nالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۩ الرَّحْمَنِ الرَّحِيمِ ۩ مَالِكِ يَوْمِ الدِّينِ۩\n\nإِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۩ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ۩\n\nصِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ۩\n\nصدق الله العظيم \n\n×'
local Q = {}
Q.Q = function()
]]..DATS..[[
 end
Q.Q()
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
SETTABLE XN3 'ALLAWI' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
OP[83] 0x0a
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xb1879ff0
MOVE v0 v0
OP[48] 0xae879ff0
MOVE v0 v0
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xb1879ff0
MOVE v0 v0
OP[48] 0xb6879ff0
MOVE v0 v0
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xae879ff0
MOVE v0 v0
OP[48] 0xb8879ff0
MOVE v0 v0
OP[83] 0x0a
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
SETTABLE XN3 'ALLAWI' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
]])
KSMK = KSMK:gsub("XN1", "v"..XN1):gsub("XN2", "v"..XN2):gsub("XN3", "v"..XN3):gsub("XN4", "v"..XN4):gsub("XN5", "v"..XN5):gsub("XN6", "v"..XN6)
KSMK = KSMK.."\n"
--os.exit()
if not load(DATS) then
gg.alert("Script Can't be encrypt ❌\nplease try again\nor this mean your script have code can't be encrypt 💗")
os.exit()
end
io.input(g.out, "r")
local DATS = io.read("*a")
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), g.out)
io.input(g.out, "r")
DATS = io.read("*a")
DATS = DATS
:gsub('RETURN  ; garbage', KSMK)
:gsub("numparams [^\n]*","numparams 2")
:gsub("is_vararg [^\n]*","is_vararg 8")
:gsub("maxstacksize [^\n]*","maxstacksize 99")
:gsub("linedefined [^\n]*","linedefined 0")
:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
if not load(DATS) then
gg.alert("Script Can't be encrypt ❌\n please try again\n or this mean your script have code can't be encrypt 💗")
os.exit()
end
DATS = string.dump(load(DATS), true)
CUK = "MeXxMx"
BIG = string.char(0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35)
BIG = BIG:rep(1000)
DATS = DATS:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
DATS = DATS:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
DATS = DATS:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
io.open(g.out,"w"):write(DATS):close()
gg.alert("💎™ ♥断点 ♥这是神的国度 你永远无法模仿 ™💎\n\n"..g.out..".{ENC}")
return
end 