
menu=gg.prompt({""},{gg.getFile()},{"file"})


file=io.open(menu[1],"r"):read("*a")

zip=string.gsub(file,"\n%s*","\n")
--io.open(menu[1]..".lua", 'w+'):write(zip)
a=io.open(menu[1]..".lua","r"):read("*a")
ip=string.gsub(a,"%-%-[^\n]*","")
io.open(menu[1]..".lua.lua", 'w+'):write(ip)
print("文件在"..menu[1])