local lsq={}

Y=gg.prompt({
"请输入你要查看行数的文件"
},{
gg.getFile()
},{
"file"
})

if not Y then
return print('请选择文件')
end

file=io.open(Y[1],"r")

for line in file:lines() do
table.insert(lsq,line)
end

if not lsq then
return print('表中的索引为空请再次输入')
end

print("该文件总共有"..#lsq.."行")