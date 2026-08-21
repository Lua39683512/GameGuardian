local Eoe={}
Eoe.last=gg.getFile()
Eoe.info=nil
Eoe.config=gg.EXT_FILES_DIR:gsub("%lua$", "").."/Eoe.cfg3"
Eoe.data=loadfile(Eoe.config)
if Eoe.data ~= nil then;
	Eoe.info=Eoe.data()
	Eoe.data=nil
end
if Eoe.info == nil then
	Eoe.info={Eoe.last,"",Eoe.last,""}
end

yc=gg.prompt({"请选择中转1文件：","key1[1000+]","请选择中转2文件：","key2[3000+]"}, Eoe.info, {"file","text","file","text"})
if yc==nil then
    os.exit(print("未选择"))
end

gg.saveVariable(yc, Eoe.config)

yx=io.open(yc[1],"r"):read("*a")
nr={}
yx=yx:gsub("[^\n]+",function(s)
    local zl=s:match("%S+")
    if zl=="LOADK" then
        nr[#nr+1]=s:match("LOADK v%d+ (%d+)")
    end
    return s
end)
nr="key1="..yc[2].." key2="..yc[4].."\nLT={"..table.concat(nr,",").."}\n"
io.open("sLKs.lua","w"):write(nr)

yx=io.open(yc[3],"r"):read("*a")
nr={}
sd=1
yx=yx:gsub("[^\n]+",function(s)
    local zl=s:match("%S+")
    if zl=="LOADK" and s:find("\34")==nil then
        nr[#nr+1]=s:match("LOADK v%d+ (%d+)")..","
    elseif zl=="NEWTABLE" then
        sd=sd+1
        nr[#nr+1]="},Yx"..sd.."={"
    end
    return s
end)
sf=[=[
function dec(tab)
    se={}
    for i,k in pairs(tab) do
        nr={}
        for x=1,#k do
            nr[#nr+1]=string.char(LT[k[x]-key2]-key1)
        end
        se[#se+1]=table.concat(nr)
    end
    return se
end
print(dec(LT2))
]=]
nr="LT2={"..table.concat(nr):gsub("},","",1).."}}\n"..sf
io.open("sLKs.lua","a"):write(nr)