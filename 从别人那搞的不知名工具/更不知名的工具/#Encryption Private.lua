local g = {} 
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
'📂 Select script file :',
'📥 Select output path :',
},g.info,{
"file",
"path",
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
g.findn = g.out:match(".lua")
if g.findn == nil then 
g.out = g.out.."._enc.lua"
else
g.out = g.out:gsub("%.lua$","._enc.lua")
end
g.out = g.info[2] .. "/" .. g.out


--read from file
local DATA = io.input(g.info[1]):read("*a")

local str=string.char
Q = math.random(1,9999)
W = math.random(1,9999)
E = math.random(1,9999)
R = math.random(1,9999)
T = math.random(1,9999)
Y = math.random(1,9999)
U = math.random(1,9999)
I = math.random(1,9999)
O = math.random(1,9999)
P = math.random(1,9999)
A = math.random(1,9999)
S = math.random(1,9999)
D = math.random(1,9999)
F = math.random(1,9999)
G = math.random(1,9999)
H = math.random(1,9999)
J = math.random(1,9999)
K = math.random(1,9999)
L = math.random(1,9999)
Z = math.random(1,9999)
X = math.random(1,9999)
C = math.random(1,9999)
V = math.random(1,9999)
B = math.random(1,9999)
N = math.random(1,9999)
M = math.random(1,9999)
local KEEY1 = (Q+W+E+R+T+Y+U+I+O*P)
local KEEY2 = (KEEY1+A+S+D+F+G+H+J+K*L)
local KEEY3 = (KEEY1+KEEY2+Z+X+C+V+B+N*M)
local KEEY4 = (KEEY1+KEEY2+KEEY3)
local KEEY5 = (KEEY1+KEEY2+KEEY3+KEEY4+Q+W+E+R+T+Y+U+I+O+P+A+S+D+F+G+H+J+K+L+Z+X+C+V+B+N*M)

local KEY1 = {59329,593828,59328,594928,593922}
local KEY2 = {4931717,5932817,573820,593184}
local KEY3 = {232432,6447532,987675,58327}
local KEY4 = {957327,5832626,574737,9993282}
local KEY5 = {293843727,5937227,6742829,59472}
local KEY6 = {957327,5832626,574737,9993282}
local KAY1=5916143
local KAY2=44947676
local KAY3=79413134
local KAY4=79431437
local KAY5=895614346
local KAY6=89113467
local KY1=KEY1[1]+KEY1[3]+KEY1[2]+KEY1[5]*KEY1[4]
local KY2=KEY2[4]+KY1+KEY2[1]+KEY2[3]*KEY2[2]
local KY3=KEY3[4]+KEY3[1]+KEY3[2]+KEY3[3]+KY1*KY2
local KY4=KEY4[4]+KEY4[3]+KEY4[2]+KEY4[1]+KY1+KY2*KY3
local KY5=KEY5[4]+KEY5[3]+KEY5[2]+KEY5[1]+KY1+KY2*KY3
local KY6=KEY6[4]+KEY6[3]+KEY6[2]+KEY6[1]+KY1+KY2*KY3
local KY7=KAY1+KAY2+KAY3+KAY4+KAY5+KAY6
local KY8=KY1+KY2+KY3+KY4+KY5+KY6*KY7

local Key53 = KY6;local Key14 = KY7;local inv256
function Enc(data)
data=data:gsub("\\n","\n"):gsub("\\t","\t")
if not inv256 then
inv256 = {}
for M = 0, 127 do
local inv = -1
repeat inv = inv + 2
until inv * (2*M + 1) % 256 == 1
inv256[M] = inv
end
end
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, KY7 + Key14 return (data:gsub('.', function(m)local L = K % KY8;local H = (K - L) / KY8;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c):gsub("1",str(0xD1)):gsub("2",str(0xD2)):gsub("3",str(0xF1)):gsub("4",str(0xF2)):gsub("5",str(0xB1)):gsub("6",str(0xB2)):gsub("7",str(0xA1)):gsub("8",str(0xA2)):gsub("9",str(0xE1)):gsub("0",str(0xE2)) end))end
function enctest(c) 
return 'gg[Dec("' .. Enc(c) .. '")]('
end
function enctest2(c)
 return 'Dec("' .. Enc(c) .. '")'
 end
function enctest3(c) 
return 'io[Dec("' .. Enc(c) .. '")]('
end
function enctest4(c) 
return 'os[Dec("' .. Enc(c) .. '")]('
end
function enctest5(c) 
return 'string[Dec("' .. Enc(c) .. '")]('
end
function enctest6(c) 
return 'table[Dec("' .. Enc(c) .. '")]('
end
function enctest7(c) 
return 'math[Dec("' .. Enc(c) .. '")]('
end
function enctest8(c) 
return 'debug[Dec("' .. Enc(c) .. '")]('
end

DATA = DATA:gsub("gg%.(%a+)%(", enctest)
DATA = DATA:gsub('%".-(.-)%"', enctest2)
DATA = DATA:gsub("io%.(%a+)%(", enctest3)
DATA = DATA:gsub("os%.(%a+)%(", enctest4)
DATA = DATA:gsub("string%.(%a+)%(", enctest5)
DATA = DATA:gsub("table%.(%a+)%(", enctest6)
DATA = DATA:gsub("math%.(%a+)%(", enctest7)
DATA = DATA:gsub("debug%.(%a+)%(", enctest8)

local function Enc3(s)     
    s = string.gsub(s, "([^%w%.%- ])", function(c) 
    return string.format("%%%02X", string.byte(c)) end)    
    return string.gsub(s, " ", "+")
end  
---------------------256--------------------
function enc3gg(c) 
return 'gg[MafiaPJ3(\n"' .. Enc3(c) .. '")]('
end
function enc3val(c)
 return 'MafiaPJ3("' .. Enc3(c) .. '")'
 end
 

DATA = DATA:gsub("gg%.(%a+)%(", enc3gg)
DATA = DATA:gsub('%".-(.-)%"', enc3val)
DATA = DATA:gsub("%'.-(.-)%'", enc3val)
DATA = DATA:gsub('%"(.-)%"', enc3val)


DATA =[[
(function(...)
local Q = ]]..Q..[[;
local W = ]]..W..[[;
local E = ]]..E..[[;
local R = ]]..R..[[;
local T = ]]..T..[[;
local Y = ]]..Y..[[;
local U = ]]..U..[[;
local I = ]]..I..[[;
local O = ]]..O..[[;
local P = ]]..P..[[;
local A = ]]..A..[[;
local S = ]]..S..[[;
local D = ]]..D..[[;
local F = ]]..F..[[;
local G = ]]..G..[[;
local H = ]]..H..[[;
local J = ]]..J..[[;
local K = ]]..K..[[;
local L = ]]..L..[[;
local Z = ]]..Z..[[;
local X = ]]..X..[[;
local C = ]]..C..[[;
local V = ]]..V..[[;
local B = ]]..B..[[;
local N = ]]..N..[[;
local M = ]]..M..[[;
local KEEY1 = (Q+W+E+R+T+Y+U+I+O*P);
local KEEY2 = (KEEY1+A+S+D+F+G+H+J+K*L);
local KEEY3 = (KEEY1+KEEY2+Z+X+C+V+B+N*M);
local KEEY4 = (KEEY1+KEEY2+KEEY3);
local KEEY5 = (KEEY1+KEEY2+KEEY3+KEEY4+Q+W+E+R+T+Y+U+I+O+P+A+S+D+F+G+H+J+K+L+Z+X+C+V+B+N*M);

local KEY1 = {59329,593828,59328,594928,593922};
local KEY2 = {4931717,5932817,573820,593184}
;local KEY3 = {232432,6447532,987675,58327}
;local KEY4 = {957327,5832626,574737,9993282}
;local KEY5 = {293843727,5937227,6742829,59472}
;local KEY6 = {957327,5832626,574737,9993282}
;local KAY1=5916143
;local KAY2=44947676
;local KAY3=79413134
;local KAY4=79431437
;;local KAY5=895614346
;;local KAY6=89113467
;;;;;local KY1=KEY1[1]+KEY1[3]+KEY1[2]+KEY1[5]*KEY1[4]
;;local KY2=KEY2[4]+KY1+KEY2[1]+KEY2[3]*KEY2[2]
;;;;local KY3=KEY3[4]+KEY3[1]+KEY3[2]+KEY3[3]+KY1*KY2
;;;local KY4=KEY4[4]+KEY4[3]+KEY4[2]+KEY4[1]+KY1+KY2*KY3
;;;local KY5=KEY5[4]+KEY5[3]+KEY5[2]+KEY5[1]+KY1+KY2*KY3
;;;local KY6=KEY6[4]+KEY6[3]+KEY6[2]+KEY6[1]+KY1+KY2*KY3
;;;local KY7=KAY1+KAY2+KAY3+KAY4+KAY5+KAY6
;;;local KY8=KY1+KY2+KY3+KY4+KY5+KY6*KY7
;;local Key53 = KY6;
;;;local Key14 = KY7;
;;local inv256
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
local Decode = function(DATA)
local K, F = Key53, KY7 + Key14 return (DATA:gsub('%x%x', function(c) local L = K % KY8 local H = (K - L) / KY8 local M = H % 128 c = _ENV["tonumber"](c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return _ENV["string"]["char"](m)end))end

;;
 
local function Dec(c);
c=c:gsub(string.char(0xD1),"1"):gsub(string.char(0xD2),"2"):gsub(string.char(0xF1),"3"):gsub(string.char(0xF2),"4"):gsub(string.char(0xB1),"5"):gsub(string.char(0xB2),"6"):gsub(string.char(0xA1),"7"):gsub(string.char(0xA2),"8"):gsub(string.char(0xE1),"9"):gsub(string.char(0xE2),"0")
return Decode(c)
end
local function MafiaPJ3(s)    
    s = string.gsub(s, '%%(%x%x)', function(h) 
    return string.char(tonumber(h, 16)) end)    
    return s
end

local i = {}
local g = {}
local ppi, ppb
g["last"] = _ENV["gg"]["getFile"]()
g["data"] = _ENV["loadfile"](g["last"])
g["cpp"] = g["data"]
if g["cpp"] ~= nil then 
g["data"] = nil
local ppb = g["last"]:match("[^/]+$")
local ppi = "lohhhggg"
local pu = _ENV["gg"]["getResults"](5000)
_ENV["os"]["rename"](''..g["last"]..'', ''..g["last"]:gsub('/[^/]+$', '')..'/'..ppi..'') 
local prt = _ENV["loadfile"](''..g["last"]:gsub('/[^/]+$', '')..'/'..ppi..'')
if prt ~= nil then
  _ENV["os"]["rename"](''..g["last"]:gsub('/[^/]+$', '')..'/'..ppi..'', ''..g["last"]:gsub('/[^/]+$', '')..'/'..ppb..'')
return
_ENV["Detected"]()
end
end

while tostring(os):find("@") do
	gg.alert("下次别勾了，好吗？？","")
	Fuck()
end

while debug.getinfo(gg.alert)['source']~="=[Java]" do
   Fuck()
end
while debug.getinfo(string.len)['func']~=string.len do
   Fuck()
end
while debug.getinfo(io.open)['currentline']~=-1 do
   Fuck()
end

Bitch = string.rep("a", 2) 
if Bitch == "aa" then else
   gg.alert("检测到调试 rep 修改")
     Fuck()
end
Tgian1 = os.clock()
Check1 = string.rep("a",2)
--Spam Log
local C=string.rep(" ",1048576)
Check={}
for i= 1, 1024 do 
   Check[i]=C 
end 
for A, B in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})
   do a = pcall(B,Check)
end
Q = 0
--end spam
--anti hook
for i in ipairs({tostring(gg),tostring(os),tostring(io),tostring(debug),tostring(math),tostring(table)}) do
    if string.match(({tostring(gg),tostring(os),tostring(io),tostring(debug),tostring(math),tostring(table)})[i], "@") then
      gg.alert("Fuck you", "")
      gg.alert("Error code 0x9000002","") -- hook
        while true do
           return gg.searchNumber(C)        
        end
    end
end
--end anti hook
--anti GG mod
if Check1 == "aa" then else
     gg.alert("Error code 0x9000004","") -- Block GG bypass big log
     while true do
         gg.searchNumber(C)        
         return
     end
end
--end anti GG mod
Tgian2 = os.clock()
--log detector
Tgian = Tgian2 - Tgian1
if Tgian > 5 then
    gg.alert("Error code 0x9000001","") -- log detect
    while true do
        gg.searchNumber(C)        
        return
    end
end

for i in _ENV["ipairs"]({_ENV["tostring"](_ENV["gg"]),_ENV["tostring"](_ENV["os"]),_ENV["tostring"](_ENV["io"]),_ENV["tostring"](_ENV["debug"]),_ENV["tostring"](_ENV["math"]),_ENV["tostring"](_ENV["table"])}) do
if _ENV["string"]["match"](({_ENV["tostring"](_ENV["gg"]),_ENV["tostring"](_ENV["os"]),_ENV["tostring"](_ENV["io"]),_ENV["tostring"](_ENV["debug"]),_ENV["tostring"](_ENV["math"]),_ENV["tostring"](_ENV["table"])})[i], ("@")) then
while true do
_ENV["gg"]["alert"]("(🤡) ᴘʀᴏᴛᴇᴄᴛɪᴏɴ", (""))
return
_ENV["Detected"]()
end
end
end
if _ENV["string"]["rep"]("a", 2) ~= "aa" then
while true do
_ENV["gg"]["alert"]("(🤡) ᴘʀᴏᴛᴇᴄᴛɪᴏɴ", (""))
return
_ENV["Detected"]()
end
end
if ("a"):rep(2) ~= "aa" then
while true do
_ENV["gg"]["alert"]("(🤡) ᴘʀᴏᴛᴇᴄᴛɪᴏɴ", (""))
return
_ENV["Detected"]()
end
end
]]..DATA..[[
end)(...)
]]
DATA = " (function(...)" .. DATA .." end )([=[ \n\n	ᴇɴᴄʀʏᴘᴛɪᴏɴ	ʙʏ	ᴘᴊ	ᴍᴀꜰɪᴀ	[☔] \n          ᴛʜᴀɴᴋs	ᴛᴏ	ᴋʀᴀᴋᴇɴ	[🍁]\n\n]=])" 
local proccess, rand, max, _sc, _tu = { }, math.random, math.maxinteger, string.char, table.unpack;
temporary="/sdcard/tmp.lasm"
proccess[1] = function(str)
 local stacksize = { };
 local i = 0;
 for k, v in next, {"(%.maxstacksize%s)(%d+)\n", "(%.upval.-nil.-u)(%d+)\n"}, nil do
  str = str:gsub(v, function(x, y)
   stacksize[k] = y
   y = y + 2 - k
   if k > 1 then
    x = x:gsub("nil", string.format("\"\\x%02x\"", rand(128, 255)))
   end
   return x .. y .. "\n"
  end)
 end
 str = str:gsub("\n\t+%u+.-\n", function(x)
  local s = x:match("%b\"\"");
  if s and x:match("%u+") ~= "LOADK" then
   local n1 = string.sub(max, 1, 9) + i;
   local n2 = n1 + 1;
   local op = { };
   op[ 1] = "LOADK v" .. stacksize[1] .. " " .. s
   op[ 2] = "TEST v" .. stacksize[1] .. " 1"
   op[ 3] = "JMP :goto_" .. n1 .. "  ; +1 ↓"
   op[ 4] = "LOADK v" .. stacksize[1] + 1 .. " \"__xlet\""
   op[ 5] = "LOADK v" .. stacksize[1] + 2 .. " \"xlet__\""
   op[ 6] = "SETTABUP u" .. stacksize[2] + 1 .. " v" .. stacksize[1] + 1 .. " v" .. stacksize[1] + 2
   op[ 7] = "LOADK v" .. stacksize[1] + 1 .. " \"__xlet\""
   op[ 8] = "GETTABUP v" .. stacksize[1] + 2 .. " u" .. stacksize[2] + 1 .. " v" .. stacksize[1] + 1
   op[ 9] = "RETURN v" .. stacksize[1] + 2 .. "..v" .. stacksize[1] + 2
   op[10] = "JMP :goto_" .. n2 .. "  ; +1 ↓"
   op[11] = ":goto_" .. n1
   op[12] = "TEST v" .. stacksize[1] .. " 0"
   op[13] = "JMP :goto_" .. n2 .. "  ; +1 ↓"
   op[14] = "" .. x:gsub(s, "v" .. stacksize[1])
   op[15] = ":goto_" .. n2
   x = "\n" .. table.concat(op, "\n") 
   i = i + 1000
  end
  return x
 end)
 return str
end

proccess[2] = function(str)
 local n = string.sub(max, 1, 9);
  str = str:gsub("\n\t+%u+", function(x)
  if x:match("%u+") ~= "JMP" then
   x = "\n:goto_"
    .. n + 0
    .. "\nJMP :goto_"
    .. n + 1
    ..  "  ; +0 ↓\n\n:goto_"
    .. n + 1
    .. x
   n = n + 2
  end
  return x
 end)
 return str
end

proccess[3] = function(str)
 local tbl = { };
 for k, v in next, {"\n\t+:goto_%d+\n.-\n\t+JMP :goto_%d+  ; %+0 ↓.-\n", "(\n\t+:goto_%d+\n.-)(\n.-)$"}, nil do
  str = str:gsub(v, function(x, y)
   tbl[x] = rand(max)
   return y or "\n"
  end)
 end
 str = str:gsub("\n\t+JMP :goto_1  ; %+0 ↓.-\n", function(x)
  local w = "";
  local n1, n2 = rand(1, 127), rand(128, 256);
  for k, v in pairs(tbl, function(t, a, b) 
    return t[b] < t[a]
   end) do
   w = w .. k .. "\n"
  end
  return "\n" .. string.rep("LT 0 " .. n1 .. " " .. n2 .. "\n\n", 3) .. string.rep(x, 2) .. w
 end)
 return str
end

function obfuscate(code, x) --Obfuscating assembly code instructions
 x = x or "";
 code = x .. ";(function(...)\n" .. code .. "\nend)()"
 local dmpbool = true;
 for i = 1, #proccess do
  gg.internal2(load(string.dump(load(code) or error_(), dmpbool)), temporary)
  local a, b = { }, { };
  lines = { }
  for line in io.lines(temporary) do
   if line:match("^%s*%.func") or line:match("^%s*%.end") then
    b[#b + 1] = #lines
    if #b == 2 then
     if b[2] > b[1] + 2 then
      a[#a + 1] = b
     end
     b = {b[2]}
    end
   end
   lines[#lines + 1] = line
  end
  code = table.concat(lines, "\n"), os.remove(temporary)
  for k, v in pairs(a) do
   local pattern = "";
   for i = v[1], v[2] do
    pattern = pattern .. lines[i]:gsub("%p", function(c)
     return "%" .. c
    end) .. "\n"
   end
   code = code:gsub(pattern, proccess[i])
  end
  dmpbool = false
 end
 return code
end

DATA=obfuscate(DATA)
kilka=string.char(rand(128,255))
DATA=DATA:gsub("__xlet",kilka):gsub("xlet__",kilka)
DATA=string.dump(load(DATA), true)
local function Dumping(code)
local Temp =  '/sdcard/tmp.lasm'
gg.internal2(load(DATA), Temp)
strings = {}
for u in io.lines(Temp) do
strings[#strings+1] = u:gsub(' ','')
end
for u in ipairs(strings) do
if strings[u]:match('%.func F%d+') then
stop = strings[u]:match('F%d+')
u = u + 7
sva = 0
svo = 0
slaf = 0
i = u
ksy = 0
repeat
i = i +1
if strings[i]:match('%.upval') and strings[i+1] == '' then
sva = i + 2
strings[i] = strings[i] .. '\nJMP :goto_47363749245532345  ; +999 ↓'
strings[i+3] = ':goto_47363749245532345\n' .. strings[i+2]
strings[i+2] = ''
ksy = i+2
end
until strings[i]:sub(1,4) == '.end' or strings[i]:match('%.func F%d+')
slaf = i
sh = sva + 2198
shh = sva + 2198
asu = sh + 2198
bajing = shh + 2198
GH = {099 + 2198,66+2198,383+2198}
Miness = {}
Minuss = {}
savarnu={}
for o = u, slaf do
if strings[o]:match('%.end ; F%d+') or strings[o]:match('%.func F%d+') then i = o  do break end end
if strings[o]:sub(1,4) == 'CALL' or strings[o]:sub(1,8) == 'GETTABUP' or strings[o]:sub(1,8) == 'GETTABLE' or strings[o]:sub(1,5) == 'LOADK' or strings[o]:sub(1,3) == 'DIV' or strings[o]:sub(1,3) == 'MUL' or strings[o]:sub(1,3) == 'ADD' or strings[o]:sub(1,8) == 'SETTABLE' or strings[o]:sub(1,7) == 'SETLIST' or strings[o]:sub(1,8) == 'NEWTABLE' or strings[o]:sub(1,3) == 'MOD' or strings[o]:sub(1,8) == 'TAILCALL' or strings[o]:sub(1,3) == 'LEN' or strings[o]:sub(1,8) == 'GETUPVAL' or strings[o]:sub(1,8) == 'SETUPVAL' or strings[o]:sub(1,6) == 'VARARG' or strings[o]:sub(1,4) == 'MOVE' or strings[o]:sub(1,8) == 'NEWTABLE' or strings[o]:sub(1,8) == 'SELF' or strings[o]:sub(1,8) == 'EQ' or strings[o]:sub(1,8) == 'RETURN' or strings[o]:sub(1,8) == 'LOADNIL' or strings[o]:sub(1,8) == 'CLOSURE' or strings[o]:sub(1,8) == 'LOADBOOL' or strings[o]:sub(1,8) == 'TEST' or strings[o]:sub(1,8) == 'SUB' then
repeat asu = asu + math.random(1,999999) until savarnu[asu] == nil
repeat bajing = bajing + math.random(1,999999) until savarnu[bajing] == nil
repeat sh = sh + math.random(1,999999) until savarnu[sh] == nil
repeat shh = shh + math.random(1,999999) until savarnu[shh] == nil
PUKI = math.random(1,3)
repeat GH[1] = GH[1] + math.random(0,999999999999) until Miness[GH[1]] == nil
repeat GH[2] = GH[2] + math.random(0,999999999999) until Miness[GH[2]] == nil
repeat GH[3] = GH[3] + math.random(0,999999999999) until Miness[GH[3]] == nil
if PUKI == 1 then
Miness[GH[1]] = ':goto_' .. asu .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
elseif PUKI == 2 then
Miness[GH[1]] = ':goto_' .. asu .. '\nJMP :goto_'..sh..'  ; +1 ↓'
Miness[GH[2]] = ':goto_' .. sh .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
elseif PUKI == 3 then
Miness[GH[1]] = ':goto_' .. asu .. '\nJMP :goto_'..shh..'  ; +1 ↓'
Miness[GH[2]] = ':goto_' .. sh .. '\n' .. strings[o] .. '\nJMP :goto_'..bajing..'  ; +1 ↓'
Miness[GH[3]] = ':goto_' .. shh .. '\nJMP :goto_'..sh..'  ; +1 ↓'
end
strings[o] = '\nJMP :goto_'..asu..'  ; +1 ↓\n:goto_' .. bajing
savarnu[asu] = 1
savarnu[bajing] = 1
savarnu[sh] = 1
savarnu[shh] = 1
end
end
levis = {}
for s,ss in pairs(Miness) do
levis[#levis+1] = ss
end
strings[sva] = table.concat(levis, '\n')

end
end
DATA = table.concat(strings,'\n')
repeat
DATA = DATA:gsub('\n\n\n','\n\n')
until DATA:match('\n\n\n') == nil
if not load(DATA) then
gg.alert("🍁 Ｔｒｙ ａｇａｉｎ")
os.remove(gg.EXT_CACHE_DIR .. '/tmp.lasm')
os.exit()
end
function Pedik(c)
AB=math.random(1,50)
AC=math.random(1,500)
AD=math.random(1,500)
ABB=math.random(1,50)
ACC=math.random(1,500)
ADD=math.random(1,500)
ABBB=math.random(1,50)
ACCC=math.random(1,500)
ADDD=math.random(1,500)
QQ=math.random(1,999999999)
WW=math.random(1,999999999)
EE=math.random(1,999999999)
RR=math.random(1,999999999)
TT=math.random(1,999999999)
YY=math.random(1,999999999)
ER=[[

JMP :goto_]]..QQ..[[  ; +]]..AD..[[ ↓

LOADK v1 "  LeL "

LT ]]..AB..[[ ]]..AC..[[ ]]..AD..[[

:goto_]]..QQ..[[

LOADK v2 " LeL "

JMP :goto_]]..WW..[[  ; +]]..AC..[[ ↓

EQ ]]..ABB..[[ ]]..ACC..[[ ]]..ADD..[[

LOADK v3 "  LeL "

:goto_]]..WW..[[

]]
return ER
end

DATA=Dumping(code)
DATA = string.dump(load(DATA),true)
DATA=string.gsub(DATA, "\t","")
DATA=string.gsub(DATA, "RETURN  ;[^\n]*unused",Pedik(c).."RETURN")
DATA=string.gsub(DATA, "RETURN  ;[^\n]*unused",Pedik(c).."RETURN")
DATA=string.gsub(DATA, "source [^\n]*",'source "\n\n\n       LeL\n\n"')
for i = 1,7 do
randnum=math.random(1,250)
DATA= DATA:gsub(".maxstacksize[^\n]*\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub("%.maxstacksize[^\n]*\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub(".maxstacksize[^\n]*\n\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub("%.maxstacksize[^\n]*\n\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
end
lines = string.dump(load(DATA))
gg.sleep(250)
gg.sleep(250)
return lines
end
DATA=string.dump(load(DATA), true)
io.open(g.out,"w"):write(DATA):close()
gg.setVisible(true)
return
end
end