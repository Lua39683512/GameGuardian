local Sel, Path, Ios, Data, Func, Error

Sel = gg.prompt({'请选择加密文件:'}, {gg.getFile()}, {'file'})
if not Sel then
    return false
end
Path = Sel[1]
Ios = function(path, data)
    local file
    path = tostring(path)
    if not string.find(path, '/') then
        path = rl.dir1 .. path
    end
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            print('输出一个文件到:\n' .. path)
        end
    else
        file = io.open(path)
        if file then
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end

Data = Ios(Path)

_ENV['拆卸刷内存1'] = function(Data)
    return 'while not _ENV do ' .. string.rep('RlRlRR=RlRlRR ', 3000) .. ' end\n' .. Data
end

Data = _ENV['拆卸刷内存1'](Data) -- 在10进制的时候调用 '拆卸刷内存1' 把脚本数据传进去

Func, Error = load(Data)
if not Func then
    gg.alert('加密失败\n\n' .. Error)
    return false
end
Data = string.dump(Func, true, true)

_ENV['拆卸刷内存2'] = function(Data)
    return string.gsub(Data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(math.random(0,255)), 10000))
end

Data = _ENV['拆卸刷内存2'](Data) -- 在2进制的时候调用 '拆卸刷内存2' 把脚本数据传进去

Path = Path .. '.lua'
Ios(Path, Data)
