F=gg.getFile()
Q=F:gsub("/[^/]+$", "")


A=gg.prompt({
"脚本保存路径",
"外链",
"输出文件名字"
},{
Q,
'',
"云脚本.lua",
},{
"path",
"text",
"text"
})


if A==nil then 
print("未选择脚本")
os.exit()
end


file=io.open(A[3],"w")
file:write(gg.makeRequest(A[2]).content)