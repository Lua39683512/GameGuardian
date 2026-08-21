function Yicjm(key,code)
    return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end
for key = 0, 255 do
    print(key)
    local code = Yicjm(key, '代码')
    if (string.find(code, "gg")
        and string.find(code, "if")
        and string.find(code, "then")
        and string.find(code, "end")) then
        print(key .. " 北玄解密.")
        file = io.open("/storage/emulated/0/tencent/QQfile_recv/北玄解密.lua", "w")
        file:write(code)
        file:close()
        break
    end
   end