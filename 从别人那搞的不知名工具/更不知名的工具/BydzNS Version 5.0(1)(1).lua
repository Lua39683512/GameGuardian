local CFG={
title="💎 Encryption by BydzNesia Version 5.0 💎",
chunk=""}
func = {}
Instruction = {}
local function MakeChunk(path)
-- Make Chunk .....
local chunk = CFG.chunk
INTa = #chunk
INTb = INTa / 4
INTc = INTa - (INTb*4)
if (INTb*4) ~= INTa then
INTb = (INTa + INTb) / 4
INTx = (INTa + INTb) - INTa - INTc
INTd = string.char(0)
chunk = chunk .. INTd:rep(INTx)
end
local FC = {31,0,128,0,31,0,128,0,10,0,0,0}
local LC = {0,0,0,234,166,math.random(128,190),0,0,math.random(9, 255),0,0,0,31,0,128,0,0}
local CHUNK = string.char(table.unpack(FC)) .. chunk .. string.char(table.unpack(LC))
-- REPLACINGGGG LASEM GARBEG
local INTchk = {CHUNK:byte(1,-1)}
local INTrep = (#INTchk / 4)
local RPLa = string.dump(loadfile(path), true)
local RPLa = gg.internal2(load(RPLa), path..".lasm")
io.input(path..".lasm")
local STR = io.read("*a")
local GRBG = "RETURN  ; garbage\n"
local STR = STR:gsub('SETTABUP u0 "BYDZ" "BDZ"', GRBG:rep(INTrep * 3))
local Cdump = string.dump(load(STR), true)
os.remove(path..'.lasm')
local Ctbl = {}
for i = 1, INTrep do;table.insert(Ctbl, 31);table.insert(Ctbl, 0);table.insert(Ctbl, 128);table.insert(Ctbl, 0);end
local Cout = Cdump:gsub(string.char(table.unpack(Ctbl)), string.char(table.unpack(INTchk)))
return Cout
end
function dzsh(Text)
Text = tostring(Text)
if Text ~= nil then
Text = Text:gsub(" ", "")
Text = Text:gsub("..", function(jie)
return string.char((tonumber(jie, 16)) % 256)
end)
else
Text = ''
end
return Text
end
function escapeOpcode(str,repl)
if repl==true then 
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
if(invi[i])~="【"..k.."】" then
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

function hexToNum(str) -- Hex to number 
local tab = {};
local num = "";
str = string.gsub(str,"..",function (cc) tab[#tab+1]= cc end)
for i = #tab, 1 , -1 do 
num = num .. tab[i]
end
num = tonumber(num,16)
return num
end
function randtext(sz)
sz= sz or math.random(8,58)
local se=" goto s "
local strs=""
for s=1,sz do
strs=strs..se
end
strs=" if nil then"..strs.."::s:: end "
return strs
end
function formatPattern(pattern, direction, number)
if(direction==0)then
for i=1, number do 
pattern = "."..pattern
end
elseif(direction==1)then
for i=1, number do 
pattern = pattern.."."
end
end
return pattern
end
function formatTwo(str)
if string.len(str)~=2 then str = "0"..str end
return str
end
function zjm_base(cmz)
local zjm
    if cmz == 1 then
        zjm = dzsh("01000000") -- LOADK 0 0
    elseif cmz == 2 then
        zjm = dzsh("01") .. string.char(math.random(0, 33)) .. dzsh("0000") -- LOADK X 0
    elseif cmz == 3 then
        zjm = dzsh("ADF09F87") -- SHL 30 481 126
    elseif cmz == 4 then
        zjm = string.char(math.random(47, 63)) .. dzsh("F09F87") -- UNKNOW 30 481
    elseif cmz == 5 then
        zjm = string.char(math.random(111, 127)) .. dzsh("F09F87") -- UNKNOW 30 481
    elseif cmz == 6 then
        zjm = string.char(math.random(173, 191)) .. dzsh("F09F87") -- UNKNOW 30 481
    elseif cmz == 7 then
        zjm = string.char(math.random(239, 255)) .. dzsh("F09F87") -- UNKNOW 30 481
    elseif cmz == 8 then
        zjm = dzsh("A7") .. string.char(math.random(0, 33), math.random(0, 33), math.random(0, 33)) -- EXTRAARG <Ax>
    elseif cmz == 9 then
        zjm = dzsh("ACF09F87") -- BXOR 30 48 126
    elseif cmz == 10 then
        zjm = string.char(math.random(0, 255)) .. dzsh("000000") -- BAND 30 48 126
    elseif cmz == 11 then
        zjm = dzsh("41010000") -- LOADK 5 0
    elseif cmz == 12 then
        zjm = dzsh("01000000")
    elseif cmz == 13 then
        zjm = string.char(math.random(47, 63)) .. dzsh("000001") -- UNKNOW 30 481
    elseif cmz == 14 then
        zjm = string.char(math.random(111, 127)) .. dzsh("000001") -- UNKNOW 30 481
    elseif cmz == 15 then
        zjm = string.char(math.random(173, 191)) .. dzsh("000001") -- UNKNOW 30 481
    elseif cmz == 16 then
        zjm = string.char(math.random(239, 255)) .. dzsh("000001") -- UNKNOW 30 481
    elseif cmz == 17 then
        zjm = dzsh("C1000000") -- LOADK X 0
    elseif cmz == 18 then
        zjm = dzsh("81000000") -- LOADK X 0
    elseif cmz == 19 then
        zjm = dzsh("41000000") -- LOADK X 0
    else
        zjm = string.char(math.random(133, 255), math.random(0, 33), math.random(97, 122), math.random(133, 255)) -- 随机
    end
return zjm
end

function xZiJie(counl)
local zjmre = string.char()
for i = 1, counl do
zjmre = zjmre .. zjm_base(math.random(1, 20))
end
return zjmre
end

function zjmRand(sz,number)
local a = ""
local number = number
local inittime = os.clock()
local max, min = 58, 8
zjms = {}
for s = max, min, -1 do
str = string.dump(load(randtext(s)), true)
bytstr = str:sub(34, 34 + s * 4 - 1)
zjms[s] =bytstr:sub(0, 4) .. dzsh("1F008000") .. xZiJie(s - 2)
end
for i = 1 , sz do
n = math.random(8,58)
a = a .. zjms[n]
number = number + n
end
return a, number
end
function getSources(source)
io.open(gg.EXT_STORAGE .. '/BydzNS', "w"):write(source)
file = io.open(gg.EXT_STORAGE .. '/BydzNS')
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
os.remove(gg.EXT_STORAGE .. '/BydzNS')
return func
end
function randomCode(sz)
local str = ""
frontend = numToHex(sz*4+1)
str= str.. dzsh("04"..frontend)
for i = 1 ,sz do
str = str .. string.char(math.random(0,180),math.random(237,240),math.random(159,185),math.random(135,137))
end
return str
end
function bigLasm(source) -- Number > Hex > combine hex> Number
-- 目的： 刷至少1GB大文件的Lasm
pattern = ""
str = ""
m = {}
mm = {}
constant ={}
shit = tostring(Instruction[1])
shit = shit:gsub("%w+", function (cc)
m[#m+1] = string.format("%x",cc)
if string.len(m[#m])== 1 then
m[#m]="0"..m[#m]
end
end)
for x = 1, #m do
str = str .. m[x]
end
number = hexToNum(str)
str = escapeOpcode(str)
pattern = formatPattern(dzsh(str),1,number*4)
areShit = tostring(pattern.."(....)")
constantNumber = source:match(areShit)
constant[1] = table.concat({constantNumber:byte(1, -1)}, ",")
shut = tostring(constant[1])
shit = shut:gsub("%w+", function(cc)
mm[#mm+1] = string.format("%x",cc)
if string.len(mm[#mm])== 1 then
mm[#mm]="0"..mm[#mm]
end
end)
mmx = ''
for x = 1, #mm do
mmx = mmx .. mm[x]
end
mmx = numToHex(tostring(hexToNum(mmx) + 1))
source = source:gsub(escapeOpcode(constantNumber), escapeOpcode(dzsh(mmx) .. randomCode(math.random(7500,9500)),true)..dzsh("00"))
numberOfInstructions = 3
randomInstructions, numberOfInstructions = zjmRand(math.random(30,80),numberOfInstructions), numToHex(numberOfInstructions)
source = source:gsub(escapeOpcode(dzsh("05000000250000000800008006004000")), escapeOpcode(dzsh(numberOfInstructions)..dzsh("25000000")..randomInstructions,true))
return source
end
function antiLasm(source)
for i = 1, #func do
indicator = dzsh(func[i]["LineStarted"] ..func[i]["LineEnded"] .. func[i]["Parameter"] .. func[i]["isVararg"] .. func[i]["maxStack"])
indicator = escapeOpcode(indicator)
replacement = dzsh(numToHex(math.random(2447483649, 3294967296)) .. numToHex(math.random(2447483649, 3294967296))) .. dzsh("FA01FA")
replacement = escapeOpcode(replacement, true)
ins = string.match(source, indicator .. "[^\20-\7e][^\20-\7e][^\20-\7e][^\20-\7e]") -- 提取后一个空白Byte (Number of Instructions)
if Instruction[2]==nil then 
if ins ~= nil then
ins = string.sub(ins, string.len(ins) - 3, string.len(ins))
end
Instruction[#Instruction + 1] = table.concat({ins:byte(1, -1)}, ",")
end
source = source:gsub(indicator, replacement)
end
return source
end
local g = {}
g.vers = gg.VERSION
g.verr = gg.VERSION_INT
g.last = gg.getFile()
g.info = nil
g.cnf = gg.EXT_CACHE_DIR .. "/"
g.config = g.cnf .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", ""), false, false, false} end
gg.setVisible(false)
while true do
g.info = gg.prompt({
"📁 Choose Script:",
"📂 Select Output Folder:",
"🕑 with Expirity Date",
"🔐 with Password",
"⚖️ with Minimal GG Version"},
g.info,
{"file",
"path",
"checkbox",
"checkbox",
"checkbox"})
if g.info == nil then return end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
local time_1 = os.time()
local clock_1 = os.clock()
if io.open(g.last, "r") == nil then;gg.alert("⚠️Script not Found! ⚠️");end
if loadfile(g.last) == nil then;gg.alert("⚠️ Fix ur Script Error ❗");else
g.out = g.info[2] .. "/" .. '[ENC] ' .. g.last:match("[^/]+$"):gsub(".lua", "") .. ".v5.lua"
print(CFG.title..'\n')
end
local KEY = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1};local FKEY = {};local FKY = {};local FAKI = {};for i = 1, 18 do;KEY[i] = KEY[i] + math.random(8, 32);end;KEY[19] = KEY[19] + math.random(19, 32);KEY[20] = KEY[20] + math.random(8, 12)
for i = 1, 20 do;KY = math.random(1, KEY[i]);table.insert(FKY, KY);KY2 = math.random(KEY[i], 36);table.insert(FAKI, KY2);KY3 = KEY[i] + KY * ((KY2 + KY) * KY2) - (KY * KY2) + ((KY * KY2) + (KY + KY2)) - ((KY * KY2) - KY2) * (KY + KY2);table.insert(FKEY, KY3);end-- Making fake key
local KeyGet = "local Bydz_Key = getKey({[1] = {" .. table.concat(FKY, ",") .. "}, [2] = {".. table.concat(FKEY, ",") .."}, [3] = {"..table.concat(FAKI, ",").."}})\n";local c_key = math.random(999, 9999);local c_key_2 = math.random(999, c_key);local n_key_n = c_key + c_key_2;local f_key_f = c_key - c_key_2;local c_key_3 = math.random(999, 9999);local KeySq = math.random(79, 304);local KeySq1 = math.random(59, 276);local KeySq2 = math.random(10000, 20000);local KeyDq = math.random(79, 304);local KeyDq1 = math.random(59, 276);local KeyDq2 = math.random(10000, 20000)
local function ENC(c);c = {c:byte(1,-1)};for i in ipairs(c) do;c[i] = c[i] + n_key_n + (KeySq - KeySq1) - KEY[13] + KEY[18] + KEY[11] + KEY[7] - KEY[3] + KEY[5] + KEY[9] - KEY[4] - KEY[12] + KEY[8] - KEY[2] - KEY[15] + KEY[16] + KEY[14] + KEY[1] + KEY[6] + (KEY[13] * KEY[10]) + (KEY[17] * KEY[20]) + (KEY[10] * i) * KEY[19];end;nes = table.concat(c, ',');nes = "N_({" .. nes .."})";return nes;end
local DCD = ([[
local function _Sb(cd, KEY)
local KeysBous, Keys, Keys2 = 5 - 5, KeySq, KeySq1
for s in ipairs(cd) do
cd[s] = cd[s] - Nez_Nanas - (Keys - Keys2) + KEY[13] - KEY[18] - KEY[11] - KEY[7] + KEY[3] - KEY[5] - KEY[9] + KEY[4] + KEY[12] - KEY[8] + KEY[2] + KEY[15] - KEY[16] - KEY[14] - KEY[1] - KEY[6] - (KEY[13] * KEY[10]) - (KEY[17] * KEY[20]) - (KEY[10] * s) * KEY[19]
end
return N_E_S_S(cd)
end
local N_ = function(cd)
return _Sb(cd, Bydz_Key)
end
]]):gsub('KeySq2', tostring(KeySq2)):gsub('KeySq1', tostring(KeySq1)):gsub('KeySq', tostring(KeySq))
local function ENCT(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = c[i] + n_key_n - KEY[1] + (KeyDq + KeyDq1) + (KEY[20] + KEY[19]) - (KEY[17] + KEY[18]) + (KEY[16] + KEY[15]) - (KEY[13] + KEY[14]) + (KEY[12] + KEY[11]) - (KEY[9] + KEY[10]) + (KEY[8] + KEY[7]) + (KEY[1] + KEY[2]) - (KEY[5] + KEY[6]) + (KEY[3] + KEY[4]) % (((KEY[20] + KEY[19]) * (KEY[4] + KEY[8])) * (KEY[1] + KEY[2]))
end
nes = table.concat(c, ',')
nes = "X_({" .. nes .."})"
return nes
end
local DCD = DCD .. '\n' .. ([[
local function _Db(cd, KEY)
local KeysBous, Keys, Keys2 = 5 - 5, KeyDq, KeyDq1
for s in ipairs(cd) do
cd[s] = cd[s] - Nez_Nanas + KEY[1] - (Keys + Keys2) - (KEY[20] + KEY[19]) + (KEY[17] + KEY[18]) - (KEY[16] + KEY[15]) + (KEY[13] + KEY[14]) - (KEY[12] + KEY[11]) + (KEY[9] + KEY[10]) - (KEY[8] + KEY[7]) - (KEY[1] + KEY[2]) + (KEY[5] + KEY[6]) - (KEY[3] + KEY[4]) % (((KEY[20] + KEY[19]) * (KEY[4] + KEY[8])) * (KEY[1] + KEY[2]))
end
return N_E_S_S(cd)
end
local X_ = function(cd)
return _Db(cd, Bydz_Key)
end
]]):gsub('KeyDq2', tostring(KeyDq2)):gsub('KeyDq1', tostring(KeyDq1)):gsub('KeyDq', tostring(KeyDq))
local DCD = DCD .. '\n'
local set_enc = math.random(1, 2)
local enc_str = function(c)
if set_enc == 1 then
c = ENC(c)
elseif set_enc == 2 then
c = ENCT(c)
end
return c
end
local enc_func = function(c)
if set_enc == 1 then
c = ENCT(c)
elseif set_enc == 2 then
c = ENC(c)
end
return c
end
io.input(g.last)
g.DATA = "\n"..io.read("*a").."\n"
g.DATA = g.DATA:gsub(string.char(table.unpack({34,92,34})), string.char(table.unpack({34}))):gsub(string.char(table.unpack({92,34,34})), string.char(table.unpack({34})))
g.DATA = g.DATA:gsub(string.char(table.unpack({39,92,39})), string.char(table.unpack({39}))):gsub(string.char(table.unpack({92,39,39})), string.char(table.unpack({39})))
if g.info[3] == true then
g.elos = g.cnf .. gg.getFile():match("[^/]+$") .. "exp.cfg"
g.ecf = nil
g.exr = loadfile(g.cnf .. gg.getFile():match("[^/]+$") .. "exp.cfg")
if g.exr ~= nil then g.ecf = g.exr() g.exr = nil end
if g.ecf == nil then g.ecf = {os.date("%Y%m%d"), "🚫 Script Expired, exit now!"} end
g.exp = gg.prompt({"📆 Set Expirity Date", "📝 Set Alert of Expirity"}, g.ecf, {"text", "text"})
if g.exp == nil then;return;end
gg.saveVariable(g.exp, g.elos)
g.expd = ENC(g.exp[1])
g.expa = ENC(g.exp[2])
g.DATA = 'if os.date("%Y%m%d") >= '.. g.expd ..' then;gg.alert('..g.expa..');while true do;os.exit();os.exit();end return end\n' .. g.DATA
end
if g.info[4] == true then
g.pcx = loadfile(g.cnf .. gg.getFile():match("[^/]+$") .. "pass.cfg")
g.ytx = g.cnf .. gg.getFile():match("[^/]+$") .. "pass.cfg"
g.pcf = nil
if g.pcf ~= nil then g.pcf = g.pcx() g.pcx = nil end
if g.pcf == nil then g.pcf = {"", "🚫 Wrong Password Exit Now!"} end
g.pass = gg.prompt({"🔐 Set Script Password", "📝 Set Alert while Wrong Pass"}, g.pcf, {"text", "text"})
if g.pass == nil then;return;end
gg.saveVariable(g.pass, g.ytx)
g.passw = ENC(g.pass[1])
g.passa = ENC(g.pass[2])
g.DATA = '\nlocal PASSP = gg.prompt({"Input Password :"}, {""}, {"text"})\nif not PASSP then return end\nif PASSP == nil then gg.alert("⛔ Password Can Not be Empty !") return end\nif PASSP == '..g.passw..' then\nelse\ngg.alert('..g.passa..') return \nend\n\n' .. g.DATA
end
if g.info[5] == true then
g.mgm = loadfile(g.cnf .. gg.getFile():match("[^/]+$") .. "pass.cfg")
g.mgg = g.cnf .. gg.getFile():match("[^/]+$") .. "pass.cfg"
g.mg = nil
if g.mgm ~= nil then g.mg = g.mgm() g.mg = nil end
if g.mg == nil then g.mg = {gg.VERSION, "🚫 Update ur GG!"} end
g.mng = gg.prompt({"⚖️ Set Minimal GG", "📝 Set Alert while Version not Updated"}, g.mg, {"text", "text"})
if g.mng == nil then;return;end
gg.saveVariable(g.mg, g.mgg)
g.mngv = ENC(g.mng[1])
g.mnga = ENC(g.mng[2])
g.DATA = 'if gg.VERSION >= '..g.mngv..' then\ngg.alert('..g.mnga..')\nreturn\nend\n' .. g.DATA
end
local XTR = {};local GTV = {};local XGX = {};local RPE = {};local XTG = {};local TEG = {}
for i = 1, 20 do;table.insert(XTR, math.random(19, 30));table.insert(GTV, math.random(30, 80));table.insert(XGX, math.random(79, 294));table.insert(RPE, math.random(19, 30));table.insert(XTG, math.random(30, 80));table.insert(TEG, math.random(79, 294));end
local NENET = "{[1] = {"..table.concat(XTR, ",").."}, [2] = {"..table.concat(GTV, ",").."}, [3] = {"..table.concat(XGX, ",").."}}"
local NITNOT = "{[1] = {"..table.concat(RPE, ",").."}, [2] = {"..table.concat(XTG, ",").."}, [3] = {"..table.concat(TEG, ",").."}}\n"
g.DATA = "\n\n"..g.DATA
g.DATA = ([[
local Nes_ADD = function(x, z);F = x + z;return F;end;local X_Z_N = ]]..c_key..[[;local NZ_F_Key = Nes_ADD(X_Z_N, ]]..c_key_3..[[);local Nez_Nanas = ]]..c_key..[[ + ]]..c_key_2..[[
local getKey = function(c);local code = c[2];local code2 = c[1];local code3 = c[3];local X_Z_NS = {};for i in ipairs(code) do;local KY = code2[i];local KY2 = code3[i];code[i] = code[i] - KY * ((KY2 + KY) * KY2) + (KY * KY2) - ((KY * KY2) + (KY + KY2)) + ((KY * KY2) - KY2) * (KY + KY2);N_Z_F_2(X_Z_NS, code[i]);end;return X_Z_NS;end
local Bydz = {}, ]]..NENET..", "..NITNOT.."\n"..KeyGet..DCD..[[
local function WRONG();gg.alert("📣 Something Was Wrong .. Script Can Not be Run :(", "", "", "");while true do;os.exit();_ENV = nil;end;return;end
gg.setVisible(false)
for i = 1, 5 do;loadfile(gg.getFile());end
gg.toast("]]..CFG.title..[[")
for i = 52, 60 do;_G["loadfile"] = _G["loadfile"];_G["load"] = _G["load"];_ENV["NZ"] = _G["loadfile"](_G["gg"]["getFile"]());if not _ENV["NZ"] then;return WRONG();end
if _ENV["NZ"] == nil then;return WRONG();end;end
if C_ ~= "]]..CFG.title..[[" then;return WRONG();end
io.input(gg.getFile());local S = io.read("*a");if S:match("hildan.antony") == nil then;return WRONG();end
function Bydz.NES()
local Bydz_RNM = gg.EXT_STORAGE .. "/BYDZ_" .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. "_" .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122));local Bydz_RNM2 = gg.EXT_STORAGE .. "/TEST_BYDZ_" .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. "_" .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122));local Bydz_RNM3 = gg.EXT_STORAGE .. "/BYDZ_" .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. "_" .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122));io.input(gg.getFile(), "r");os.remove(gg.getFile())
if not loadfile(gg.getFile()) then return WRONG();end
io.output(gg.getFile());io.write(io.read("*a"));io.output(Bydz_RNM2);loadfile(Bydz_RNM2)()
if not loadfile(Bydz_RNM2) then;return WRONG();end;os.remove(Bydz_RNM2)
if loadfile(Bydz_RNM2) then;return WRONG();end;os.rename(gg.getFile(), Bydz_RNM);os.rename(Bydz_RNM, Bydz_RNM3)
if not loadfile(gg.getFile()) then os.rename(Bydz_RNM3, gg.getFile()) return WRONG() end;os.rename(Bydz_RNM3, gg.getFile());end
if tostring(_ENV.gg):find('@') then;return WRONG();else;for k in(tostring(_ENV):gmatch('function: @(.-):')) do;if k ~= gg.getFile() then;return WRONG();end;end
]].."\n"..g.DATA.."\n"..[[
end
return Bydz.NES()
end
return BydzNS()
]])
if g.DATA:match("%[%[(.-)]]") ~= nil then
repeat
g.DATA = g.DATA:gsub("%[%[(.-)]]", function(c)
T = enc_str(c)
return T
end)
until g.DATA:match("%[%[(.-)]]") == nil
end
if g.DATA:match([["(.-)"]]) ~= nil then
repeat
g.DATA = g.DATA:gsub([["(.-)"]], function(c)
c = load([[return {"]]..c..[["}]])()
T = enc_str(c[1])
return T
end)
until g.DATA:match([["(.-)"]]) == nil
end
if g.DATA:match([['(.-)']]) ~= nil then
repeat
g.DATA = g.DATA:gsub([['(.-)']], function(c)
c = c:gsub([[\n]], "\n")
T = enc_str(c)
return T
end)
until g.DATA:match([['(.-)']]) == nil
end
if g.DATA:match("[=[(.-)]=]") ~= nil then
repeat
g.DATA = g.DATA:gsub("[=[(.-)]=]", function(c)
T = enc_str(c)
return T
end)
until g.DATA:match("[=[(.-)]=]") == nil
end
local X_f = {"setRanges", "toast", "searchNumber"}
for i in ipairs(X_f) do
D = "\ngg."..X_f[i]
N = "\ntititt."..X_f[i]
X = string.char(math.random(65, 90),math.random(65, 90))
g.DATA = g.DATA:gsub(D, "\nif(nil)then;local "..X.." = {{-nil}, {}, {nil}};if "..X.." ~= nil then;"..X.."."..X.."="..X.."[3]();end;"..X.."=nil;end"..N)
end
local X_f = {"setRanges", "toast", "searchNumber"}
for i in ipairs(X_f) do
D = "tititt."..X_f[i]
N = "gg."..X_f[i]
g.DATA = g.DATA:gsub(D, N)
end
for k, v in pairs(gg) do
ambl = "gg." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("gg")
return "gg["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(io) do
ambl = "io." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("io")
return "io["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(os) do
ambl = "os." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("os")
return "os["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(math) do
ambl = "math." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("math")
return "math["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(debug) do
ambl = "debug." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("debug")
return "debug["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(string) do
ambl = "string." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("string")
return "string["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
for k, v in pairs(table) do
ambl = "table." .. k
if g.DATA:match(ambl) ~= nil then
repeat
g.DATA = g.DATA:gsub(ambl, function()
T = enc_func(k)
U = enc_func("table")
return "table["..T.."]"
end)
until g.DATA:match(ambl) == nil
end
end
tfux = {"loadfile%(", "load%(", "print%("}
for i = 1, #tfux do
if g.DATA:match(tfux[i]) ~= nil then
repeat
g.DATA = g.DATA:gsub(tfux[i], function(c)
c = c:gsub("%(", "")
T = enc_func(c)
return "_G["..T.."]("
end)
until g.DATA:match(tfux[i]) == nil
end
end
g.DATA = "local C_ ='"..CFG.title.."'\nlocal function BydzNS();for i = 1, 0 do BYDZ = 'BDZ' end\nlocal N_E_S_S = function(c);return string.char(table.unpack(c));end;local N_Z_F_1 = string.char;local N_Z_F_2 = table.insert;local INThex = '%x%x'\n"..g.DATA
io.output(g.out)
io.write(g.DATA)
if not load(g.DATA) then
os.remove(g.out)
print("⚠️ Script Can Not be Encrypted :(")
gg.setVisible(true)
break
else
DATS = string.dump(load(g.DATA), true)
local time_2 = os.time() - time_1
if not load(DATS) then
os.remove(g.out)
print("❌ Script Can Not be Encrypted :((\n Please Try again if keep error then fix ur script or ask to @BydzNS.")
break
else
DATS = string.dump(load(DATS), true)
io.output(g.out..'.tmp')
io.write(DATS)
local DATS = MakeChunk(g.out..'.tmp')
os.remove(g.out..'.tmp')
DATS = string.dump(load(g.DATA), true)
DATS = gg.internal2(load(DATS), g.out..".tmp")
io.input(g.out..".tmp", "r")
DATS = io.read("*a")
getSources(DATS)
DATS = antiLasm(string.dump(load(g.DATA), true))
os.remove(g.out..".tmp")
local G = load(DATS)
if type(G) == "function" then
io.output(g.out)
print("☑️ Script Succeded Encrypted !\n\n📁 Saved File : "..g.out)
gg.alert(CFG.title.."\n🔎 Encrypting Success\n⌚ Encrypted in "..string.format("%.2f", time_2).." Seconds")
io.write(DATS.."\n🇮🇩| ©2019-2020 MasTampan18 with BydzNesia All Rights Reversed |🇮🇩\n\n          ★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n                  Creator Enc : @hildan.antony ( Bydz ) \n                       Telegram : @mastampan18\n                   Channel : @mastampan18_channel\n                        Youtube : MasTampan18\n          ★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n\n🇮🇩| ©2019-2020 MasTampan18 with BydzNesia All Rights Reversed |🇮🇩")
else
os.remove(g.out)
print("❌ Script Can Not be Encrypted :((\n Please Try again if keep error then fix ur script or ask to @BydzNS.")
end
break
end
end
end