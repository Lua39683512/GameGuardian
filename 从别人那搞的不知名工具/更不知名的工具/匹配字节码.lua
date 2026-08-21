YX=gg.prompt({"选择文件"},{gg.getFile()},{"file"})
file=io.open(YX[1],"r")
dump={}
dump[1]="111111111"
d=1
for line in file:lines() do
wu=string.find(line,"GETTABUP")
if wu~=nil and line:match("; (.+)")~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
sb=string.find(line,"NEWTABLE")
if sb~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
sb=string.find(line,"SETLIST")
if sb~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
re=string.find(line,"LOADK")
if re~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
re=string.find(line,"SETTABLE")
if re~=nil and line:match("; (.+)")~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
re=string.find(line,"GETTABLE")
if re~=nil and line:match("; (.+)")~=nil then 
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
re=string.find(line,"SETTABUP")
if re~=nil and line:match("; (.+)")~=nil then
d=d+1
dump[d]=line:match("(.+)%[%-%]")
if (dump[d])-(dump[d-1])==1 then
print(dump[d-1].."-"..dump[d])
else

end
end
end