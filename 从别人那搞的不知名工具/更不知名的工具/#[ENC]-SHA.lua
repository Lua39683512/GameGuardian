--Give Me Credits :) @Exa_Ls
--Share To All Channel
--Join for get New or more @LuaOfficial

F = gg.prompt(
{'file',},
{'/storage/emulated/0/Download/#Tes/#Dec/#Tolol.lua'},
{'file'})
if F == nil then return end
local DATA = io.input(F[1]):read("*a")

local GTBL = {}
AB = math.random(0x20,0x50)
AC = math.random(150,300)
AD = math.random(150,300)
AE = math.random(150,300)
AF = math.random(150,300)
AG = math.random(150,300)
Arp = math.random(150,300)
local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD}
local keyy = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12}
local KY3 = {key[4]*key[3]+Arp-keyy[1]+keyy[2]}
local KY1 = {(key[1]+keyy[3]+key[4]*key[2])-keyy[4]*19-keyy[5]}
local KY2 = {(keyy[5]+key[4]*7)-keyy[2]+keyy[3]} local inv256
function ESHA(str)if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1[1] - AG * KY3[1], AB + AG - KY2[1] return (str:gsub('.', function(m)local L = AB + KY2[1] * KY1[1] - 1101010 % KY3[1] local PX = Arp + (keyy[1] * 3) - 110029 local H = (K * PX + L - KY2[1]) / KY3[1];local M = H % 27;local m = m:byte()local c = (m * inv256[M] - (H + M) / 27) % 256 K = L * F + F + Arp * F - m return ('%02x'):format(c)end)) end
memex = 0
for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = ESHA(c)
table.insert(GTBL, '"'..T..'"')
memex = memex + 1
return "Mr.FF(EXSAM["..memex.."])" end)
gg.toast("⏳ 10% Please Wait..")
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ivan = "gg."..k
DATA = DATA:gsub(ivan, function()
T = ESHA(k)
return 'gg[Mr.FF("'..T..'")]'
end)
gg.toast("⏳ 45% Please Wait..")
until DATA:match(ivan) == nil
end
for k, v in pairs(os) do
repeat
ivan = "os."..k
DATA = DATA:gsub(ivan, function()
T = ESHA(k)
return 'os[Mr.FF("'..T..'")]'
end)
gg.toast("⏳ 50% Please Wait..")
until DATA:match(ivan) == nil
end
for k, v in pairs(io) do
repeat
ivan = "io."..k
DATA = DATA:gsub(ivan, function()
T = ESHA(k)
return 'io[Mr.FF("'..T..'")]'
end)
gg.toast("⏳ 45% Please Wait..")
until DATA:match(ivan) == nil
end

local DATI=[[
local Mr = {};local FF = {};if(nil)then;(function()end)();end;
;if(nil)then;(function()end)();end;local AB = ]]..AB..[[;if(nil)then;(function()end)();end;local AC = ]]..AC..[[;if(nil)then;(function()end)();end;if(nil)then;(function()end)();end;local AD = ]]..AD..[[;if(nil)then;(function()end)();end;local AE = ]]..AE..[[;if(nil)then;(function()end)();end;if(nil)then;(function()end)();end
local EXSAM = {]]..table.concat(GTBL, ",")..[[};while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.VvV = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.VvV = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
;if(nil)then;(function()end)();end;local AF = ]]..AF..[[;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;local AG = ]]..AG..[[;;if(nil)then;(function()end)();end;if(nil)then;(function()end)();end;local Arp = ]]..Arp..[[;;if(nil)then;(function()end)();end;
local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD};if(nil)then;(function()end)();end;local keyy = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12};if(nil)then;(function()end)();end;local KY3 = {key[4]*key[3]+Arp-keyy[1]+keyy[2]};if(nil)then;(function()end)();end;local KY1 = {(key[1]+keyy[3]+key[4]*key[2])-keyy[4]*19-keyy[5]};if(nil)then;(function()end)();end;local KY2 = {(keyy[5]+key[4]*7)-keyy[2]+keyy[3]};local inv256
;if(nil)then;(function()end)();end;if(nil)then;(function()end)();end;if(nil)then;(function()end)();end;function Mr.FF(str)while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for x = 1, 0 do;Mr.Exa = 'LS';end;for x = 1, 0 do;if(nil)then;Mr.Exa = 'LS';end;end;local K = KY1[1] - AG * KY3[1];local F = AB + AG - KY2[1] while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for x = 1, 0 do;Mr.Exa = 'LS';end;for x = 1, 0 do;if(nil)then;Mr.Exa = 'LS';end;end return (str:gsub("%x%x", function(c) local L = AB + KY2[1] * KY1[1] - 1101010 % KY3[1] local PX = Arp + (keyy[1] * 3) - 110029 local H = (K * PX + L - KY2[1]) / KY3[1] local M = H % 27 c = tonumber(c, 16) local m = (c + (H + M) / 27) * (2*M + 1) % 256 K = L * F + F + Arp * F - m return string.char(m)end))end
]]..DATA..[[
]]

DATA =[[
collectgarbage('collect')
local function _X()


]]..DATI..[[
end
_X()
]]

io.output(F[1]..'.enc.lua',"w")
io.write(DATA)
io.close()
io.input(F[1]..'.enc.lua', "r")
local DATS = io.read("*a")
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), F[1]..'.enc.lua')
io.input(F[1]..'.enc.lua', "r")
DATS = io.read("*a")
DATS = DATS:gsub("numparams [^\n]*","numparams 2")
DATS = DATS:gsub("is_vararg [^\n]*","is_vararg 8")
DATS = DATS:gsub("maxstacksize [^\n]*","maxstacksize 99")
DATS = DATS:gsub("linedefined [^\n]*","linedefined 0")
DATS = DATS:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATS = string.gsub(string.dump(load(string.dump(load(DATA), true)), true),"LuaR"..string.char(0, 1, 4,4,4,8,0), "LuaR"..string.char(0, 1,0,0,4,4,0))
io.open(F[1]..'.enc.lua','w'):write(DATS):close()
