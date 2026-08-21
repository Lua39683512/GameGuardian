	XY = gg.prompt({"脚本"},{gg.getFile()},{"file"})
	f = io.open(XY[1],"r")
	ym = f:read("*a")
	f:close()
function Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total -1
	end
	return tRet
end
function call_collect(str, str_2, num, state)
    local t = {}
	local directives = {}
    local index = num

    str = str:gsub("\n\t*"..str_2.." .-\n", function(code)
        index = index + 2
        table.insert(t,
                     "\n:goto_" .. index .. "\n" .. code .. "\n\nJMP :goto_" ..
                         tostring(index + 1))
        return "\nJMP :goto_" .. index .. "\n" .. "\n:goto_" ..
                   tostring(index + 1) .. "\n"
    end)

    for text in string.gmatch(str, '[^\n]+') do
        if text ~= '' then
            txt1 = string.match(text, '%S+')
			if ZL[txt1] then
				table.insert(directives, text)
			end
        end
    end

	t = Table_Rand(t)
	if state == 1 then
	    srt="\n\n:goto_9999\n"
	else
	    srt="\n"
	end
		str = str:gsub("%.maxstacksize .-\n\n.-\n\n", function (code)
			return code.."\n\n"..table.concat(t, "\n") .. srt
		end)
    return str, index
end
ZL = {
    ['LOADK'] = 2,
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,
    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,
    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2
}

main_chunk = ym:match("(.*)%.func F0")
secondary_chunk = ym:match("%.func F0.*")
index = 0
chunk = {}
result = string.match(secondary_chunk, "(%.func F" .. index .. ".-)%.func F" ..
                          tostring(index + 1))
table.insert(chunk, result)
while result ~= nil do
    index = index + 1
    result = string.match(secondary_chunk,
                          "(%.func F" .. index .. ".-)%.func F" ..
                              tostring(index + 1))
    table.insert(chunk, result)
end
last_chunk = secondary_chunk:match("%.func F" .. tostring(index) .. ".*")
table.insert(chunk, 1, main_chunk)
table.insert(chunk, last_chunk)

for k, v in pairs(chunk) do 
	chunk[k],index = call_collect(v, "CALL", 99999, 1)
	--chunk[k],index = call_collect(chunk[k], "LOADK", index+9, 0)
	chunk[k],index = call_collect(chunk[k], "GETTABLE", index+9, 0)
	chunk[k],index = call_collect(chunk[k], "LOADBOOL", index+9, 0)
	chunk[k],index = call_collect(chunk[k], "GETTABUP", index+9, 0)
	chunk[k],index = call_collect(chunk[k], "CLOSURE", index+9, 0)
	chunk[k],index = call_collect(chunk[k], "SETTABUP", index+9, 0)
	chunk[k] = chunk[k]:gsub("%.maxstacksize .-\n\n.-\n\n", function (code)
		return code.."\nJMP :goto_9999\n\n"
	end)
end

chunk=table.concat(chunk, "\n"):gsub("\n%s+","\n")
file = io.open(XY[1].."tmp","w+")
file:write(chunk)
file:close()

