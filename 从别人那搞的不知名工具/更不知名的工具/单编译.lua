AA=[[

function XRNB()
if gg.isVisible()==true then else 
XRNB()
end
end
]]
Fy=[[
io.input(gg.getFile())os.remove(gg.getFile())if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "w") os.remove(gg.getFile()) return end
local dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do 
sOaJ[cInW]= dZvT 
end 
local 
dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do 
sOaJ[cInW]=dZvT end 
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do 
pcall(wNjO,sOaJ)
end 
dZvT=nil
]]
YY = gg.prompt({
[1]="选择脚本",
},{
[1]=gg.getFile(),
},{
[1]="file",
})
local spritsstr=""
randtext=" if nil then goto s goto s goto s goto s goto s ::s:: end BY__XR=BY__XR "
randtext=randtext..randtext
files1=io.open(YY[1]) repeat text=files1:read('*l')
if text~=nil then
local returns=string.find(text,"return",1)
local search=string.find(text,"gg.searchNumber",1)
local saddress=string.find(text,"gg.searchAddress",1)
local editAll=string.find(text,"gg.editAll",1)
local Results=string.find(text,"gg.getResults",1)
local Ranges=string.find(text,"gg.setRanges",1)
local clear=string.find(text,"gg.clearResults",1)
local goend=string.find(text,"end",1)
local toast=string.find(text,"gg.toast",1)
local print=string.find(text,"print",1)
local exit=string.find(text,"os.exit",1)
spritsstr=spritsstr..text.."\n"
if string.find(text, ";", 1)~=nil and returns==nil then
spritsstr=spritsstr..randtext.."\n"
end
if string.find(text, "function", 1)~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if saddress~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if search~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if Results~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if Ranges~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if editAll~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if clear~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if goend~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if toast~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if print~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
if exit~=nil and returns==nil then 
spritsstr=spritsstr..randtext.."\n"
end
end
until text==nil
io.open(YY[1].."lua","w"):write(spritsstr)
data=io.open(YY[1].."lua",'r'):read('*a')
local function random()
  bn={"A","B","C","D","E","F","G","H","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
    x=math.random
    local e,f,g,h,i=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
    a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]
   return a,b,c,d,e
end
function searandom(str)
  local dzshsf='function dzsh(x,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end\n'
  local s=''
  local data=str
  local k,kk='"',"'"
  local ii,iii=k.."(.-)"..k,kk.."(.-)"..kk
  for i in data:gmatch(ii) do
    function dzsh(Text)
    return Text:gsub(".", function(c)
    return string.format("%02X",(string.byte(c))%256)
    end):gsub(" ", "+")
  end
   zac = dzsh(i)
   local re=random()
    local s3=math.random(1000,2000)
    local jj=math.random(0,1)
    if jj==0 then jj="+" else jj="-" end
    sf='function '..re..'(s6) char={} for i=1,#s6 do table.insert(char,string.char(s6[i]'..jj..s3..')) end s1=table.concat(char,"") return dzsh(s6,s1) end\n'
    s=s..sf
    z={}
    string.gsub(zac,"[^,]+",function(s2)
       for ii=1,#zac do
          s1=string.sub(zac,ii,ii)
          s2=string.byte(s1)
          if jj=="+" then s2=s2-s3 else s2=s2+s3 end
          table.insert(z,s2) end end)
      i=re.."({"..table.concat(z, ',').."})"
      data = data:gsub(ii, i, 1)
    end
  for i in data:gmatch(iii) do
   function dzsh(Text)
    return Text:gsub(".", function(c)
    return string.format("%02X",(string.byte(c))%256)
    end):gsub(" ", "+")
  end
   zac = dzsh(i)
   local re=random()
    local s3=math.random(1000,2000)
    local jj=math.random(0,1)
    if jj==0 then jj="+" else jj="-" end
    sf='function '..re..'(s6) char={} for i=1,#s6 do table.insert(char,string.char(s6[i]'..jj..s3..')) end s1=table.concat(char,"") return dzsh(s6,s1) end\n'
    s=s..sf
    z={}
    string.gsub(zac,"[^,]+",function(s2)
       for ii=1,#zac do
          s1=string.sub(zac,ii,ii)
          s2=string.byte(s1)
          if jj=="+" then s2=s2-s3 else s2=s2+s3 end
          table.insert(z,s2) end end)
      i=re.."({"..table.concat(z, ',').."})"
      data = data:gsub(iii, i, 1)
    end
    data=dzshsf..s..data
    return data
  end
io.open(YY[1]..'lua',"w"):write(searandom(data)):close()
files1 = io.open(YY[1].."lua")
DATA = files1:read('a')
hxtext =";if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;if nil then goto s goto s goto s goto s goto s goto s ::s:: end OOO=OOO "
hxtext=hxtext:rep(20)
BIG = string.char(0x01, 0x06, 0x03, 0x04, 0x02, 0x05, 0x01, 0x06, 0x03, 0x05)
BIG = BIG:rep(1000)
hxtext2="XR='XRXRXR'"
hxtext2=hxtext2:rep(10000)
DATA=hxtext..hxtext2..Fy..DATA..AA
DATA= " (function(...)" ..DATA.." end )([=[\n\n--我们来自神的世界\n\n一个你永远无法直达的地方\n\n--[[']=]) "
io.open(YY[1].."lua", "w"):write(string.dump(load(DATA),true)):close()


XN1 = math.random(45,63)
XN2 = math.random(XN1,71)
XN3 = math.random(XN2,73)
XN4 = math.random(XN3,75)
XN5 = math.random(XN4,77) 
XN6 = math.random(XN5,79)


XRXR = [[
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
OP[83] 0x0a
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 'XR' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 'XR' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
OP[83] 0x0a
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
OP[48] 0xb6879ff0
MOVE v0 v0
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xb8879ff0
MOVE v0 v0
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
OP[83] 0x0a
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 'XR' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 'XR' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
OP[83] 0x0a
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
]]
XRXR = XRXR:gsub("XN1", "v"..XN1):gsub("XN2", "v"..XN2):gsub("XN3", "v"..XN3):gsub("XN4", "v"..XN4):gsub("XN5", "v"..XN5):gsub("XN6", "v"..XN6)
XRXR = XRXR.."\n"
DATA = string.dump(load(DATA),true,true)
DATA = gg.internal2(load(DATA), YY[1].."lua")
io.input(YY[1].."lua", "r")
DATA = io.read("*a")
DATA = DATA:gsub('RETURN  ; garbage', XRXR)
DATA = DATA:gsub("numparams [^\n]*","numparams 2")
DATA = DATA:gsub("is_vararg [^\n]*","is_vararg 8")
DATA = DATA:gsub("maxstacksize [^\n]*","maxstacksize 99")
DATA = DATA:gsub("linedefined [^\n]*","linedefined 0")
DATA = DATA:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATA = string.gsub(string.dump(load(DATA), true), "LuaR.", "LuaR", 1)
DATA = DATA:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x06,0x06,0x06,0x06))
DATA = DATA:gsub(string.char(4, 7, 0, 0, 0) .. "XRXRXR", string.char(4, 17, 39, 0, 0) .. BIG)
DATA = DATA:gsub(string.char(0x04, 0x03, 0x00, 0x00, 0x00, 0x67, 0x67, 0x00, 0x04, 0x0A, 0x00, 0x00, 0x00, 0x69, 0x73, 0x56, 0x69, 0x73, 0x69, 0x62, 0x6C, 0x65, 0x00 ,0x01, 0x01, 0x04), string.char(0x04, 0x00, 0x00, 0x00, 0x00, 0x00 ,0x01, 0x01, 0x04))

io.open(YY[1].."lua","w"):write(DATA.."\n\n\n\n\n\n"):close()
os.exit()