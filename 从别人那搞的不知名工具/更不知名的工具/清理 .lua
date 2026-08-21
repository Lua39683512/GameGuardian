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

data = data:gsub("[^\n]*; garbage[^\n]*", "")
data = data:gsub("linedefined %-%d+", "linedefined 0")
data = data:gsub("%.is_vararg %d+", ".is_vararg 0")
data = data:gsub("%.numparams %d+", ".numparams 0")
data = data:gsub("[^\n]*GETTABLE %w+ %w+ null[^\n]*", "")
data = data:gsub("[^\n]*LOADK %w+ null[^\n]*", "")
data = data:gsub("[^\n]*SETTABUP %w+ null %w+[^\n]*", "")
data = data:gsub("[^\n]*EQ %d+ null %w+[^\n]*", "")
data = data:gsub("[^\n]*SETTABLE %w+ null nil[^\n]*", "")
data = data:gsub("[^\n]*SETTABUP %w+ null[^\n]*", "")
data = data:gsub("%.maxstacksize %d+%s+%.end ; F", function(text)
    return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
end)
data = data:gsub("\n%s+","\n")
io.wr_r(path2, data)
