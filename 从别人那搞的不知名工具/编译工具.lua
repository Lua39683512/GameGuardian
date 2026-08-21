local sin=" if nil then goto s goto s goto s goto s goto s ::s:: end BY__Mask=BY__Mask _=_ if nil then goto s goto s goto s goto s goto s goto s ::s:: end BY__Mask=BY__Mask  "
for i=1,6 do sin=sin..sin..sin end
function dzsh(Text)Text=Text:gsub(" ","") return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))end
function zjm_base(cmz)
  local zjm
  if cmz==1 then
    zjm=string.char(0,math.random(1,3),math.random(0x10,0x14),5)--GETUPVAL
   elseif cmz==2 then
    zjm=string.char(math.random(0,8),0,math.random(0x10,0x20),9)--SETUPVAL
   elseif cmz==3 then
    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0x89,0xBB),8)--SETTABUP
   elseif cmz==4 then
    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xE0,0xFF),0x6)--GETTABUP
   elseif cmz==5 then
    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xB0,0xFF),0x3)--LOADBOOL
   elseif cmz==6 then
    zjm=string.char(math.random(0,4),10,math.random(0,4),0x18)--EQ
   elseif cmz==7 then
    zjm=string.char(math.random(0,4),10,math.random(0,4),0x19)--LT
   elseif cmz==8 then
    zjm=string.char(math.random(5,9),10,math.random(0,4),0x1A)--LE
   elseif cmz==9 then
    zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1B)--TEST
   elseif cmz==10 then
    zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1C)--TESTSET
   elseif cmz==11 then
    zjm=string.char(0,0x80,math.random(0x8,0x20),0x1E)--TAILCALL
   elseif cmz==12 then
    zjm=string.char(0,0x80,math.random(0x8,0x20),0x4)--LOADNIL
   elseif cmz==13 then
    zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0x1)--LOADK
   elseif cmz==14 then
    zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0)--MOVE
   elseif cmz==15 then
    zjm=string.char(math.random(0x8,0x18),0,math.random(0x8,0x18),0x14)--NOT
   elseif cmz==16 then
    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0xB)--NEWTABLE
   elseif cmz==17 then
    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x24)--SETLIST
   elseif cmz==18 then
    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x7)--GETTABLE
   else
    zjm=string.char(math.random(0x8,0x18),math.random(0XEE,0XFF),0,0xA)--SETTABLE
  end
  return zjm
end
function xZiJie(counl)
local zjmre=string.char()
for i=1,counl do zjmre=zjmre..zjm_base(math.random(1,19)) end
return zjmre end
function tempstr(sz,isF)
sz=sz or math.random(8,58) local se=" goto s " local strs=""
for s=1,sz do strs=strs..se end
strs=" if nil then "..strs.." ::s:: end _X=_X "
if isF then strs=strs:gsub("_X=_X","")end return strs end
function dumpplus(loadfun)
local max,min=58,4 local strhx=string.dump(loadfun,true) zjms={}
for s=max,min,-1 do str=string.dump(load(tempstr(s)),true) bytstr=str:sub(34,34+s*4-1) zjms[s]={bytstr,bytstr:sub(0,4)} end
gg.toast("编译中")
for s=max,min,-1 do strhx=strhx:gsub(zjms[s][1],zjms[s][2]..xZiJie(s-1)) end
local str1=dzsh("0080001F0080001F0080001F") local str2=string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F) strhx=strhx:gsub(str1,str2) rxhxe=string.char(27,76,117,97,82,0,0,4,4,4,8,0) rxhxf=string.char(27,76,117,97,82,0,0,0,0,4,4,0) rxass=string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0) rxhxs=string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A) return (strhx:gsub(rxhxe,rxhxf)):gsub(rxass,rxhxs) end
fz=" if true then  else end  if true then  else end " local echo=""
ifile=gg.prompt({[1]="选择文件"},{[1]=gg.getFile()},{[1]="file"})
files1=io.open(ifile[1]) repeat text=files1:read('*l')
if text~=nil then
local returns=string.find(text,"return",1)
local search=string.find(text,"gg.searchNumber",1)
local saddress=string.find(text,"gg.searchAddress",1)
local editAll=string.find(text,"gg.editAll",1)
local Results=string.find(text,"gg.getResults",1)
local Ranges=string.find(text,"gg.setRanges",1)
echo=echo..text.."\n"
if string.find(text, ";", 1)~=nil and returns==nil then echo=echo..sin.."\n" end
if string.find(text, "function", 1)~=nil and returns==nil then echo=echo..sin.."\n" end
if string.find(text, "_UPVALUE0_", 1)~=nil and returns==nil then echo=echo..fz.."\n" end
if saddress~=nil and returns==nil then echo=echo..sin.."\n" end
if search~=nil and returns==nil then echo=echo..sin.."\n" end
if Results~=nil and returns==nil then echo=echo..sin.."\n" end
if Ranges~=nil and returns==nil then echo=echo..sin.."\n" end
if editAll~=nil and returns==nil then echo=echo..sin.."\n" end
end until text==nil
io.open(ifile[1].."a","w"):write(echo)
gg.toast("第一部分完成一共"..#echo.."字节")
xx=loadfile(ifile[1].."a")
if xx then
spritend=dumpplus(xx)
io.open(ifile[1]..'R.lua',"w"):write(spritend)
end
gg.alert('加密完成\n'..#spritend..'字节')
--io.open(file..".luac","w"):write(px)