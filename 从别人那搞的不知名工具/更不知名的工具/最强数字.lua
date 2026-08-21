KIDAi = gg.prompt({
[1]="选择脚本加密",
[2]="是否同意加密协议"},
 {[1]=gg.getFile(),
[2]=false},
{[1]="file",
[2]="checkbox"})

 WY =[[gg.searchNumber("你没解开")]]
function Encryption(Text)
  return Text:gsub(".", function(c)
    return string.format("%02X", (string.byte(c)) % 256)
  end):gsub(" ", "+")
end
local file = io.open(KIDAi[1], "r")
assert(file)
local data = file:read("*a")
file:close()

zac = Encryption(data)

z={}
for ii=1,#zac do
huangzhiyaoi	= string.sub(zac, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end

zo = table.concat(z, ',')

z={}
for ii=1,# WY do
huangzhiyaoi	= string.sub( WY, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end
zo2 = table.concat(z, ',')
z={}
for ii=1,#zac do
huangzhiyaoi	= string.sub(zac, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end
zo3 = table.concat(z, ',')
z={}
for ii=1,#zac do
huangzhiyaoi	= string.sub(zac, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end
zo4 = table.concat(z, ',')
   decryption = '     gg.alert[[本加密由无名制作]]local KIDAmmm=function() local KIDAEND =0 FGCFYGFDGGD={KIDAAFVGJBG}   EEEEE={KIDAAFVGJBG} SFGGGFF={KIDAAG}  char={} for i=1,#SFGGGFF do  huangzhiyaon=SFGGGFF[i] table.insert(char,string.char(huangzhiyaon-16)) end local jiami=table.concat(char,"")     SDD={XGVXG}  char={} for i=1,#SDD do  huangzhiyaon=SDD[i] table.insert(char,string.char(huangzhiyaon-16)) end local jiami=table.concat(char,"")   char={} for i=1,#FGCFYGFDGGD do   huangzhiyao=FGCFYGFDGGD[i]   table.insert(char,string.char(huangzhiyao-16)) end local jiami=table.concat(char,"") function Zyic(h,Text)\n\n  return (Text:gsub("..", function (h)\n\n    return string.char((tonumber(h,16))%256)\n\n  end))\n\nend local data = Zyic(FGCFYGFDGGD,jiami) if string.find(data,"function") then   char={}   for i=1,#EEEEE do     huangzhiyao=EEEEE[i]     table.insert(char,string.char(huangzhiyao-16))   end   local  WY=table.concat(char,"")     WY =[[gg.searchNumber("你没解开")]]  g={}   for i, v in ipairs(g) do     if ipairs(g) ~= nil then       return i..v     end   end   for iii = 1,20 do     load(load( WY))     end    load(load(data))   os.exit() end char={} for i=1,#EEEEE do   huangzhiyao=EEEEE[i]   table.insert(char,string.char(huangzhiyao-16)) end local  WY=table.concat(char,"") os.exit() for iii = 1,1000 do   load(load( WY)) end function AFVGJBG()   CompilationToolByKIDA={KIDAAFVGJBG}  SDED={XGVXG} char={} for i=1,#SDED do  huangzhiyaon=SDED[i] table.insert(char,string.char(huangzhiyaon-16)) end local jiami=table.concat(char,"")   SSRFGGGFF={KIDAAG}  char={} for i=1,#SSRFGGGFF do  huangzhiyaon=SSRFGGGFF[i] table.insert(char,string.char(huangzhiyaon-16)) end local jiami=table.concat(char,"")     end end   KIDAmmm()  '

wzdm = string.gsub(decryption, "KIDAAFVGJBG", zo)
wzdm2 = string.gsub(wzdm, "KIDAAFVGJBG", zo2)
wzdm3 = string.gsub(wzdm2, "XGVXG", zo3)
wzdm4 = string.gsub(wzdm3, "KIDAAG", zo4)
file = io.open(KIDAi[1].."KIDAS", "w")
file:write(wzdm4)
file:close()

function Encryption(Text)
  return Text:gsub(".", function(c)
    return string.format("%02X", (string.byte(c)) % 256)
  end):gsub(" ", "+")
end
local file = io.open(KIDAi[1].."KIDAS", "r")
assert(file)
local data = file:read("*a")
file:close()

zac = Encryption(data)

z={}
for ii=1,#zac do
huangzhiyaoi	= string.sub(zac, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end

zo = table.concat(z, ',')
decryption = '   FGCFYGFDGGD={KIDAAFVGJBG} char={} for i=1,#FGCFYGFDGGD do   huangzhiyao=FGCFYGFDGGD[i]   table.insert(char,string.char(huangzhiyao-16)) end local  WYlll=table.concat(char,"") function DDFXD(h,Text)    return (Text:gsub("..", function (h)   return string.char((tonumber(h,16))%256)    end))  end local data = DDFXD(FGCFYGFDGGD, WYlll) if string.find(data,"function") then  load(load(data))   os.exit() end'
wzdm = string.gsub(decryption, "KIDAAFVGJBG", zo)
file = io.open(KIDAi[1].."KIDAS", "w")
file:write(wzdm)
file:close()


function Encryption(Text)
  return Text:gsub(".", function(c)
    return string.format("%02X", (string.byte(c)) % 256)
  end):gsub(" ", "+")
end
local file = io.open(KIDAi[1].."KIDAS", "r")
assert(file)
local data = file:read("*a")
file:close()

zac = Encryption(data)

z={}
for ii=1,#zac do
huangzhiyaoi	= string.sub(zac, ii,ii)
huangzhiyao = string.byte(huangzhiyaoi)
table.insert(z, huangzhiyao+16)
end
zo = table.concat(z, ',')
decryption = '   FGCFYGFDGGD={KIDAAFVGJBG} char={} for i=1,#FGCFYGFDGGD do   huangzhiyao=FGCFYGFDGGD[i]   table.insert(char,string.char(huangzhiyao-16)) end local  WYlll=table.concat(char,"") function DDFXD(h,Text)    return (Text:gsub("..", function (h)   return string.char((tonumber(h,16))%256)    end))  end local data = DDFXD(FGCFYGFDGGD, WYlll) if string.find(data,"function") then  load(load(data))   os.exit() end'
wzdm = string.gsub(decryption, "KIDAAFVGJBG", zo)
file = io.open(KIDAi[1].."KIDAS", "w")
file:write(wzdm)
file:close()
print('您的脚本加密成功 脚本会生成在以下目录 '..KIDAi[1]..'KIDAS')
