EM=gg.prompt({
"选择脚本"},
{[1]="/storage/emulated/0/tencent/QQfile_recv/"},{
"file"
})

local data=io.open(EM[1],"rb"):read("*a")
data=data:gsub("load","print")
-----------load/print可以一建替换改一下即可
io.open(EM[1]..".em.lua","w+"):write(data):close()
print("替换成功\n替换后的文件输出在"..EM[1]..".em.lua")