

mu4=gg.prompt({"选择转换dump文件"},{gg.getFile()},{"file"})[1]
file=io.open(mu4,"r")
line1=""
for line in file:lines() do
re=string.find(line,"SETTABUP")
if re~=nil then
line1=line1.."\nprint("..line:match("null \"(.+)\" -")..")"
else
if line~=nil then
else file:close() break
end
end
end
--print(line1)

print(line1)