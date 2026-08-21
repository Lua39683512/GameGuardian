local sfmat = math.random(94946, 67799740)
function pop()
local re=nil
local outstr="";
for i=2,#dates do
if dates[i]~=dates[1] then
outstr=outstr..string.char(dates[i]);
end
end
if outstr~="" then
outstr='"'..outstr..'"'
local blname=("s"..long):gsub(";",""):gsub(string.char(10),"")
longlongstr=longlongstr.."\nlocal "..blname.."=function() "..DT().." local Key="..outstr.." return Key end "
re=blname.."()"
long=long+1
end
return re
end
function push(bits)
  local out=nil;
  if dates==nil then
    instdates=bits;
    datesdi=1;
    dates={};
  end
  dates[datesdi]=bits;
  if datesdi~=1 and bits==instdates then
    out=pop();
    if out==nil then
      out=string.char(instdates)..string.char(instdates)
    end
    dates=nil;
  end
  datesdi=datesdi+1;
  return out
end
function byte(initstr)
  strsprit=initstr
  local strsprit2="";
  long=1;
  longlongstr=" ";
  len=string.len(strsprit);
  for i=1,len do
    local bit=string.byte(strsprit,i);
    if bit==34 or bit==39 or dates~=nil then
      local codestr=push(bit);
      if codestr~=nil then
        strsprit2=strsprit2..codestr;
      end
     else
      strsprit2=strsprit2..string.char(bit);
    end
  end
  return longlongstr.."\n"..strsprit2
end
function _UPVALUE1_ (str)
return str:gsub('.', function (c)
return string.format('%02x ', (string.byte(c)-sfmat)%256)
end):gsub(" $", "", 1)
end
function encodegg(A0_67)
return 'gg[AM(ELGG_Sc(ELGG_UTP({' .. table.concat({_UPVALUE1_(A0_67):byte(1, -1)}, ",") .. '})))]('
end
arb=("  "):rep(80)
arr=("\\x000Mask_"):rep(300)
function random() bn={"A_","B_","C","D_","E_","F","G","H","J","K_","L","M_","N","O_","P","Q_","R","S__","T","U","V","W","X__","Y__","Z_"} x=math.random
local e,f,g,h,i,a,b=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]..bn[a]..bn[b]
return a,b,c,d,e end
function DT()
s=random()
local mahx=math.random(400,800)
local thhx=mahx+math.random(20,50)
local gotos=("goto YIOo "):rep(math.random(5,13))
hx=" local maskoo=skh"..arr.."skh if nil then end if (("..mahx..")<(-"..thhx..")) then end if(nil)then if(true)then else "..gotos.." end if(nil)then else "..gotos.." end ::YIOo:: end local maskoo=skh"..arr.."skh "
ss="   ::"..s..":: if(nil)then local maskoo=skh"..arr.."skh goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if(nil)then goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if true then  else end  if true then  else end if true then  else end  if true then  else end local maskoo=skh"..arr.."skh  "
return [[if(nil)then
if(true)then
else
goto GAGS_LUA0
end
if(nil)then
else
goto GAGS_LUA0
end
::GAGS_LUA0::
end
]]..ss.."\n"..hx.."local maskoo=skh"..arr.."skh "
end
function Doubt_mix(filex)
function numstr(num)
str=string.gsub(num,"1","<")
str=string.gsub(str,"2",">")
str=string.gsub(str,"3","/")
str=string.gsub(str,"4",":")
str=string.gsub(str,"5","GAGS_LUA")
str=string.gsub(str,"6","GAgS_LUA")
str=string.gsub(str,"7","GaGS_LUA")
str=string.gsub(str,"8","&")
str=string.gsub(str,"9","|")
str=string.gsub(str,"0",arb)
str=string.gsub(str,"-","GAGs_LUA")
return str
end
file = io.open(filex,"r")
tmpnum=0
code = file:read("*a")
file:close()
syh='"'  dyh="'" ein='""' oin="''"
code=code:gsub(dyh,syh)
code=code:gsub("\\n","\n")
code=code:gsub(ein,oin)
p = syh .. "(.-)" .. syh
sf=' function strnum(str) '..DT()..' num=string.gsub(str,"<","1") num=string.gsub(num,">","2") num=string.gsub(num,"/","3") num=string.gsub(num,":","4") num=string.gsub(num,"GAGS_LUA","5") num=string.gsub(num,"GAgS_LUA","6") num=string.gsub(num,"GaGS_LUA","7") num=string.gsub(num,"&","8") num=string.gsub(num,"|","9") num=string.gsub(num,"'..arb..'","0") num=string.gsub(num,"GAGs_LUA","-") return tonumber(num) end '
XXLS={}
name="ELGG_MASK_MainTable"..math.random(100,100000)
tnum=0
cnt=0
for i in code:gmatch(p) do
print("整理:"..i.."\n")
sjm=math.random(1000,1000000)
if math.random(0,1)==1 then sjjm="+" else sjjm="-" end
QQH={}
string.gsub(tostring(table.concat({i:byte(0, -1)},",")), "[^,]+", function(XXL)
if sjjm=="+" then XXL=XXL-sjm else XXL=XXL+sjm end
table.insert(QQH, XXL) end)
sj1=math.random(5117,74517)
sj2=math.random(5147,78485)
sj3=math.random(1145,7525)
sj4=math.random(54,7750)
sj5=math.random(511,75141)
sj6=math.random(5855,7158)
tmpnum=tmpnum+math.random(5,75)
ok="ELGG_MASK"..tmpnum
QQH[1]=QQH[1]+sj1
if QQH[2]~=nil then
QQH[2]=QQH[2]+sj2
end
if QQH[4]~=nil then
QQH[4]=QQH[4]+sj3
end
if QQH[6]~=nil then
QQH[6]=QQH[6]+sj4
end
if QQH[7]~=nil then
QQH[7]=QQH[7]+sj5
end
if QQH[8]~=nil then
QQH[8]=QQH[8]+sj6
end
ttbl={}
for i,v in pairs(QQH) do
tnum=tnum+1
XXLS[tnum]=numstr(v)
ttbl[tnum]=numstr(v)
end
cntt=cnt
for i,v in pairs(ttbl) do
cnt=cnt+1
end
tbn={}
ttnum=0
while true do
ttnum=ttnum+1
cntt=cntt+1
tbn[ttnum]=name.."["..cntt.."]"
if cntt==cnt then break end
end
i=ok.."({"..table.concat(tbn,",").."})"
sf1=" local "..ok.."=function(code) "..DT().." for i,v in ELGG_pairs(code) do code[i]=strnum(v) end if(nil)then if(true)then else goto sff1 end if(nil)then else goto sff1 end if(nil)then else goto sff1 end ::sff1:: end local res='' while true do local s=0 for i in ELGG_ipairs(code)do if(nil)then if(true)then else goto sff2 end if(nil)then else goto sff2 end if(nil)then else goto sff2 end ::sff2:: end s=s+1 if s==1 then codeovo=codeovo-sf1 end if(nil)then if(true)then else goto sff3 end if(nil)then else goto sff3 end if(nil)then else goto sff3 end ::sff3:: end if s==2 then codeovo=codeovo-sf2 end if(nil)then if(true)then else goto sff4 end if(nil)then else goto sff4 end if(nil)then else goto sff4 end ::sff4:: end if s==3 then codeovo=codeovo-sf3 end if(nil)then if(true)then else goto sff5 end if(nil)then else goto sff5 end if(nil)then else goto sff5 end ::sff5:: end if s==4 then codeovo=codeovo-sf4 end if(nil)then if(true)then else goto sff6 end if(nil)then else goto sff6 end if(nil)then else goto sff6 end ::sff6:: end if s==5 then codeovo=codeovo-sf5 end if(nil)then if(true)then else goto sff7 end if(nil)then else goto sff7 end if(nil)then else goto sff7 end ::sff7:: end if s==6 then codeovo=codeovo-sf6 end if(nil)then if(true)then else goto sff8 end if(nil)then else goto sff8 end if(nil)then else goto sff8 end ::sff8:: end if s==7 then codeovo=codeovo-sf7 end if(nil)then if(true)then else goto sff9 end if(nil)then else goto sff9 end if(nil)then else goto sff9 end ::sff9:: end if s==8 then codeovo=codeovo-sf8 end if(nil)then if(true)then else goto sff10 end if(nil)then else goto sff10 end if(nil)then else goto sff10 end ::sff10:: end res=res..ELGG_Sc(codexxnb) if(nil)then if(true)then else goto sff11 end if(nil)then else goto sff11 end if(nil)then else goto sff11 end ::sff11:: end end return res end "..DT().." end \n"
sf1=sf1:gsub("ovo","[i]")
sf1=sf1:gsub("xxnb","[i]"..sjjm..sjm)
sf1=sf1:gsub("sf1",sj1)
sf1=sf1:gsub("sf2",sj2)
sf1=sf1:gsub("sf4",sj3)
sf1=sf1:gsub("sf6",sj4)
sf1=sf1:gsub("sf7",sj5)
sf1=sf1:gsub("sf8",sj6)
sf1=sf1:gsub("sf3","0")
sf1=sf1:gsub("sf5","0")
sf=sf..sf1
code = code:gsub(p, i, 1)
end 
--code=code:gsub("\n"," ")
XXLSS="{"..tostring(XXLS):gsub('%table(.-%)',''):sub(6,-1)
--XXLSS=XXLSS:gsub("\n","")
--XXLSS=XXLSS:gsub("	","")
w=0
sf=sf..DT().." local "..name.."="..XXLSS.." "
gg.alert("整理完毕！")
return sf,code
end
function tihuan(wenjian)
local echo=""
files1=io.open(wenjian) repeat text=files1:read('*l')
if text~=nil then
echo=echo..text.."\n"
if string.find(text, "function", 1)~=nil and returns==nil then echo=echo..DT().."\n" end
end until text==nil
gg.toast(#echo)
return echo
end
function M_mix(x)
local k='"'
local ii=k.."(.-)"..k
for i in x:gmatch(ii) do
print("处理了:"..i.."\n")
 i2 = "{" .. table.concat({i:byte(0, -1)}, ",") .. "}"
pcall(load("hx1="..i2))
hxsj=sj(#hx1)
sjhx=hxsj
hxsj = "{" .. table.concat({hxsj:byte(0, -1)}, ",") .. "}"
pcall(load("hx2="..hxsj))
 zhsf={}
for v=1,#hx1 do
 zhsf[v]=hx1[v]+hx2[v]
end
iil=""
for v=1,# zhsf do
b=math.random(1008,99949)
 zhsf2= zhsf[v]+b
iil=iil.."{".. zhsf2..","..b.."},"
end
x=x:gsub(ii,"G3({"..iil.."},'"..sjhx.."')",1)
end
return x 
end
function sj(a)
lmn={"�","�"}
local w=""
for i=1,a do
local d=math.random(1,2)
w=w..lmn[d]
end
return w
end
SD=gg.prompt({"请选择脚本"},{gg.getFile(),"",""},{"file","text","text"})[1]
Outfile=SD..".FG.lua"
--ym=io.open(SD,"r"):read("*a")
ym='print("Powered by MASK6.0 ©\nVG TEAM\n2020")'..io.open(SD,"r"):read("*a")
ym = ym:gsub("gg%.(%a+)%(", encodegg)
syh='"'  dyh="'"
ym=ym:gsub(dyh,syh)
--ym=ym:gsub("\\n","\n")
ym=byte(ym)
ym= M_mix(ym)
ym='\nlocal function AM(Text)\nText = Text:gsub([[ ]],"")\nreturn (Text:gsub("..",function (Text)\nreturn ELGG_Sc((tonumber(Text,16)+hxsf)%256)\nend))\nend\n'..'local G3=function(Main,Key)\ncalcode={}\nKey = "{" .. table.concat({Key:byte(0, -1)}, ",") .. "}"\nload("key="..Key)()\nfor i=1,#Main do\ncalcode[i]=ELGG_Sc(Main[i][1]-Main[i][2]-key[i])\nend\nreturn table.concat(calcode,"")end\n'..ym
io.open(Outfile,"w"):write(ym)
ab=tihuan(Outfile)
s=0
for i in ab:gmatch("function ([%w_]+)%(%)") do
s=s+1
ab=ab:gsub("function "..i.."%(%)","::"..i.."::\nif tt"..s.."==1 then\ntt"..s.."=0")
ab=ab:gsub(i.."%(%)","tt"..s.."=1\ngoto "..i)
end
io.open(Outfile,"w"):write(ab)
lmp,Mainn=Doubt_mix(Outfile)
ymm=[==[
local MASK=[=[ 

------------------------------------------------------
##『  M A S K  \  U_S_T  \  A F  』Powered ##

最后一次更新的加密 THE LAST ENC
------------------------------------------------------
鸣谢: 木酥 逸辰

]=]
if(nil)then
if(true)then
else
goto GAGS_LUA0
end
if(nil)then
else
goto GAGS_LUA0
end
::GAGS_LUA0::
end
local ELGG_pairs, ELGG_ipairs=pairs,ipairs
]==].."\nlocal ELGG_Sc,ELGG_UTP=string.char,table.unpack\nlocal hxsf=" .. sfmat .."\nMASK=(function() local "..lmp..Mainn.." end)()"
ymm=ymm:gsub("skh", '"')
function fh()
bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
fhh=bool.."\n\nSETTABUP u0 \"            "..arr.."    [ 🇲 🇦 🇸 🇰 ]                 ️"..("\x00"):rep(1600).."\" 1"
return fhh
end
local sb = gg.alert("加固？\n会自动编译脚本！", "注入", "离线")
    if sb == 1 then
      chunk = string.dump(load(ymm), true)
res = gg.internal2(load(chunk), Outfile)
file=io.open(Outfile,"r"):read("*a")
file=file:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh() end)
ymm = string.dump(load(file),true).."\n₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨₨\n LAST ENC BY AF \n最终版本 感谢一路走来的朋友们"
else
end
io.open(Outfile,'w'):write(ymm)
--io.open(Outfile,"w"):write(string.dump(load(ym), true,true)):close()
--io.open(Outfile,"w"):write(ym):close()