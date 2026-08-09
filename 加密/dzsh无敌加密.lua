
Path = gg.prompt({[1]="选择要加密的脚本"}, {[1]="/storage/emulated/0/bzsh.lua"},{[1]="file"})

if Path==nil then
os.exit() 
end

local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1], "r")
assert(file)
local data = file:read("*a")
file:close()

jmdm = Encryption(data)
decryption = "function Decryption(jie,Text)\n\n  return (Text:gsub('..', function (jie)\n\n    return string.char((tonumber(jie,16))%256)\n\n  end))\n\nend\n\nlocal data = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(data)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

for i=1,3 do
local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local data = file:read("*a")
file:close()

jmdm = Encryption(data)
decryption = "function Decryption(jie,Text)\n\n  return (Text:gsub('..', function (jie)\n\n    return string.char((tonumber(jie,16))%256)\n\n  end))\n\nend\n\nlocal data = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(data)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()
i=i+1
end


local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local data = file:read("*a")
file:close()

file = io.open(Path[1].."h", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("加密成功！\n"..Path[1].."x"..sj)