local menu, file, data, path, path2, path3, t1, t2, len1, len2, len3, func, dump, error, len4
path = gg.getFile()
menu = gg.prompt({"请选择脚本"}, {path}, {"file"})
if not menu then
    return print("未选择脚本")
end

path = menu[1]
path2 = path .. "-修复.lasm"

io.wr_r = function(path, data)
    if data then
        file = io.open(path, "w")
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path, "r")
        io.input(file)
        data = io.read("*a")
        io.close(file)
        return data
    end
end

data = io.wr_r(path)

function gsub(text1, text2)
    if data:find(text1) then
        data = data:gsub(text1, text2)
    end
end


if data:find("[^\n]*; garbage[^\n]*") then
    data = data:gsub("[^\n]*; garbage[^\n]*", "")
end
data = data:gsub("%.linedefined %-%d+", ".linedefined 0")
data = data:gsub("%.lastlinedefined %-%d+", ".lastlinedefined 0")
gsub("[^\n]*GETTABLE %w+ %w+ null[^\n]*", "")
gsub("[^\n]*LOADK %w+ null[^\n]*", "")
gsub("[^\n]*SETTABUP %w+ null %w+[^\n]*", "")
gsub("[^\n]*EQ %d+ null %w+[^\n]*", "")
gsub("[^\n]*SETTABLE %w+ null nil[^\n]*", "")
gsub("[^\n]*SETTABUP %w+ null[^\n]*", "")

data = data:gsub("%.maxstacksize %d+%s+%.end ; F", function(text)
    return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
end)

io.wr_r(path2, data)
