
mu=gg.prompt({"选择转换dump文件","选择查看"},{gg.getFile(),true},{"file","checkbox"})
file=io.open(mu[1],"r"):read("*a")

y={}
y1={}
y2={}
y3={}

if not mu then
return print("你未做出选择")
end

for line in file:gmatch("[^\n]*SETTABUP[^\n]*") do
line=line:gsub("%s*%d*%s*%[%-%]%s*","")
y[#line+1]=line
table.insert(y,line)
end

for lin in file:gmatch("[^\n]*GETTABUP[^\n]*") do
lin=lin:gsub("%s*%d*%s*%[%-%]%s*","")
y1[#lin+1]=lin
table.insert(y1,lin)
end

for li in file:gmatch("[^\n]*LOADK[^\n]*") do
li=li:gsub("%s*%d*%s*%[%-%]%s*","")
y2[#li+1]=li
table.insert(y2,li)
end

if mu[2] then
function A()
lsq=gg.choice({
"查看LOADK",
"查看GETTABUP",
"查看SETTABUP",
"导出全部指令",
"退出"
},nil,"总共有"..(#y2+1)+(#y+1)+(#y1+1).."条指令")

if lsq==1 then
gg.choice(y2, "", "共有" .. (#y2+1) .. "条LOADK指令")
end
end
A()

if lsq==2 then
gg.choice(y1, "", "共有" .. (#y1+1) .. "条GETTABUP指令")
end
A()

if lsq==3 then
gg.choice(y, "", "共有" .. (#y+1) .. "条SETTABUP指令")
end
A()

if lsq == 4 then
io.open("获取.lua","w"):write(tostring(y).."\n\n"..tostring(y1).."\n\n"..tostring(y2))
os.exit()
end

if lsq == 5 then
while (true) do
os.exit()
end
end
end