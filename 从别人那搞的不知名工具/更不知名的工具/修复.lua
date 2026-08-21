-- version: 1.2
-- https://gameguardian.net/forum/files/file/1615-lua-header-fixer/

gg.require('87.1', 15670)

local file = gg.prompt({'Select binary lua script'}, {gg.getFile():gsub('[^/]+$', '')}, {'file'})
if file ~= nil then
	file = file[1]
	local f, err = io.open(file, 'r+')
	if not f then
		print('failed open', file, err)
	else
		f:seek('set')
		local sig = f:read(4)
		if sig ~= '\x1BLua' then
			print('Not a binary script (starts with "'..sig..'")')
		else
			sig = f:read(8)
			local fix = '\x52\x00\x00\x04\x04\x04\x08\x00'
			if sig:sub(3, 3) ~= '\x00' then fix = '\x52\x00\x01\x04\x04\x04\x08\x00' end
			if sig == fix then
				print('Header not corrupted')
			else 
				local bak = file..'.'..os.time()..'.bak'
				print('File backup in', bak)
				f:seek('set')
				bak = io.open(bak, 'w')
				bak:write(f:read('*a'))
				bak:close()
				
				f:seek('set', 4)
				f:write(fix)
				f:close()
				print('Header fixed')
			end
		end
	end	
end