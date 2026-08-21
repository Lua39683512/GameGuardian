local No = {}
No.last = gg.getFile()
No.info = nil
No.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
No.data = loadfile(No.config)
if No.data ~= nil then No.info = No.data() No.data = nil end
if No.info == nil then No.info = {No.last, No.last:gsub("/[^/]+$", "")} end
if TheJancok == nil then end
if TheJancok == 1 then end
if TheJancok == 2 then os.exit(print(os.date([[
==========================================

➣ 🛡️ Encryption By Psaycho { III } 🛡️️

➣  📅Date : %A,%d %b %Y

➣ ⏰Time : %H:%M%p

==========================================]])))end
while true do
No.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expirity Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
"💀 Add Verify Human Mode",--7
"🗳️ Add Set Anti Package",--8
"📝 Custom Lua Header lua(X)",--9
},No.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"checkbox",--8
"text"})--9
if No.info == nil then 
cancel = "📱 Script Was Canceled By User 📱"
gg.alert(cancel, "")
print(cancel)
os.exit()
end
gg.saveVariable(No.info, No.config)
No.last = No.info[1]
No.file = No.info[1]:match("[^/]+$")
No.name = No.info[1]:match("[^/]+$"):gsub("%.lua$", "")
No.out = No.info[2] .. "/" .. No.name .. "_PsaychoIX.lua"
if loadfile(No.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])end
local DATA = io.input(No.last):read('*a')
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break 
else
if No.info[3] == true then
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
print("📅 Added Expired Date : ".. exp_date[1])
print("")
DATA = '\n if os.date("%Y%m%d") >= "' ..exp_date[1].. '" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end

if No.info[4] == true then
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
print("🔐Added Password Script : ".. PASS[1])
print("")
DATA = '\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n return end\n if PASSW[1] == "" then gg.alert("Password Can Not Be Empty ") end\n if PASSW[1] == "' ..PASS[1].. '" then gg.toast("✔️Password correct")end\n' .. DATA
end

if No.info[5] == true then
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
print("🛡️Added Minimal GG Version : "..VERSION[1])
print("")
DATA = '\n if gg.VERSION < "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end

if No.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script :",
"📝 Type Message For Name Changed :",
}, {No.out:match("[^/]+$"),
"⚠️ RENAME DETECTED ⚠️"}, {
"text",
"text"})
end
if not NAME then
gg.setVisible(true)
elseif NAME[1] == nil then
gg.alert("📝 Set Name Can Not Be Empty !")
gg.setVisible(true)
else
print("📝Added Rename Blocker : "..NAME[1])
print("")
DATA = '\nNAME = gg.getFile():match("[^/]+$")\n jacokx = "'..NAME[1]..'"\n if NAME == jancokx then else gg.copyText("'..NAME[1]..'") gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end
if No.info[7] == true then
print("💀 Added Verify Human Mode")
print("")
DATA = "local code = math.random(10000, 99999)\nlocal hmn = gg.prompt({'🔒 Input This Code to Verify: '..code..' !'},{[1]=''},{[1]='number'}) if not hmn then os.exit() end if hmn[1]..'1' == code..'1' then gg.toast('☑ Code correct!') else gg.alert('✖ Wrong Code!') os.exit() end\n" ..DATA
end
if No.info[8] == true then
Prompt = gg.prompt({"🔐 Set Anti Package : ",
"🗒️ Set Error Package Message :"},{gg.getTargetPackage(),""},{"text","text"}) end
if not Prompt then
gg.setVisible(true)
elseif Prompt[1] == nil then
gg.alert("🛡️ Input Anti Package !")
gg.setVisible(true)
else
print("🛡️Added Anti Package Prompt : "..Prompt[1])
print("")
DATA = '\nCheck_Package = gg.getTargetPackage() == "' ..Prompt[1] ..'" or (function() gg.alert("' ..Prompt[2] ..'") while true do os.exit() end end)()\n' .. DATA
end
local Key1 = math.random(10,100)
local Key2 = math.random(10,100)
local Key3 = math.random(10,100)
local Key4 = math.random(10,100)
local Key5 = math.random(10,100)
local Key6 = math.random(10,100)
local Key7 = math.random(10,100)
local Key8 = math.random(10,100)
local Key9 = math.random(10,100)
local Key10 = math.random(10,100)
local NoMERC = {}
local NoProgramsIX = {}
local RndK = math.random(1,10)
function TB(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\0'
for i = 1, #gb do
gb[i] = (gb[i] - Key1 + (Key2) - (Key3) + (Key4) - (Key5) + (Key6) - (Key7) + (Key8) - (Key9) + (Key10) * i) % 420
res = LESS:rep(gb[i])
table.insert(sd, '"'..res..'"')
end
return "{"..table.concat(sd, ",").."}"
end
Program = 1
for i = 1, 2 do
gay = math.random(1, 25)
table.insert(NoProgramsIX, gay)
end
function JomKey()
sd = {}
res = ''
LESS = '\\0'
for i = 1, #NoProgramsIX do
res = LESS:rep(NoProgramsIX[i])
table.insert(sd, '"'..res..'"')
end
kyyyy = "{"..table.concat(sd, ",").."}"
table.insert(NoMERC, kyyyy)
end
JomKey()
kuhp0 = ''
kntil = ''
for i = 1, math.random(10,25) do
Ku = string.char(math.random(65, 90))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(65, 90))
KNTOL = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(65, 90))
XnXX = string.char(math.random(65, 90))..string.char(math.random(97, 122))..string.char(math.random(65, 90))
kuhp0 = kuhp0.."\nwhile(nil)do;local E"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #E"..GTR.." < 0 then;break;end;if E"..GTR.."[#E"..GTR.."] < 0 then;break;end;if E"..GTR.."[-nil] ~= #E"..GTR.." & ~E"..GTR.." then E"..GTR.."[#E"..GTR.."] = E"..GTR.."[-nil]();end;if #E"..GTR.." < nil then E"..GTR.."[#E"..GTR.."] = E"..GTR.."[-nil%nil]();end;goto F1;if(nil or 0)then;return;end::F0::e()::F1::function e()goto F2;if(nil or 0)then;return;end::F3::e()::F2::function d()end;goto F3;end;goto F0;end"
kntil = kntil.."\nfor "..KNTOL.." = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local "..GTR.." = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} "..GTR.." = "..GTR.."() "..GTR.." = "..GTR.."nil "..GTR.."= "..GTR.."():"..GTR.."("..GTR.."nil)("..GTR.."nil*-1).."..GTR.."nil "..GTR.." = "..GTR.."("..GTR.."nil)("..GTR..") "..GTR.." = "..GTR.."("..GTR.."nil"..GTR.."nil)("..GTR..") if _~= nil then _ = _ (-nil * nil)() _ = nil end;_ = _,_(-nil*nil),_ if "..GTR.."~= nil then "..GTR.." = _ ("..GTR.."nil*nil*nil*-nil) "..GTR.." = nil end;if "..GTR.." == nil then "..GTR.." = {"..GTR.."("..GTR.."*nil)("..GTR.."*nil)(nil * 1, 1<< nil), "..GTR.."*nil} end;end;local _T = {} "..KNTOL.."[''] = T local K = ("..KNTOL..")("..KNTOL..","..KNTOL..") "..Ku.."[1] = 1 end"
QXQ = "for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end\nfor i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end"
end
local DATA = string.gsub(DATA, "%(%)", "()\nif(nil)then if(true)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end ::GBE:: end\nwhile(nil)do;local x={}if(x.x)then;x.x=(x.x(x))end;end\nfor i = 1, 0 do local x_z = {12,36,48,56,78,121,64} if x_z ~= x_z then x_z."..string.char(math.random(97, 122)).." = x_z."..string.char(math.random(97, 122)).."() break end local x_x = {12,36,48,56,78,121,64} if x_x ~= x_x then x_x."..string.char(math.random(97, 122)).." = x_x."..string.char(math.random(97, 122)).."() break end local xnx = {12,36,48,56,78,121,64} if xnx ~= xnx then while true do xnx.c = x.x.g() xnx = nil _ENV = nil end end break end\nfor i = 1, 0 do local Psaycho = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if Psaycho.d ~= nil then Psaycho.d = Psaycho.g() end break end\n".."for i = 1, 0 do local Psaycho = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if Psaycho.d ~= nil then Psaycho.d = Psaycho.g() end break end\n")
QQQ = "if(nil)then if(true)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end if(nil)then else goto GBE end ::GBE:: end\nwhile(nil)do;local x={}if(x.x)then;x.x=(x.x(x))end;end\nwhile(nil)do;for x=x,x do;local x={}if(x.x)then;x.x=x.x(x)end;for xx=x.x,x.x,x.x do;local xx={}if(xx.x)then;xx.x=xx.x()end;for xxx=x,xx.x,x do;local xxx={}if(xxx.x)then;xxx.x=xxx.x(x)end;for xxxx=x,xx,xxx.x do;local xxxx={}if(xxxx.x)then;xxxx.x=xxxx.x(x)end;local xxxx={}if(xxxx.x)then;xxxx.x=(xxxx|xxx|xx|x)(x)end;end;local xxx={}if(xxx.x)then;xxx.x=(true|xxx|xx|x)(x)end;end;local xx={}if(xx.x)then;xx.x=(true|false|xx|x)(x)end;end;local x={}if(x.x)then;x.x=(true|nil|false|nil|x|nil|false|true|nil)(x)end;return(true|false|nil)end;return;end\nwhile(nil)do;local x={}if(x.x)then;x.x=(x.x(x))end;end\nwhile(nil)do;for x=x,x do;local x={}if(x.x)then;x.x=x.x(x)end;for xx=x.x,x.x,x.x do;local xx={}if(xx.x)then;xx.x=xx.x()end;for xxx=x,xx.x,x do;local xxx={}if(xxx.x)then;xxx.x=xxx.x(x)end;for xxxx=x,xx,xxx.x do;local xxxx={}if(xxxx.x)then;xxxx.x=xxxx.x(x)end;local xxxx={}if(xxxx.x)then;xxxx.x=(xxxx|xxx|xx|x)(x)end;end;local xxx={}if(xxx.x)then;xxx.x=(true|xxx|xx|x)(x)end;end;local xx={}if(xx.x)then;xx.x=(true|false|xx|x)(x)end;end;local x={}if(x.x)then;x.x=(true|nil|false|nil|x|nil|false|true|nil)(x)end;return(true|false|nil)end;return;end"
local DATA =[[
io.input(gg.getFile())
io.output(gg.getFile().."_PSCIX")
io.write(io.read("*a"):gsub("LuaR", "LuaPsaycho"), "w")
loadfile(gg.getFile().."_PSCIX")
os.remove(gg.getFile().."_PSCIX")
if loadfile(gg.getFile().."_PSCIX") then
assert(gg.getFile().."_PSCIX")
return assert(gg.getFile().."_PSCIX")
end
gg.toast("🛡️ Encryption By Psaycho { III } 🛡️")
SN = gg.searchNumber
EA = gg.editAll
SVG = gg.setVisible
local hook = SN
local hook2  = EA
--log corrupt 
EA = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%d+",function(x)
local rand = {"y","z","=","l","g","t"}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
hook2(table.unpack(parm))
end
--log corrupt 
SN = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%d+",function(x)
local rand = {"y","z","=","l","g","t"}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
hook(table.unpack(parm))
end
--Hide gg when function exec
local hook = SV
local hook2 = GR
local hook3 = SN
local hook4 = SA
SV = function(...) gg.clearResults() hook(table.unpack({...})) gg.clearResults() end
GR = function(...) gg.setVisible(false) local returN = hook2(table.unpack({...}))  return returN end
SN = function(...) gg.setVisible(false) hook3(table.unpack({...})) gg.setVisible(false)  end
SA = function(...) gg.clearResults() gg.setVisible(false) hook4(table.unpack({...})) gg.setVisible(false)  end

local hook = SN
local hook2  = EA

EA = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%d+",function(x)
local rand = {"y","z","=","l","g","t"}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
hook2(table.unpack(parm))
endSN = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%d+",function(x)
local rand = {"y","z","=","l","g","t"}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
hook(table.unpack(parm))
end
end

--log corrupt 
 SVG(false)
-- fn 2

SVG(false)
]]..kuhp0..[[

io.input(gg.getFile())
os.remove(gg.getFile())
gg.setVisible(false)
if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "w") return end
io.output(gg.getFile())
io.write(io.read("*a"), "w")
os.rename(gg.getFile(), "/storage/emulated/0/230")
]]..kntil..[[

os.rename("/storage/emulated/0/230", "/storage/emulated/0/Android/JancokYou")
if not loadfile(gg.getFile()) then os.rename("/storage/emulated/0/Android/JancokYou", gg.getFile()) return end
os.rename("/storage/emulated/0/Android/JancokYou", gg.getFile())
io.input(gg.getFile(), "r")
os.remove(gg.getFile())
gg.setVisible(false)
gg.toast("Script Loaded Succesfully!")
gg.sleep(600)
]]..DATA..[[ 
]]..kntil..[[
]]..kuhp0..[[ 
end
No.MC()
]]
for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
Y = TB(c)
table.insert(NoMERC, Y)
Program = Program + 1
return "See(You["..Program.."])"
end)


until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "gg[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
Y = TB(c)
table.insert(NoMERC, Y)
Program = Program + 1
return "See(You["..Program.."])"
end)


until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
Y = TB(c)
table.insert(NoMERC, Y)
Program = Program + 1
return "See(You["..Program.."])"
end)
until DATA:match("[[(.-)]]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
Y = TB(c)
table.insert(NoMERC, Y)
Program = Program + 1
return "See(You["..Program.."])"
end)


until DATA:match("[=[(.-)]=]") == nil
for k, v in pairs(io) do
repeat
ambl = "io." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "io[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
for k, v in pairs(os) do
repeat
ambl = "os." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "os[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
for k, v in pairs(math) do
repeat
ambl = "math." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "math[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
for k, v in pairs(debug) do
repeat
ambl = "debug." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "debug[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
for k, v in pairs(string) do
repeat
ambl = "string." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "string[See(You["..Program.."])]"
end)


until DATA:match(ambl) == nil
end
for k, v in pairs(table) do
repeat
ambl = "table." .. k
DATA = DATA:gsub(ambl, function()
Y = TB(k)
table.insert(NoMERC, Y)
Program = Program + 1
return "table[See(You["..Program.."])]"
end)
until DATA:match(ambl) == nil
end


tfux = {"loadfile%(", "load%(", "print%("}
for i = 1, #tfux do
DATA = DATA:gsub(tfux[i], function(c)
c = c:gsub("%(", "")
Y = TB(c)
table.insert(NoMERC, Y)
Program = Program + 1
return "Qwerty[See(You["..Program.."])]("
end)
end
local Yankku = table.concat(NoMERC, ",")


io.output(No.out.."_IX.lua", "w")
io.write("local _A = '\\\n\\\n          🛡️ Encryption Tools By Psaycho 🛡️\\\n\\\n     [\"Telegram : Psaycho_IX\"]\\\n     [\"Version : 3.2\"]\\\n     [\"This Enc Is Not Stable For All Scripts\"]\\\n\\\n'\n\nNo = {}\nNo.MC = function() end\n"..QXQ.."\nlocal Key2 = "..Key2..";local Key4 = "..Key4..";local Key6 = "..Key6..";local Key9 = "..Key9..";local Key10 = "..Key10..";local Key7 = "..Key7..";local Key5 = "..Key5..";local Key1 = "..Key1..";local Key8 = "..Key8..";local Key3 = "..Key3.."\nNo.MC = function()\n"..QQQ.."\nlocal Qwerty = _G\nNo.PROGRAMS = {"..Yankku.."}\nYou = No.PROGRAMS\nlocal No = {}\nfunction No.xnxx(c)\nc = #c\nreturn c\nend\ng ={}\ng.string = string\nParpell = g.string.Febriansyah\nfunction See(c)\nres = ''\nfor i = 1, No.xnxx(c) do\nres = res..string.char((No.xnxx(c[i]) + Key1 - (Key2) + (Key3) - (Key4) + (Key5) - (Key6) + (Key7) - (Key8) + (Key9) - (Key10) *i) % 420)\nend\nreturn res\nend\n"..DATA)
file = io.open(No.out.."_IX.lua", "r")
DATS = file:read("*a")
file:close()
gg.toast("Checking Script....")
--if not load(DATS) then
--os.remove(No.out.."_IX.lua")
--return gg.alert("⚠️ Script Can't be Encrypted !")
--else
local CstHdr = No.info[9]
file = io.open(No.out, "w")
file:write(string.dump(loadfile(No.out.."_IX.lua"), true))
file:close()
local TTB = function (FanaticIX) -- Text to byte
local Byte = {string.byte(FanaticIX,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("FanaticIX = \""..Result.."\"")()
return FanaticIX
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(No.out)
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
file = io.open(No.out, "w")
file:write(Script)
file:close()
os.remove(No.out.."_IX.lua")
gg.toast("⏳100% Succes Encrypted ✔")
print([[
==========================================

➣ 🛡️ Encryption By Psaycho { III } 🛡️️

➣ File Name : ]]..No.file..[[


➣ Processsing...

➣ Encrypting Script DONE...[✔]

➣ Custom Lua Header : ]]..CstHdr..[[


➣ File Saved To : ]]..No.out..[[


==========================================]])
return gg.alert([[
==========================================

➣ 🛡️ Encryption By Psaycho { III } 🛡️️

➣ File Name : ]]..No.file..[[


➣ Processsing...

➣ Encrypting Script DONE...[✔]

➣ Custom Lua Header : ]]..CstHdr..[[


➣ File Saved To : ]]..No.out..[[


==========================================]])
end
--end--if not load(DATS)
end