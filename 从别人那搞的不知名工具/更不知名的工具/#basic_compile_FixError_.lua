-- Fix Error Lua Encrypt Tool @SunLuaG 
local g = {}
g.file = gg.getFile()
g.sel = nil
g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end

if g.sel == nil then
g.sel = {g.file, g.file:gsub('/[^/]+$', '')}
end

while true do
g.sel = gg.prompt({
'🔐 Select file to compile :',--1
'📁 Select writable path for output :',--2
'📋 Add note/wellcome message\n Result = gg.alert("your text below")',--3
'Check this to add wellcome message',--4
'©️ Add credits in the print\n Result = print("your text below")',--5
'check this to add credits in the print',--6
'🔑 Add password\nPut number password in the textbox below',--7
'Check this to add password',--8
'🕛 Add limit date. Format year/month/day\ne.g :20191230',--9
'Check this to add limit date',--10
'🔰 Add detect game versions\ne.g : 10121 (OBB Versions PUBGM)',--11
'Check this to add detect game versions',--12
'🛡️ Add minimal require GG versions\ne.g : 73.3 (Latest GG Versions)',--13
'Check this to add minimal require GG versions'
}, g.sel,{
'file',--1 selected file
'path',--2 output file
'text',--3 add note/wellcome message
'checkbox',--4
'text',--5 add print credits
'checkbox',--6
'text',--7 add password
'checkbox',--8
'text',--9 add limit date
'checkbox',--10
'text',--11 add detect game versions
'checkbox',--12
'text',--13 add minimal require GG versions
'checkbox'--14
})

if g.sel == nil then break end
gg.saveVariable(g.sel, g.config)
g.file = g.sel[1]
g.test = loadfile(g.file)
if g.test == nil then
gg.alert('failed to load script: '..g.file)
else
g.name = g.file:match('[^/]+$')
g.path = {g.sel[2]..'/'..g.name, g.file, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
g.doc = nil
g.out = ''
g.try = ''
for i, v in ipairs(g.path) do
g.out = v..".tmp.lua"
g.doc = io.open(g.out, "w")
if g.doc ~= nil then
g.file = v:gsub('%.lua$', '')
break
end
g.try = g.try..' '..v
end		
if g.doc == nil then
gg.alert('Failed write to file. Checked:'..g.try)
else
g.doc:close()
os.remove(g.out)
end

file = io.open(g.sel[1]..'X', 'w')
file:write("")
file:close()
local filex = io.open(g.sel[1], "r") assert(filex)
repeat
local data = filex:read("*l")
if data ~= nil then
local sf1 = string.find(data, "gg.editAll")
local sf2 = string.find(data, "gg.toast")
local sf3 = string.find(data, "gg.searchNumber")
local sf4 = string.find(data, "gg.alert")
local sf5 = string.find(data, "gg.getResultCount")
local sf6 = string.find(data, "gg.getResults")
local sf7 = string.find(data, "gg.setVisible")
local sf8 = string.find(data, "gg.setRanges")
local sf9 = string.find(data, "gg.clearResults")
local sf10 = string.find(data, "gg.setVisible")
local sf11 = string.find(data, "gg.addListItems")

if type(sf1) == 'number' or 
type(sf2) == 'number' or 
type(sf3) == 'number' or 
type(sf4) == 'number' or
type(sf5) == 'number' or
type(sf6) == 'number' or
type(sf7) == 'number' or
type(sf8) == 'number' or
type(sf9) == 'number' or
type(sf10) == 'number' or
type(sf11) == 'number' then

a0 = nil
local tbl = {}
local result = ''
for i = 1,#data do
local a = string.sub(data, i , i)
b = string.byte(a)
tbl[i] = tonumber(b)
if a0 == nil then
a0 = 1
result = result..tbl[i]
else
result = result..','..tbl[i]
end
end

local d = 'load(string.dump(load(string.char('..result..')), true,false))()\n'
file = io.open(g.sel[1]..'X', 'a+')
file:write(d)
file:write("\n")
file:close()
else
file = io.open(g.sel[1]..'X', 'a+')
file:write(data)
file:write("\n")
file:close()
end
end

until data == nil
local file = io.open(g.sel[1]..'X', "r") assert(file) 
local data = file:read("*a") 
file:close()

on = '✅'
off = '❌'
limdate = off
detectver = off
addpass = off
ggver = off
addcredit = off
addnote = off

if g.sel[4] == true then
tm1 = "gg.alert('"..g.sel[3].."')"
addnote = on
else
tm1 = ''
end

local data1 = tm1
a1 = nil
local tbl1 = {}
local result1 = ''
for i = 1,#data1 do
local aa1 = string.sub(data1, i , i)
b1 = string.byte(aa1)
tbl1[i] = tonumber(b1)
if a1 == nil then
a1 = 1﻿
result1 = result1..tbl1[i]
else
result1 = result1..','..tbl1[i]
end
end
local d1 ﻿= 'about = gg.getTargetInfo()\nload(string.dump(load(string.char('..result1..')),true,false))()\n'

if g.sel[6] == true then
tm2= "print('"..g.sel[5].."')"
addcredit = on
else
tm2 = ''
end

local data2 = tm2
a2 = nil
local tbl2 = {}
local result2 = ''
for i = 1,#data2 do
local aa2 = string.sub(data2, i , i)
b2 = string.byte(aa2)
tbl2[i] = tonumber(b2)
if a2 == nil then
a2 = 1﻿
result2 = result2..tbl2[i]
else
result2 = result2..','..tbl2[i]
end
end
local d2 = 'load(string.dump(load(string.char('..result2..')),true,false))()\n'

if g.sel[8] == true then
tm3 = "local pass = gg.prompt({'🔒 Input password: '},{[1]=''},{[1]='number'}) if not pass then os.exit() end if pass[1] == '"..g.sel[7].."' then gg.toast('✔️ Password correct!') else gg.alert('❌ Wrong Password!') os.exit() end"
addpass = on
else
tm3 = ''
end

local data3 = tm3
a3 = nil
local tbl3 = {}
local result3 = ''
for i = 1,#data3 do
local aa3 = string.sub(data3, i , i)
b3 = string.byte(aa3)
tbl3[i] = tonumber(b3)
if a3 == nil then
a3 = 1﻿
result3 = result3..tbl3[i]
else
result3 = result3..','..tbl3[i]
end
end
local d3 = 'load(string.dump(load(string.char('..result3..')),true,false))()\n'

if g.sel[10] == true then
tm4 = "if os.date('%Y%m%d') > '"..g.sel[9].."' then gg.alert('❌ Script expired') os.exit() end"
limdate = on
else
tm4 = ''
end

local data4 = tm4
a4 = nil
local tbl4 = {}
local result4 = ''
for i = 1,#data4 do
local aa4 = string.sub(data4, i , i)
b4 = string.byte(aa4)
tbl4[i] = tonumber(b4)
if a4 == nil then
a4 = 1﻿
result4 = result4..tbl4[i]
else
result4 = result4..','..tbl4[i]
end
end
local d4 = 'load(string.dump(load(string.char('..result4..')),true,false))()\n'

if g.sel[12] == true then
tm5 = "if about.versionCode ~= '"..g.sel[11].."' then gg.alert('❌ Please open the game first') os.exit() end"
detectver = on
else
tm5 = ''
end

local data5 = tm5
a5 = nil
local tbl5 = {}
local result5 = ''
for i = 1,#data5 do
local aa5 = string.sub(data5, i , i)
b5 = string.byte(aa5)
tbl5[i] = tonumber(b5)
if a5 == nil then
a5 = 1﻿
result5 = result5..tbl5[i]
else
result5 = result5..','..tbl5[i]
end
end

local d5 = 'load(string.dump(load(string.char('..result5..')),true,false))()\n'

if g.sel[14] == true then
tm6 = "if gg.VERSION < '"..g.sel[13].."' then gg.alert('❌ Please update your GameGuardian') os.exit() end\n"
ggver = on
else
tm6 = ''
end

local data6 = tm6
a6 = nil
local tbl6 = {}
local result6 = ''
for i = 1,#data6 do
local aa6 = string.sub(data6, i , i)
b6 = string.byte(aa6)
tbl6[i] = tonumber(b6)
if a6 == nil then
a6 = 1﻿
result6 = result6..tbl6[i]
else
result6 = result6..','..tbl6[i]
end
end

local d6 = 'load(string.dump(load(string.char('..result6..')),true,false))()\n'

local data = d1..'\n'..d2..'\n'..d3..'\n'..d4..'\n'..d5..'\n'..d6..'\n'..data

file = io.open(g.sel[1]..'X', 'w')
file:write(data)
file:close()

local data = string.dump(loadfile(g.sel[1].. 'X'), true,true)
local data = string.gsub(data, "LuaR", "LuaX", 1)

g.out = g.file..".luaX"
os.remove(g.sel[1]..'X')		
g.doc = io.open(g.out, 'w')
g.doc:write(data)
g.doc:close()

gg.alert("Compile Success!\n\nMenu Added :\n\n"..limdate.." 🕛 Limit Date\n"..detectver.." ✔️ Detect Game Versions\n"..addpass.." 🔑 Add Password\n"..ggver.." 🛡️ Require GG Versions\n"..addcredit.." ©️ Print Credits\n"..addnote.." 📋 Wellcome Message\n\n📁 File saved to : "..g.out)
break -- os.exit()
end
end