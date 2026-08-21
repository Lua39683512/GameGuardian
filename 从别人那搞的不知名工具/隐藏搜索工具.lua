--已经泛滥二改随意
dye=gg.prompt({'选择需要隐藏的脚本'},{'/sdcard/'},{'file'})
file9=io.open(dye[1].."a",'w')
file9:write()
file9:close()
  local filel = io.open(dye[1], "r") assert(filel) 
repeat
local data = filel:read("*l")
if data~=nil then
local baohan = string.find(data, "gg.clearResults")
local bh1 = string.find(data, "gg.setRanges")
local bh2 = string.find(data, "gg.searchNumber")
local bh3 = string.find(data, "gg.getResults")
local bh4 = string.find(data, "gg.editAll")
local bh5 = string.find(data, "gg.toast")
if type(baohan) =='number' or  type(bh1) =='number'  or  type(bh2) =='number'  or  type(bh3) =='number' or type(bh4) =='number'  or type(bh5) =='number'  then 
pd=nil
local da={}
local result = '666'
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
da[i]=tonumber(b)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end
local NR='load(string.char('..result..'))()'  
file = io.open(dye[1].."a", 'a+')
file:write(NR)
file:write("\n")
file:close()
else
file = io.open(dye[1]..'a', 'a+')
file:write(data)
file:write("\n")
file:close()
end
end
until data == nil
print("脚本保存在\n"..dye[1].."a")