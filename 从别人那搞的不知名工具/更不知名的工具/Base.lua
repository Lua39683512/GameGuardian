local g = {}
g.last = gg.getFile()
sc = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
DATA = loadfile(g.config)
if DATA ~= nil then sc = DATA() DATA = nil end
if sc == nil then sc = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
sc = gg.prompt({
"ᬊcнoosᴇ ᴀ scʀιᴘт࿐ : ",
"ᬊsᴇʟᴇcт ouтᴘuт ғoʟᴅᴇʀ࿐ : "
},sc,{
"file",
"path"
})
if sc == nil then
return
end
gg.saveVariable(sc, g.config)
g.last = sc[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️ Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", os.date("X_VIO"))
g.out = sc[2] .. "/" .. g.out .. ".lua"
print("\n✎ ꜰɪʟᴇ ᴛᴏ ᴇɴᴄʀʏᴩᴛ [ ᴅᴏɴᴇ ] !!\n\n")
print("\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n" .. g.out .. "\n▬▬▬▬▬▬▬▬▬▬▬▬▬")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')

local function encodeBase64(source_str)
local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local s64 = ''
local str = source_str
while #str > 0 do
local bytes_num = 0
local buf = 0
for byte_cnt=1,3 do
buf = (buf * 256)
if #str > 0 then
buf = buf + string.byte(str, 1, 1)
str = string.sub(str, 2)
bytes_num = bytes_num + 1
end
end
for group_cnt=1,(bytes_num+1) do
local b64char = math.fmod(math.floor(buf/262144), 64) + 1
s64 = s64 .. string.sub(b64chars, b64char, b64char)
buf = buf * 64
end
for fill_cnt=1,(3-bytes_num) do
s64 = s64 .. '='
end
end
return s64
end

local file = io.open(sc[1], "r")
assert(file)
local base = file:read("*a")
file:close()

jmdm = encodeBase64(base)
decryption = 'local Yicjm = function(Yicstr)\nlocal b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"  \nlocal temp = {}  \nfor i = 1, 64 do    \ntemp[string.sub(b64chars, i, i)] = i  \nend  \ntemp["="] = 0  \nlocal str = ""  \nfor i = 1, #Yicstr, 4 do    \nif not (i > #Yicstr) then      \nlocal data = 0      \nlocal str_count = 0      \nfor j = 0, 3 do        \nlocal str1 = string.sub(Yicstr, i + j, i + j)        \nif not temp[str1] then          \nreturn        \nend        \nif temp[str1] < 1 then          \ndata = data * 64        \nelse          \ndata = data * 64 + temp[str1] - 1          \nstr_count = str_count + 1        \nend      \nend      \nfor j = 16, 0, -8 do        \nif str_count > 0 then          \nstr = str .. string.char(math.floor(data / math.pow(2, j)))          \ndata = math.fmod(data, math.pow(2, j))          \nstr_count = str_count - 1        \nend      \nend    \nend  \nend  \nlocal last = tonumber(string.byte(str, string.len(str), string.len(str)))  \nif last == 0 then    \nstr = string.sub(str, 1, string.len(str) - 1)  \nend  \nreturn str\nend \nlocal base64 = Yicjm("JMDM")\n\nlocal base64 = load(base64)\n\npcall(base64)'

DATA = string.gsub(decryption, "JMDM", jmdm)

io.open(g.out,"w"):write(DATA):close()
gg.setVisible(true)
return
end