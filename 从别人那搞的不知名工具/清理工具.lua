
LSQ=gg.prompt({
"❤by——鹿十七❤\n原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632"
},{
gg.getFile()
},{
"file"
})

if not LSQ then
return print("未选择脚本")
end

line=io.open(LSQ[1],"r"):read("*a")

if string.byte(string.sub(line, 1, 1)) == 59 then 
else
gg.alert("该脚本不是lasm编译的")
os.exit()
end



Q=line:gsub('[^\n]*LOADNIL %w+..%w+%s+TEST %w+[^\n]*',"")
--Q=Q:gsub("LOADNIL %w+%d+%.%.%w+%d+","")--清理无庸指令
Q=Q:gsub('[^\n]*EQ %w+ %w+ nil',"")
Q=Q:gsub("[^\n]*; garbage[^\n]*", "")
Q=Q:gsub("[^\n]*JMP :goto_[^\n]*; %+0 ↓[^\n]*", "")
io.open(LSQ[1]..".lasm", "w"):write(Q)