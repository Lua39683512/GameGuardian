gg.alert("雪糕反汇编工具已更新！如果您之前买过可以找雪糕补上25RMB更新！如字符串被隐藏请直接使用转码工具修复！\n\n更新内容：优化了解密脚本的大小  自动提取字符串   解密环境范围：脚本大小＜1.5M  大于1.5M脚本已是垃圾")
function SST()
local g = {'/storage/emulated/0/'}
g.data = loadfile('/storage/emulated/0/Android/反汇编文件.lua')
if g.data~=nil then 
g=g.data() 
end
TC = gg.prompt({
'选择GGLua文件',
},g,{
'file',
})
if TC==nil then
print("已经退出,")
os.exit()
end

Y=TC[1]

F = loadfile(Y)
if F then
    F = string.dump(F, true, true)
    F = load(F)
    gg.internal2(F, Y .. ".lasm")
end
f=io.open(Y .. ".lasm","r")
hans={}
repeat
data=f:read("*l")
if data~=nil then
if string.find(data,"LOADK") then
if string.find(data,'"') then
table.insert(hans,string.match(data,'(".-")'))
else
table.insert(hans,string.match(data,"  ; (%-?%d+)"))
end
end
end
until data==nil
os.remove(Y .. ".lasm")
XEY=gg.alert("字符串已解密！\n\n点击导出到:"..TC[1]..'字符串'.."   查看","导出")
if XEY == 1 then
io.open(TC[1].."字符串","w"):write(table.concat(hans,",\n").."\n\n--雪糕字符串反汇编解密"):close()
gg.alert("字符串解密文件已生成！","")
end
end
SST()