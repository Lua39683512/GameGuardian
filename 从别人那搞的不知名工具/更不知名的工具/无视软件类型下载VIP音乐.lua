local g = {}
g.last = gg.getFile()
g.info = nil
g.config = '/storage/emulated/0/Android/调用.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
g.info = g.data()
g.data = nil
end
if g.info == nil then
g.info = {g.last}
end

g.info = gg.prompt({"❤选择脚本❤"}, g.info, {"file"})
--[[
if g.info~=true then 
gg.alert("请选择脚本")
os.exit()
end
]]
if g.info then
gg.saveVariable(g.info, g.config)
end
file=io.open(g.info[1],"r"):read("*a")
io.open("转换"..".mp3", 'w+'):write(file)




