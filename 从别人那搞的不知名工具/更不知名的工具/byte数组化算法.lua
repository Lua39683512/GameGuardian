function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13) % 256) end):gsub(" ", "+")
end
function decrypt(code)
   return code:gsub('..', function(h)
        return string.char((tonumber(h,16)+256-13)%256)
   end)
end
c=Ecrypt("hello")
print(c)