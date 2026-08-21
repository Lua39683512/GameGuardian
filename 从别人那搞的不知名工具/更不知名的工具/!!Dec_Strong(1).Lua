if gg.isVisible(true) then
  gg.setVisible(false)
end
gg.clearResults()
kele0 = 0
Qjctx = 1
gg.toast("script is made by Top GEO YouTube channel")
function main()
  print("do not forget to subscribe Top GEO channel")
  menu = gg.choice({
    "hex encryption (strong)",
    "binary encryption (strong)",
    "EXIT",
    "Youtube "
  }, nil, "select your section   ")
  gg.toast("please subscribe Top GEO Channel")
  if menu == 1 then
    hex(K)
  end
  if menu == 2 then
    bin(K)
  end
  if menu == 3 then
    exit(K)
  end
  if menu == 4 then
    YT(K)
  end
  Qjctx = -1
end
function YT(K)
  YU = gg.choice({"  Top GEO "}, nil, "The channel creators on YouTube")
  main()
end
function exit(K)
  os.exit()
end
function hex(K)
  local last = gg.getFile()
  info = gg.prompt({
    "Select Script To Encrypt:"
  }, {last}, {"file"})
  if info == nil then
    main()
  end
  last = info[1]
  local enc = gg.prompt({
    "Set your Password"
  }, {
    [1] = 0
  }, {
    [1] = "number"
  })
  if enc == nil then
    main()
  end
  function Ecrypt(Text)
    return Text:gsub(".", function(c)
      return string.format("%02X", (string.byte(c) + 13 + enc[1]) % 256)
    end):gsub(" ", "+")
  end
  local out = last .. ".TP.lua"
  local file = io.open(last, "r")
  assert(file)
  local data = file:read("*a")
  file:close()
  gg.alert("The encrypted script is saved to the file:\n" .. out)
  c = Ecrypt(data)
  d = [[
--Encryptor Made By Top GEO
print('Script Encryptor Made By Top GEO')
function encodes(key,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end

local v_value=gg.prompt({'Enter password:'},{[1]=0},{[1]='number'})


if v_value == nil then
	gg.toast ('Script Canceled')
	os.exit()
	end




pcall(encodes(v_value[1],'technano'))
local data = encodes(v_value[1],'technano')
local enc = load(data)
pcall(enc)
]]
  d = string.gsub(d, "technano", c)
  file = io.open(out, "w")
  file:write(d)
  file:close()
  exit()
end
function bin(K)
  local last = gg.getFile()
  while true do
    info = gg.prompt({
      "Select script file:"
    }, {last}, {"file"})
    if info == nil then
      break
    end
    last = info[1]
    local test = loadfile(info[1])
    if test == nil then
      gg.alert("Failed load script: " .. info[1])
    else
      local sel = gg.choice({
        "strong encryption with increased memory",
        "strong encryption without increased memory",
        "EXIT"
      })
      if sel == nil then
        break
      end
      if sel == 1 or sel == 2 then
        local warn = gg.alert("Scripts in binary form may not work on other versions of GameGuardian", "Agree", "Disagree")
        if warn ~= 1 then
          break
        end
        local out = last .. ".bin.lua"
        local file = io.open(out, "w")
        file:write(string.dump(test, sel == 2))
        file:close()
        gg.alert("The binary script is saved to the file:\n" .. out)
        break
      else
        os.exit()
      end
    end
  end
end
while true do
  if gg.isVisible(true) then
    Qjctx = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if Qjctx == 1 then
    main()
  end
end
