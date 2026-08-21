local Eoe={}
Eoe.last=gg.getFile()
Eoe.info=nil
Eoe.config=gg.EXT_FILES_DIR:gsub("%lua$", "").."/Eoe.1cfg"
Eoe.data=loadfile(Eoe.config)
if Eoe.data ~= nil then;
	Eoe.info=Eoe.data()
	Eoe.data=nil
end
if Eoe.info == nil then
	Eoe.info={"11 27 00 00"}
end

yc=gg.prompt({"请输入刷常量头字节\n[分割用空格 禁止出现0x]","16进制","10进制"}, Eoe.info, {"text","checkbox","checkbox"})
if yc==nil then
    os.exit(print("未选择"))
end

gg.saveVariable(yc, Eoe.config)

local Decisys
if yc[2] then
    Decisys=16
else
    Decisys=10
end
local Ty={}
local num=0
for i in yc[1]:gmatch("[A-Za-z0-9]+") do
    Ty[#Ty+1]=i
end
if tonumber(Ty[4],Decisys)~=0 then
    num=num+tonumber(Ty[4],Decisys)*256*256*256
end
if tonumber(Ty[3],Decisys)~=0 then
    num=num+tonumber(Ty[3],Decisys)*256*256
end
if tonumber(Ty[2],Decisys)~=0 then
    num=num+tonumber(Ty[2],Decisys)*256
end
num=num+tonumber(Ty[1],Decisys)-1

print("gsub(string.char(0x04,0x"..Ty[1]..",0x"..Ty[2]..",0x"..Ty[3]..",0x"..Ty[4]..")..(\".\"):rep("..num.."),string.char(04,01,00,00,00))")