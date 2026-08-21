gg.alert("欢迎使用本汇编工具，本汇编工具可解百分之七十五的加密！\n思路：Sam\n作者：唐梓月\n\n使用方法：\n选择需要汇编的脚本→等待载入→选择对应的指令名称→随便点击导出部分→最下方全部导出→点击取消写出")
Y = gg.getFile()
Q = gg.prompt({"选择需要汇编的文件"}, {Y}, {"file"})
if not Q then
print("取消操作")
return os.exit()
end
F = Y
F = F:gsub(F:match("[^/]+$"), "")
io.w_r = function(Y, data)
if not Y:find("/") then
Y = F .. Y
end
if data then
file = io.open(Y, "w")
io.output(file)
io.write(data)
io.close(file)
else
file = io.open(Y, "r")
io.input(file)
data = io.read("*a")
io.close(file)
return data
end
end
Y = Q[1]
func, erroes = loadfile(Y)
if not func then
print('加载失败\n\n', erroes)
return os.exit()
end
func = string.dump(func, true, true)
gg.internal2(load(func), Y .. '.lasm')
LASM = io.w_r(Y .. '.lasm')
tb1 = {}
tb2 = {}
tb3 = {}
tb4 = {}
for text in LASM:gmatch("[^\n]+") do
zl1 = text:match("%S+")
if zl1:sub(1, 1):find("%u") then
if not tb1[zl1] then
tb1[zl1] = {}
end
text = text:match("%S*[^\n]+")
table.insert(tb1[zl1], text)
end
end
for k, v in pairs(tb1) do
table.insert(tb2, k)
table.insert(tb3, v)
end
table.insert(tb2, "全部导出")
repeat
A = gg.choice(tb2, "", "请选择指令类型")
if A then
if A == #tb2 then
io.w_r("指令日志.lasm.log.lua", tostring(tb1))
gg.toast("导出成功")
else
tb4 = tb3[A]
choice2 = tb2[A]
choice2 = gg.choice(tb4, "", "共有" .. (#tb4) .. "条 " .. choice2 .. " 指令")
if choice2 then
io.w_r(tb2[A] .. ".lasm.log.lua", tostring(tb4))
gg.toast("导出成功")
end
end
end
until not A
