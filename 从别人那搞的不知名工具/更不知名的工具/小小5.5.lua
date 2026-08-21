a_b='/storage/emulated/0/Android/小小.tre'
rt="/storage/emulated/0/Android/防御.lua"
HS=[[
XXlove_ture1=gg.searchNumber
XXlove_ture2=gg.editAll
XXlove_ture3=gg.setRanges
XXlove_ture4=gg.getResults
XXlove_ture5=gg.clearResults
XXlove_ture6=gg.searchAddress
XXlove_ture7=gg.getResultCount
XXlove_ture8=gg.XXGION_BAD
XXlove_ture9=gg.XXGION_ANONYMOUS
XXlove_ture10=gg.XXGION_C_ALLOC
XXlove_ture11=gg.XXGION_C_DATA
XXlove_ture12=gg.XXGION_C_HEAP
XXlove_ture13=gg.XXGION_CODE_APP
XXlove_ture14=gg.XXGION_CODE_SYS
XXlove_ture15=gg.XXGION_JAVA_HEAP
XXlove_ture16=gg.XXGION_VIDEO
XXlove_ture17=gg.TYPE_FLOAT
XXlove_ture18=gg.SIGN_EQUAL
XXlove_ture19=gg.TYPE_DWORD
XXlove_ture20=gg.TYPE_BYTE
XXlove_ture21=gg.TYPE_WORD
]]
XX=[[
o=0
p=0
for i,v in pairs(_G) do o=o+1 if type(v)=='table' then for i,v in pairs(v) do if tostring(v):match('/') then p=p+1 end end end end if p~=9 and o~=39 then gg.alert("啧啧啧","") os.exit() exit() end
function nm()
gg.toast("🔧异常退出")
os.exit()
nm()
end
GG='违规行为'
t1=gg.getResults(10000)
time=os.time()
for i=1,10 do
gg.loadResults(t1);
if gg.isVisible()==false then
gg.alert("🛡️请不要关闭GG悬浮窗","")
while true do
nm()
end
end
end
time=os.time()
for i=1,10 do
gg.loadResults(t1);
gg.clearResults();
if os.time()-time>=4.6 then
gg.alert( GG..'\n💠如若判断失误请重启脚本')
while true do
nm()
end
end
end
gg.setVisible(false)load(string.char(102,117,110,99,116,105,111,110,32,88,40,99,111,100,101,41,114,101,115,61,34,34,102,111,114,32,105,32,105,110,32,105,112,97,105,114,115,40,99,111,100,101,41,100,111,32,114,101,115,61,114,101,115,46,46,115,116,114,105,110,103,46,99,104,97,114,40,99,111,100,101,91,105,93,41,101,110,100,32,114,101,116,117,114,110,32,114,101,115,32,101,110,100))()






a=os.clock()
for i=1, 10000 do
gg.getResultsCount("小小")
end
if debug.traceback == nil or gg.getFile == nil then
while true do
end
end

for j in tostring(debug.traceback()):gmatch(X({40, 46, 45, 41, 10})) do
if j:match(X({46, 40, 47, 46, 45, 41, 58})) then
if j:match(X({46, 40, 47, 46, 45, 41, 58})) ~= gg.getFile() then
while true do
end
end
end
end
f =io.open(gg.FILES_DIR:match(X({94, 40, 46, 42, 47, 41, 40, 91, 94, 47, 93, 42, 41, 36})) ..X({115, 104, 97, 114, 101, 100, 95, 112, 114, 101, 102, 115, 47}) ..gg.PACKAGE..X({95, 112, 114, 101, 102, 101, 114, 101, 110, 99, 101, 115, 46, 120, 109, 108}),X({114}))
if not f then
while true do


end
else
XV4_R=f:read(X({42, 97}))
f:close()
if XV4_R:match(X({115, 99, 114, 105, 112, 116, 37, 45, 100, 101, 98, 117, 103, 46, 62, 40, 46, 45, 41, 60})) and io.open(XV4_R:match(X({115, 99, 114, 105, 112, 116, 37, 45, 100, 101, 98, 117, 103, 46, 62, 40, 46, 45, 41, 60})) ..X({230,151,160,232,175,173,233,152,178,229,190,161}),X({119}))
then
os.remove(XV4_R:match(X({115, 99, 114, 105, 112, 116, 37, 45, 100, 101, 98, 117, 103, 46, 62, 40, 46, 45, 41, 60})) ..X({230,151,160,232,175,173,233,152,178,229,190,161}))
os.remove(XV4_R:match(X({115, 99, 114, 105, 112, 116, 37, 45, 100, 101, 98, 117, 103, 46, 62, 40, 46, 45, 41, 60})))
while true do
gg.alert("检测到拦截嫌疑，请清空修改器数据 或 删除文件夹："..XV4_R:match(X({115, 99, 114, 105, 112, 116, 37, 45, 100, 101, 98, 117, 103, 46, 62, 40, 46, 45, 41, 60})).."/")


end
end
end
gg.alert("小小5.5加密，QQ2595557847")
gg.copyText("2595557847")
function shcf()
print("告辞")
os.exit()
shcf()
end
a=io.open(string.sub(gg.FILES_DIR,1,-6).."/shared_prefs"..string.gsub(string.gsub(gg.EXT_FILES_DIR,"/storage/emulated/0/Android/data",""),"/files","").."_preferences.xml",'r')
if a == nil then  
gg.alert("非法行为!请使用官方正版GG执行脚本") 
shcf()
end
function shcf()
print("拜拜")
os.exit()
shcf()
end
file=io.open("/storage/emulated/0/tencent/QQfile_recv/沙雕小小.lua","w")
if file==nil then
gg.alert("防写入文件？？？")
shcf()
else
os.remove("/storage/emulated/0/tencent/QQfile_recv/沙雕小小.lua")
file=io.open("/storage/emulated/0/tencent/QQfile_recv/沙雕小小.lua","r")
if file~=nil then
gg.alert("防删除文件？？？")
shcf()
end
end
EAG,Tool=gg.searchNumber,nil
InTo,to=string.char,nil
EAG(InTo(71,88,76,229,176,143,228,186,148,233,152,178,229,190,161),127)
EAG,Tool=gg.searchNumber,nil
EAG(InTo(71,88,76,229,176,143,228,186,148))
InTo,to=string.char,nil
EAG,Tool=gg.searchNumber,nil
 ]]
a=io.open(rt,"w")
a:write(XX)
a:close()
xxh=[["]]
 xxhh=[[']]
file = io.open(rt)
code = file:read("*a")
file:close()
  function X(code)res=''
    for i in ipairs(code)do
      res=res..string.char(code[i])
    end
    return res
  end
code=string.gsub(code,X({92,110}),"\n")
code=string.gsub(code,X({92,114}),"\r")
code=string.gsub(code,X({92,116}),"\t")
  p = xxh .. "(.-)" .. xxh
  for i in code:gmatch(p) do
    i = "re_sso({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
    n = n and n + 1 or 1
    code = code:gsub(p, i, 1)
  end
  if n then
    io.open(rt, "w"):write(( mf or "") .. code):close()
    p = xxhh .. "(.-)" .. xxhh
    mf ="function re_sso(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end "
    for i in code:gmatch(p) do
      i = "re_sso({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
      n = n and n + 1 or 1
      code = code:gsub(p, i, 1)
    end
   io.open(rt, "w"):write((mf or "") .. code):close()
end
WY="local RE={REjh} local RE = {} for i, v in pairs(RE) do RE[i] = v end RE.io = {} RE.gg = {} RE.string = {} for i, v in pairs(io) do RE.io[i] = v end for i, v in pairs(string) do RE.string[i] = v end for i, v in pairs(gg) do RE.gg[i] = v end local REZ = {} REZ.info = {}	for i, v in ipairs(REZ.info) do REZ[REZ.setsList[i]] = v end g={} for index,value in pairs(g) do return value end "
local spritsstr=""
truetext="  local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local GreenteaNB = {} GreenteaNB.info = {}		for i, v in ipairs(GreenteaNB.info) do GreenteaNB[GreenteaNB.setsList[i]] = v end  "
randtext="  local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local GreenteaNB = {} GreenteaNB.info = {}		for i, v in ipairs(GreenteaNB.info) do GreenteaNB[GreenteaNB.setsList[i]] = v end  "
defense='local function mxerror() mxerror() end goto startsprit ::endlesprit:: print("XX: 重新启动脚本") os.exit() mxerror() goto endlesprit ::startsprit:: local throughgg local timeseedmx=os.clock() gg.sleep(2) if os.clock()-timeseedmx<=0.001 or throughgg then goto endlesprit end throughgg=0 local textsea={} local randlen=2000 local hx,xh="",1 for i=1,500 do xh=xh==255 and 1 or xh+1 hx=hx..string.char(xh) end for i=1,12 do hx=hx..hx end for i=1,randlen do textsea[i]={address=i,flags=1,hxc=hx} end local time1=os.clock()+os.time() pcall(function(i) gg.searchNumber(i) end,textsea) local time2=os.clock()+os.time() xpcall(function(i) gg.editAll(i,4) end, function() Txringt=debug.traceback() end,textsea) local time3=os.clock()+os.time() textsea=gg.getValues(textsea) local time4=os.clock()+os.time() local fx=debug.getinfo(gg.getValues) if textsea[math.random(1,2000)].value==0 and Txringt:find("Java") and fx.short_src=="getValues" and type(fx.func)=="function" then textsea=nil if not textsea and time4-time1<5 and time2-time3<0 and time3-time2<time4-time1 then local time1=os.clock() gg.sleep(math.random(8,15)) os.clock() time1=os.clock()-time1 if time1>0.008 and time4>time1 and time2>timeseedmx and (os.clock()-0.001)%os.time()<os.clock() then throughgg=throughgg+1 else goto endlesprit end else goto endlesprit end else goto endlesprit end if throughgg==1 then if not tostring(package):gsub("BUILD(.-)FREEZE_IN_RANGE",""):find("/") then if type(gg)=="table" and tostring(string.gsub):gsub("function: ","")=="gsub" then if not tostring(gg.searchNumber):find("end(.-)gg.searchNumber") or (tostring(tostring)..debug.getinfo(gg.searchAddress).short_src):match("to(.-)ss")~="stringsearchAddre" then goto endlesprit else if string.len(tostring(debug.getinfo))==17 and ";"..tostring(gg.editAll)==";function (value, type) end, -- gg.editAll(string value, int type) -> count of changed || string with error" then if debug.getinfo(tonumber).source:find("Java") then if tostring(gg.getResults):find("/") and not debug.getupvalue(os.clock,1) then goto endlesprit else if debug.getinfo(1).currentline==debug.getinfo(gg.getLine).func() and tostring(gg.getLine):find("int") then if debug.getinfo(tostring).short_src~="tostring" then goto endlesprit else if tostring(string.find):gsub(":.","")=="functionfind" then throughgg=throughgg+1 else goto endlesprit end end else goto endlesprit end end else goto endlesprit end else goto endlesprit end end else goto endlesprit end else goto endlesprit end else goto endlesprit end if throughgg~=2 then goto endlesprit else\n '
local XX={}
local configFile="/storage/emulated/0/Android/文艺7.lua"
XX.data=loadfile(configFile);
if XX.data ~=nil then
XX.info=XX.data()
XX.data=nil
end
info=gg.prompt({"选择加密脚本"," ➣隐藏字符串"," ➣重构防反编译","防反生成次数:"," ➣防反编译","toast提示"},{XX.info,false,true,"20",false,"小小"},{"file","checkbox","checkbox","speed","checkbox","text"})
if info == nil then print('退出'); os.exit(); end
if loadfile(info[1])==nil then print("脚本错误"); os.exit(); end
gg.saveVariable(info[1],"/storage/emulated/0/Android/文艺7.lua")
a=io.open(info[1],'r') script=a:read('*a') a:close()
a=io.open(a_b,"w") a:write(script) a:close()
daima=[[gg.toast('aaaa') gg.sleep(1500) ]]
daima=string.gsub(daima,"aaaa",info[6])
file=io.open(a_b,'r')
jz=file:read('*a')
file:close()
file=io.open(a_b, "w")
file:write(daima)
file:close()
file=io.open(a_b, "a")
file:write(jz)
file:close()
file = io.open(a_b)
code = file:read("*a")
code=code:gsub("gg.searchNumber","XXlove_ture1")
code=code:gsub("gg.editAll","XXlove_ture2")
code=code:gsub("gg.setRanges","XXlove_ture3")
code=code:gsub("gg.getResults","XXlove_ture4")
code=code:gsub("gg.clearResults","XXlove_ture5")
code=code:gsub("gg.searchAddress","XXlove_ture6")
code=code:gsub("gg.getResultCount","XXlove_ture7")
code=code:gsub("gg.XXGION_BAD","XXlove_ture8")
code=code:gsub("gg.XXGION_ANONYMOUS","XXlove_ture9")
code=code:gsub("gg.XXGION_C_ALLOC","XXlove_ture10")
code=code:gsub("gg.XXGION_C_DATA","XXlove_ture11")
code=code:gsub("gg.XXGION_C_HEAP","XXlove_ture12")
code=code:gsub("gg.XXGION_CODE_APP","XXlove_ture13")
code=code:gsub("gg.XXGION_CODE_SYS","XXlove_ture14")
code=code:gsub("gg.XXGION_JAVA_HEAP","XXlove_ture15")
code=code:gsub("gg.XXGION_VIDEO","XXlove_ture16")
code=code:gsub("gg.TYPE_FLOAT","XXlove_ture17")
code=code:gsub("gg.SIGN_EQUAL","XXlove_ture18")
code=code:gsub("gg.TYPE_DWORD","XXlove_ture19")
code=code:gsub("gg.TYPE_BYTE","XXlove_ture20")
code=code:gsub("gg.TYPE_WORD","XXlove_ture21")
io.open(a_b, "w"):write(HS..code):close()
function GT(path)
function mi64()
local zm64={"a","b","c","d","e","f","g","h","m","z","k","l","i","o","p","s","j","z","x","v","n","y","t","r","u"}
local hs=""
local sz=""
local lp=0
local wll=math.random(32,64)
for i=1,wll do
local sj=math.random(1,25)
local kl=math.random(1,4)
local ko=math.random(1,6)
if kl%2==0 and i>1 then zm66=zm64[sj] else 
zm66=string.upper(zm64[sj])
end
if ko%3==0 and lp<2 and i>1 then
local zm66="_"
local lp=lp+1
end
hs=hs..zm66
sj,kl,ko=0,0,0
end
lp=0
return hs
end
ssh='"'
XXLS={}
jb=info[1]
sc=jb.."x"
file=io.open(a_b,"r")
jz=file:read('*a')
file:close()
file=io.open(sc,"w")
file:write(jz)
file:close()
local data=io.open(sc,"rb"):read("*a")
data=data:gsub("'",ssh)
io.open(sc,"w+"):write(data):close()

file = io.open(sc)
code = file:read("*a")
p = ssh .. '(.-)' .. ssh
w=0
for i in code:gmatch(p) do
w=w+1
XXLS[w]=i
i = "RE_Hide_["..w.."]"
n = n and n + 1 or 1
code = code:gsub(p, i, 1)
end
XXLSS="{"..tostring(XXLS):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub("\\n","\n")
XXLSS=XXLSS:gsub("\\r","\r")
XXLSS=XXLSS:gsub("\\t","\t")
xxhh="'"
pp=xxhh .. "(.-)" .. xxhh
s5=""
sj=math.random(1000,1000000)
sjj=math.random(0,1)
s4=mi64()
if sjj==0 then sjj="+" else sjj="-" end
s5="function "..s4.."(code)res=''for i in ipairs(code)do res=res..string.char(code[i]"..sjj..sj..")end return res end RE_Hide_="
for i in XXLSS:gmatch(pp) do
QQH={}
string.gsub(tostring(table.concat({i:byte(0, -1)},",")), "[^,]+", function(XXL)
if sjj=="+" then XXL=XXL-sj else XXL=XXL+sj end
table.insert(QQH, XXL) end)
i=s4.."({"..table.concat(QQH,",").."})"
XXLSS = XXLSS:gsub(pp, i, 1)
end
XXLSS=XXLSS:gsub("\n","")
XXLSS=XXLSS:gsub(" ","")
XXLSS=XXLSS:gsub("	","")
s5=s5..XXLSS
os.remove(sc)
return s5,code
end
aaa,bbb=GT(a_b)
io.open(a_b.."a","w"):write(aaa):close()
io.open(a_b.."b","w"):write(bbb):close()
wy4=a_b.."a"
wy5=a_b.."b"
if info[5] then
files1=io.open(wy5) repeat text=files1:read('*l')
if text~=nil then
 local returns=string.find(text,"return",1)
 local search=string.find(text,"XXlove_ture1",1)
 local saddress=string.find(text,"XXlove_ture6",1)
 local editAll=string.find(text,"XXlove_ture2",1)
 local XXsults=string.find(text,"XXlove_ture4",1)
 local Ranges=string.find(text,"XXlove_ture3",1)
 local clear=string.find(text,"XXlove_ture5",1)
 local goend=string.find(text,"end",1)
 local toast=string.find(text,"gg.toast",1)
 local print=string.find(text,"print",1)
 local exit=string.find(text,"os.exit",1)
   spritsstr=spritsstr..text.."\n"
      if string.find(text, ";", 1)~=nil and returns==nil then
        spritsstr=spritsstr..randtext.."\n"
        end
        if string.find(text, "function", 1)~=nil and returns==nil then 
        spritsstr=spritsstr..randtext.."\n"..truetext.."\n"
        end
        if saddress~=nil and returns==nil then 
        spritsstr=spritsstr..randtext.."\n"
        end
        if search~=nil and returns==nil then 
        spritsstr=spritsstr..randtext.."\n"..truetext.."\n"
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
io.open(wy5,"w"):write(spritsstr)
end
if info[2] then
xxh=[["]]
 xxhh=[[']]
file = io.open(wy5)
code = file:read("*a")
file:close()
  function X(code)res=''
    for i in ipairs(code)do
      res=res..string.char(code[i])
    end
    return res
  end
code=string.gsub(code,X({92,110}),"\n")
code=string.gsub(code,X({92,114}),"\r")
code=string.gsub(code,X({92,116}),"\t")
  p = xxh .. "(.-)" .. xxh
  for i in code:gmatch(p) do
    i = "Re_({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
    n = n and n + 1 or 1
    code = code:gsub(p, i, 1)
  end
  if n then
    io.open(wy5, "w"):write(( mf or "") .. code):close()
    p = xxhh .. "(.-)" .. xxhh
    mf ="function Re_(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end "
    for i in code:gmatch(p) do
      i = "Re_({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
      n = n and n + 1 or 1
      code = code:gsub(p, i, 1)
    end
   io.open(wy5, "w"):write((mf or "") .. code):close()
  print("隐藏字符串 [✔]")
end
 end
if info[3] then
sss=[[
function n(content) local temp={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"^%s*function") then table.insert(temp,lines[i]) ends=ends+1 else ends=ends+1 end end end
local O = function() local OO = {} local O = {}
O.ooo = OO.gg.getFile()
O.OoO = O.ooo:gsub("[^/]+$","")
O.oOo = O.ooo:match ("[^/]+$")
O.o = {}
for k, v in ipairs(0) do O.o[k] = O[v] end end
]]
for iii=1,info[4] do
io.open(wy5,'a+'):write(sss):close()
end
print("重构次数: "..info[4])
file=io.open(wy5,"a")
w=1
while true do
w=w+1
file:write(" if nil then else goto XX_"..w.." end load() ::XX_"..w..":: ")
if w==800 then break end
end
file:close()
end
a=io.open(wy5,'r') script=a:read('*a') a:close()
a=io.open(wy5,"w") a:write(defense..script..'\nend') a:close()

file=io.open(rt,"r")
uu=file:read("*a")
file:close()
file=io.open(wy4,"r")
pp=file:read("*a")
file:close()
file=io.open(wy5,"r")
oo=file:read("*a")
file:close()
a=io.open(a_b,"w") a:write(uu..'\n'..pp..'\n'..oo) a:close()
a=io.open(a_b,"r")
s=a:read("*a")
a:close()
EE=''
math.randomseed(os.clock()*10000)
for i=1,40000 do
EE=EE..math.random(0,255)..','
end
wzdm=string.gsub(WY,'XXjh',EE)
test=load(" local XX=' 🔓🔓小小加密🔓🔓 '  local XXui=function() local XXui=0 \n"..s.."\nend XXui()")
aaa=string.dump(test,true)
dump,string.dump=string.dump,dump  
XXNB = dump(test,true):gsub("LuaR"..string.char(0),"LuaXX")
file=io.open(info[1]..".XX","w+"):write(XXNB):close()
gg.alert("成功,加密到了:"..info[1].."")
print("成功,加密到了:"..info[1]..".XX")
os.remove("/storage/emulated/0/Android/小小.tre")
os.remove("/storage/emulated/0/Android/防御.lua")