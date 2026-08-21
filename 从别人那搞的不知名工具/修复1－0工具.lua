ios = function(path, data)
local file
if data then
file = io.open(path, "w")
if file then
io.output(file)
io.write(data)
io.close(file)
end
else
file = io.open(path, "r")
if file then
io.input(file)
data = io.read("*a")
io.close(file)
end
return (data or "")
end
end
APP=gg.getTargetInfo()  
local g = {}
g.last = gg.getFile()
g.info = nil
lsq = gg.multiChoice({
"点我！！！！"
},nil,"❤by—鹿十七 1－0修复工具❤\n\n❤关关雎鸠—在河之洲❤\n\n❤窈窕淑女—君子好求❤\n\n"..os.date('当前时间:%F %X\n').."\n\nGG配置:\n\n包名！！！:"..gg.PACKAGE.."\n\n当前版本！！！:"..gg.VERSION.."\n\n当前版本号！！！:"..gg.BUILD.."\n\n当前进程信息为:"..APP.activities[1].label.."\n\n版本"..APP.versionName.."")
if lsq[1]==true then
prompt = gg.prompt(
{"❤选择脚本❤\n\n原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632"},
{gg.getFile()}, {"file"})
if not prompt then
return os.exit()
end
path = prompt[1]
data = ios(path) -- 读取数据
path2 = path .. '.lasm'
if string.byte(string.sub(data, 1, 1)) == 27 then -- 判断文件是否属于二进制脚本
func = loadfile(path) -- 加载脚本
dump = string.dump(func, true, true) -- 编译脚本
func = load(dump) -- 重新加载脚本
gg.internal2(func, path2) -- 拆卸
data = ios(path2) -- 读取拆卸后的数据
end
data = data:gsub("[^\n]*; garbage[^\n]*", "")
gg.toast("脚本已清除20%.....")
data = data:gsub("%.linedefined %-%d+", ".linedefined 0")
gg.toast("脚本已清除40%.....")
data = data:gsub("%.lastlinedefined %-%d+", ".lastlinedefined 0")
gg.toast("脚本已清除80%.....")
data = data:gsub("%.maxstacksize %d+%s+%.end ; F", function(text)
return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
end)
func = load(data)
if not data then
gg.alert('清理失败')
return os.exit()
end
gg.toast("清理完毕正在写出脚本！！")
dump = string.dump(func, true, true) -- 编译脚本
ios(path, dump) -- 二进制
ios(path2, data) -- LASM
end