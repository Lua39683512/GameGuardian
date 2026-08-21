
LSQ=gg.prompt({
"❤by——鹿十七❤"
},{
gg.getFile()
},{
"file"
})

if not LSQ then
return print("未选择脚本")
end

line=io.open(LSQ[1],"r"):read("*a")




Q=line:gsub("%p*%p*function%(%)*","")
Q=Q:gsub("break","")
Q=Q:gsub("until true","")
Q=Q:gsub("repeat","")
Q=Q:gsub("do break end","")
Q=Q:gsub("if function%(%)*","")
Q=Q:gsub("[^\n]*end%)*%(*%)*[^\n]*", "")
Q=Q:gsub("elseif not nil or function%(+%)+","")
Q=Q:gsub("if not nil or function%(%)*","")
Q=Q:gsub("elseif not nil or ","")
Q=Q:gsub("local %w*%d*%_*%d*%p* %w*%d+%_*%d+","")
Q=Q:gsub("if not nil or ","")
Q=Q:gsub("function %w*%d*%_*%d*%(*%)*","")
Q=Q:gsub("\n%s*","\n")
file=io.open(LSQ[1]..".lua","w")
file:write(Q)
print("")
local L0_352, L1_353