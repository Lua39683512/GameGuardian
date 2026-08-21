
function Decryption(jie,Text)

  return (Text:gsub('..', function (jie)

    return string.char((tonumber(jie,16))%256)

  end))

end
function jie(fd,key)
	if key==nil then
		key='#2347'
	end
	return replace(fd,key,string.char(13))
end
function replace(from,fs,ts)
	local index
	local head,foot
	while 1 do
		index=string.find(from,fs)
		if index==nil then
			break
		end
		--print(string.byte(fs)..string.byte(ts))
		head=string.sub(from,1,index-1)
		foot=string.sub(from,index+#fs,-1)
		from=head..ts..foot
	end
	return from
end

local data = Decryption('DZSH',"16进制代码")

local dzsh = load(data)

pcall(dzsh)
