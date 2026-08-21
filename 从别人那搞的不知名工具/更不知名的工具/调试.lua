lsq=gg.prompt({"选择文件"},{gg.getFile()},{"file"})

if lsq ==nil then 
os.exit() 
else
xx=loadfile(lsq[1])

local TSignore="char"
local str = tostring

list={
["io"]=io,
["os"]=os,
["table"]=table,
["string"]=string,
["debug"]=debug,
["gg"]=gg
}

for a,b in pairs(list) do

for k,v in pairs(b) do

local orig=b[k]
hook=1
local hook=function(...)
local arg={...}
local result=orig(...)


if #str(arg)>3000 then 
arg={} 
end

if #str(result)>3000 then 
result="" 
end


if TSignore:match(k)==nil then
local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"
gg.alert(dy)
end
return orig(...)
end
b[k]=hook
end
end
end
xx()