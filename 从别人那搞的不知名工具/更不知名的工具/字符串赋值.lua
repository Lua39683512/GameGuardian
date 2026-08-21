LJ = gg.prompt({'选择文件'}, {gg.getFile()}, {'file'})

file = io.open(LJ[1], "r")
code = file:read("*a")

code = code:gsub('\\\\', '\\092\\092')
code = code:gsub('\092\034', '\\034')
code = code:gsub("\092\039", '\\039')

function pop()
    local re = nil
    local outstr = ""
    for i = 2, #dates do
        if dates[i] ~= dates[1] then
            outstr = outstr .. string.char(dates[i])
        end
    end
    -- gg.alert(outstr)
    if outstr ~= "" then
        outstr = ('%q'):format(outstr)
        local blname = ("s" .. long):gsub(";", ""):gsub(string.char(10), "")
        longlongstr = longlongstr .. "\n" .. '_ENV["'..blname..'"]' ..         "=function() if nil then end if ((717)<(-767)) then end if(nil)then if(true)then else goto mw0 end if(nil)then else goto mw0 end ::mw0:: end local Key=" ..
                          outstr .. " return Key end "
        re = '_ENV["'..blname..'"]' .. "()"
        long = long + 1
    end
    return re
end

function push(bits)
    local out = nil
    if dates == nil then
        instdates = bits
        datesdi = 1
        dates = {}
    end
    dates[datesdi] = bits
    if datesdi ~= 1 and bits == instdates then
        out = pop()
        if out == nil then
            out = string.char(instdates) .. string.char(instdates)
        end
        dates = nil
    end
    datesdi = datesdi + 1
    return out
end

function byte(initstr)
    strsprit = initstr
    local strsprit2 = ""
    long = 1
    longlongstr = " "
    len = string.len(strsprit)
    for i = 1, len do
        local bit = string.byte(strsprit, i)
        if bit == 34 or bit == 39 or dates ~= nil then
            local codestr = push(bit)
            if codestr ~= nil then
                strsprit2 = strsprit2 .. codestr
            end
        else
            strsprit2 = strsprit2 .. string.char(bit)
        end
    end
    return longlongstr .. "\n" .. strsprit2
end

io.open(LJ[1] .. ".lua", "w"):write(byte(code))
