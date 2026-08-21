Y=gg.prompt({
""
},{
gg.getFile()
},{
"file"
})


code=io.open(Y[1],"r"):read("*a")

key=gg.prompt({
"请输入你想加的密钥:"
},{
""
},{
'number'
})

--加
function Decryption(TxT)
		return TxT:gsub(".", function(jia)
			return string.format("%02X", (string.byte(jia)+13+key[1]) % 256)
		end):gsub(" ", "+")
	end

--解
jie=[=[

function Yicjm(Key,code)
return (code:gsub('..',
function (h) 
return string.char((tonumber(h,16)+256-13 - Key + 999999*256)%256) 
end))
end

]=]


code = code:gsub("%[=%[(.-)%]=%]",function(h)
     return "Yicjm([=["..key[1].."]=],[=["..Decryption(h).."]=])"
end)
     code=code:gsub("\"(.-)\"",function(h)
     return "Yicjm([=["..key[1].."]=],[=["..Decryption(h).."]=])"
end)
     code,error=code:gsub("'(.-)'",function(h)
     return "Yicjm([=["..key[1].."]=],[=["..Decryption(h).."]=])"
end)

io.open(Y[1]..".lua","w"):write(jie.."\n"..code)

print("加密成功~")