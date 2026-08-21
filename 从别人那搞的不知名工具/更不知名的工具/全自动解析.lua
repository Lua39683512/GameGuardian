function Decryption(DZSH,Cysh)
  return (Cysh:gsub('..', function (DZSH)
    return string.char((tonumber(DZSH,16))%256)
  end))
end
path=gg.prompt({"选择文件"},{gg.getFile()},{"file"})
con=io.open(path[1],"r")
cont=io.open(path[1],"r")
c=cont:read("*a")
file=io.open(path[1].."-恶魔解.lua","w")
file:write("")
file:close()
i=0 host={}
while true do
d=con:read("*l")
if d==nil then break end
i=i+1
host[i]=d
end
--print(host)
for k,v in pairs(host) do
cz1=string.find(v,"ovo_sh%(nf")
if cz1 ~= nil then
nr=v:match('ovo_sh%(nf,%s"(.-)"%)')
jie=Decryption('DZSH',nr)
q=v:match("(.+)ovo_sh")
if q==nil then q="" end
hou=v:match('"%)(.+)')
if hou==nil then hou="" end
xr=q..'"'..jie..'"'..hou
file=io.open(path[1].."-恶魔解.lua","a+")
file:write(xr)
file:write("\n")
file:close()
else
file=io.open(path[1].."-恶魔解.lua","a+")
file:write(v)
file:write("\n")
file:close()
end
end
w=io.open(path[1].."-恶魔解.lua","r")
nr=w:read("*a")
nr=string.gsub(nr,"CY_","gg.")
file=io.open(path[1].."-恶魔解.lua","w")
file:write(nr)
file:close()