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
weizhicuowu=[=[
.upval u1 nil ; u1
.upval u9 nil ; u2
.upval u10 nil ; u3
.upval u0 nil ; u4
.upval v0 nil ; u5
.upval u11 nil ; u6
.upval u12 nil ; u7
.upval u13 nil ; u8
.upval u14 nil ; u9
.upval u15 nil ; u10
.upval u16 nil ; u11]=]

weizhicuowu1=[=[
.upval u1 nil ; u1
.upval u9 nil ; u2
.upval u10 nil ; u3
.upval u7 nil ; u4
.upval u6 nil ; u5
.upval u11 nil ; u6]=]


data = data:gsub("[^\n]*; garbage[^\n]*", "")
data = data:gsub("linedefined %d+", "linedefined 0")
data = data:gsub("linedefined %-%d+", "linedefined 0")
data = data:gsub("%.is_vararg %d+", ".is_vararg 0")
data = data:gsub("%.numparams %d+", ".numparams 0")
data = data:gsub("(EQ[^\n]+)%s+EQ[^\n]+%s+EQ[^\n]+",function (x)
    return x
end)
data = data:gsub("(LT[^\n]+)%s+LT[^\n]+%s+LT[^\n]+",function (x)
    return x
end)
data = data:gsub("(LE[^\n]+)%s+LE[^\n]+%s+LE[^\n]+",function (x)
    return x
end)
data = data:gsub("(TEST[^\n]+)%s+TEST[^\n]+%s+TEST[^\n]+",function (x)
    return x
end)
data = data:gsub("%.maxstacksize %d+%s+%.end ; F", function(text)
    return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
end)
data = data:gsub(weizhicuowu,"",1)
data = data:gsub(weizhicuowu1,"",1)
data = data:gsub("RETURN[^\n]-variable[^\n]-out[^\n]+","RETURN")
data = data:gsub("\n%s+","\n")
io.wr_r(path2, data)
