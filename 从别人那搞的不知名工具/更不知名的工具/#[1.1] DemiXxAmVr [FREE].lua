local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📁 Select File Encrypt :",
"📁 Select Output :",
"🕒 Add Expirity Date",
"🔐 Add Password",
"🛡️ Add Minimal GG Required",
"✏️ Add Rename Blocker",
}, g.info, {
"file",
"path",
"checkbox",
"checkbox",
"checkbox",
"checkbox"})
if g.info == nil then
cancel = "📱 Script Was Canceled By User 📱"
gg.alert(cancel, "")
print(cancel)
os.exit()
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if io.open(g.last, "r") == nil then
return gg.alert("⚠️ Script not Found! ")
end
if loadfile(g.last) == nil then
return gg.alert("⚠️ Fix Your Script Error!")
else
gg.toast("⏳ Wait...")
g.out = g.last:match("[^/]+$"):gsub(".lua", ".(ENC)")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
end
DATA = io.open(g.last, "r"):read("*a")

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
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break
else
if g.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script :",
"📝 Type Message For Name Changed :",
}, {g.out:match("[^/]+$"),
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
print("\n📝Added Rename Blocker : "..NAME[1])
DATA = '\nNAME = gg.getFile():match("[^/]+$")\n jancokx = "'..NAME[1]..'"\n if NAME == jancokx then else gg.copyText("'..NAME[1]..'") gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end
io.output(g.out,"w")
io.write([[
collectgarbage("collect")
local _ = '🛡 Encryption Tool By Danix & AmVr ( New Enc v1.1  ) 🛡'
local X = {}
X.X = function()
for mnm = 1,0 do;DeniXxAmVr = 'DeniXxAmVr';end
]]..DATA..[[
 end
X.X()
]])

mmm = ([[
OP[69] 0xf0225b0a	
OP[69] 0xf0ae879f 
OP[69] 0x20a9879f
OP[69] 0x72636e45
OP[69] 0x20747079
OP[69] 0x58207962
OP[69] 0x5a6e6153
OP[69] 0xf0205459
OP[69] 0xf0ae879f
OP[69] 0x22a9879f
OP[69] 0x000a005d
OP[69] 0x9ff00000
OP[69] 0x9ff0ae87	
OP[69] 0x0000a987	
OP[69] 0x9ff00020	
OP[69] 0xf020bd87	
OP[69] 0x20b8879f	
OP[69] 0xa6879ff0	
OP[69] 0x879ff020	
OP[69] 0x9ff020b3	
OP[69] 0x0020bf87	
OP[69] 0xae879ff0	
OP[69] 0xa9879ff0	
OP[69] 0x00000a00	
OP[69] 0x0020007b	
OP[69] 0x61535800	
OP[69] 0x54595a6e	
OP[69] 0x7d002000	
OP[69] 0xea000000	
OP[69] 0x0000afa6	
OP[69] 0x0a000032	
OP[69] 0xf0000000	
OP[69] 0xf0ae879f	
OP[69] 0x00a9879f	
OP[69] 0xf0002000	
OP[69] 0x20bd879f	
OP[69] 0xb8879ff0	
OP[69] 0x879ff020	
OP[69] 0x9ff020a6	
OP[69] 0xf020b387	
OP[69] 0x20bf879f	
OP[69] 0x879ff000	
OP[69] 0x879ff0ae	
OP[69] 0x000a00a9	
OP[69] 0x20007b00	
OP[69] 0x53580000	
OP[69] 0x595a6e61	
OP[69] 0x00200054	
OP[69] 0x0000007d	
OP[69] 0x0094a6ea	
OP[69] 0x000a3c00	
OP[69] 0x9ff00000	
OP[69] 0x9ff0ae87	
OP[69] 0x0000a987	
OP[69] 0x9ff00020	
OP[69] 0xf020bd87	
OP[69] 0x20b8879f	
OP[69] 0xa6879ff0	
OP[69] 0x879ff020	
OP[69] 0x9ff020b3	
OP[69] 0x0020bf87	
OP[69] 0xae879ff0	
OP[69] 0xa9879ff0	
OP[69] 0x00000a00	
OP[69] 0x0020007b	
OP[69] 0x61535800	
OP[69] 0x54595a6e	
OP[69] 0x7d002000	
OP[69] 0xea000000	
OP[69] 0x00008da6	
OP[69] 0x0abdbfef	
OP[69] 0xf0000000	
OP[69] 0xf0ae879f	
OP[69] 0x00a9879f	
OP[69] 0xf0002000	
OP[69] 0x20bd879f	
OP[69] 0xb8879ff0	
OP[69] 0x879ff020	
OP[69] 0x9ff020a6	
OP[69] 0xf020b387	
OP[69] 0x20bf879f	
OP[69] 0x879ff000	
OP[69] 0x879ff0ae	
OP[69] 0x000a00a9	
OP[69] 0x20007b00	
OP[69] 0x53580000	
OP[69] 0x595a6e61	
OP[69] 0x00200054	
OP[69] 0x0000007d	
OP[69] 0x0a86a6ea	
OP[69] 0xf0000000	
OP[69] 0xf0ae879f	
OP[69] 0x00a9879f	
OP[69] 0xf0002000	
OP[69] 0x20bd879f	
OP[69] 0xb8879ff0	
OP[69] 0x879ff020	
OP[69] 0x9ff020a6	
OP[69] 0xf020b387	
OP[69] 0x20bf879f	
OP[69] 0x879ff000	
OP[69] 0x879ff0ae	
OP[69] 0x000a00a9	
OP[69] 0x20007b00	
OP[69] 0x53580000	
OP[69] 0x595a6e61	
OP[69] 0x00200054	
OP[69] 0x0000007d	
OP[69] 0xa6ea87
]])
mmm=mmm.."\n"


io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u[^\n]* "DeniXxAmVr" "DeniXxAmVr"', mmm)
DATA = string.dump(load(DATA), true)
io.open(g.out, "w"):write(DATA):close()
return
end
end
