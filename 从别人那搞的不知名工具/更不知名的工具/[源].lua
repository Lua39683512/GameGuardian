--防第三方调用
fangyu=[=[
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
gg.toast("检测当前运行环境")
gg.sleep(800)
local ELGG = '千衫'
for k, v in ipairs({}) 
do 
if ipairs(k..v) == true then
 break end end
local function ELGGREVO()
for i = 1, 0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end
for i = 1, 0 do i((true | false) - true) end
local ELGG_CHAR = string.char
local ELGG_VERSION = ELGG:match(ELGG_CHAR(37,115,40,118,46,43,41,226,132,162,239,184,143))
local ELGG_PROTECT = ELGG_CHAR(240,159,155,161,239,184,143,32,80,114,111,116,101,99,116,32,98,121,32,69,76,71,71,82,101,118,111,32)..ELGG_VERSION..ELGG_CHAR(226,132,162,239,184,143,32,240,159,155,161,239,184,143,10)
local ELGG_EX = function(msg) if msg then print(msg) end os.exit() while true do _ENV = nil end end
local R_ = function(m, n)
  if not m or not m[10] or not n then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,55,53)) end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..ELGG_CHAR((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local Revo_Y = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,56,52)) end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{24,88,36,62,94,30,31,38,63,80},{99,90,63,47,31,47,45,35,75,71},{14,42,61,65,16,26,39,87,95,68},{14,89,65,26,45,24,85,54,48,14},{18,99,51,45,65,98,12,91,55,40},{61,59,17,60,53,71,22,65,71,84},{72,36,88,41,51,51,42,26,35,94},{40,99,35,89,92,37,19,62,89,32},{92,84,55,96,25,78,42,92,26,71},{38,94,45,36,38,98,90,50,35,83}}
local Revo_A = {5,5,8,4,1,3,1,1,6,5,5,8,7,10,6,2,2,9,1,3}
local Revo_Z = Revo_Y(Revo_L, Revo_A)
if not Revo_Z or not Revo_Z[10] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,52)) end
local R_R = function(c)
   if not c then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,54)) end
   return R_(Revo_Z, c)
end
if not revo or not revo.getPhoneInfo or not revo.goURL or gg.isDebug or not gg.getPathDebug then ELGG_EX() end
local Revo_X = function(d) if d:sub(1,7) == R_R({125,240,97,186})..ELGG_VERSION:sub(2,4) then return end ELGG_EX() end
local env, nx = tostring(_ENV), false
for k in env:gmatch(R_R({83,185,24,116,181})) do
if k:find(R_R({82,234,50})) then
if nx then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) else nx = true end end
if k:find(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) and k:match(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) ~= gg.getFile() then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) end
end env, nx = nil, nil
local ldprint = ELGG_PROTECT..R_R({53,109,133,235,154,195,250,235,119,218,44,143,240,93,139,15,112,223,48,142,255,80,175,235,13,37,139,58,99,154,117,173,201,46,11,143,26,121,146,63,75,0,94,176,203,119,218,44,143,240,93,108})
if not debug.traceback or not tostring(debug.traceback()):find(R_R({142,243,96,185,22})) then ELGG_EX(ldprint) end
for v in tostring(debug.traceback()):gmatch(R_R({83,185,24,116,181})) do
if (not v) or (v:find(R_R({90})) and v:match(R_R({89,179,26,121,216,52,165})) ~= gg.getFile()) then ELGG_EX(ldprint) end
end
if gg.getFile() ~= revo.getPath() or gg.getFile() ~= gg.getPathDebug then ELGG_EX() end
local R_OS = io.input(gg.getFile()):read(R_R({85,236}))
local f = io.open(gg.FILES_DIR:match(R_R({137,179,25,117,218,52,147,38,137,186,72,117,212,47}))..R_R({158,243,76,189,16,111,202,59,157,240,81,190,218})..gg.PACKAGE..R_R({138,251,93,176,17,112,221,48,153,238,80,190,217,131,216,55}), R_R({157}))
if not f then ELGG_EX() else
local R_C = f:read(R_R({85,236}))
f:close()
for k in R_C:gmatch(gg.getTargetPackage()..R_R({80,184,94,174,29,116,219,63,158,173,41,115,217,56,148,7})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
for k in R_C:gmatch(R_R({154,253,100,112,216,59,141,9,83,185,24,116,231})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
end
gg.toast(R_R({27,42,134,236,154,195,250,235,123,253,90,191,16,110,223,235,141,4,11,144,247,82,178,29,144,1,90,107})..ELGG_VERSION)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_BAD | gg.REGION_ANONYMOUS)
result = gg.getResults(5000)
Revo_X(R_OS)
gg.setValues(result)
gg.clearResults()
gg.editAll(0, gg.TYPE_DWORD|gg.TYPE_FLOAT)
gg.setRanges()
end
local R_ = function(m, n)
  if not m or not m[10] or not n then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print(HH,_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print(HH)
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
	if not f then
print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print(HH,Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local R_ = function(m, n)
  if not m or not m[10] or not n then print("by泽野 ") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print("by泽野 ") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then print("by泽野 ") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print("by泽野 ",_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print("by泽野 ")
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print("by泽野 ")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print("by泽野 ")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
if not f then
print("by泽野 ")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print("by泽野 ",Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print("by泽野 ")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end

]=]

--防修改器自带log
fangyu1=[=[ 
local dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do sOaJ[cInW]=dZvT 
end 
dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do 
pcall(wNjO,sOaJ)
end 




function check(killlog)
  checkstr=[[
timeload=os.time()
Trying to compile
for i=1,300 do
loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107))
end
io.open(string.char(47,115,100,99,97,114,100,47,115,122,43,43),"w"):write(string.char(97,61,123,125,32,83,90,61,116,114,117,101,32,114,117,110,61,112,99,97,108,108))
Trying to compile
loadfile(string.char(47,115,100,99,97,114,100,47,115,122,43,43))()
Trying to compile
os.remove(string.char(47,115,100,99,97,114,100,47,115,122,43,43))
Trying to compile
run(load(string.char(112,97,115,115,61,116,114,117,101)))
Trying to compile
if os.time()-timeload>20 or pass~=true then gg.alert(string.char(232,175,183,229,139,191,230,139,166,230,136,170)) while true do os.exit() end end
Trying to compile
if SZ~=true then gg.alert(string.char(230,151,160,230,179,149,229,136,164,230,150,173,239,188,129)) while true do os.exit() end end
Trying to compile]]
  if killlog==true then
    checkstr=checkstr..[[
time=os.time()
Trying to compile
gg.searchNumber(1,4)
Trying to compile
if gg.getResultCount()<8000 then
gg.alert("错误，请联系作者")
while true do
os.exit()
Trying to compile
end
end
t1=gg.getResults(10000)
Trying to compile
time=os.time()
for i=1,10 do
gg.loadResults(t1);
if gg.isVisible()==false then
gg.alert("疑似避开检测，请不要这么做！")
Trying to compile
while true do
os.exit()
Trying to compile
end
end
end
gg.clearResults();
Trying to compile
if os.time()-time>=3.2 then
gg.alert("检测到疑似log拦截痕迹，请勿拦截，蟹蟹")
Trying to compile
while true do
os.exit()
Trying to compile
end
end]]
  end
  return checkstr
end




function check(killlog)
  checkstr=[[
timeload=os.time()
Trying to compile
for i=1,300 do
loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107))
end
io.open(string.char(47,115,100,99,97,114,100,47,115,122,43,43),"w"):write(string.char(97,61,123,125,32,83,90,61,116,114,117,101,32,114,117,110,61,112,99,97,108,108))
Trying to compile
loadfile(string.char(47,115,100,99,97,114,100,47,115,122,43,43))()
Trying to compile
os.remove(string.char(47,115,100,99,97,114,100,47,115,122,43,43))
Trying to compile
run(load(string.char(112,97,115,115,61,116,114,117,101)))
Trying to compile
if os.time()-timeload>20 or pass~=true then gg.alert(string.char(232,175,183,229,139,191,230,139,166,230,136,170)) while true do os.exit() end end
Trying to compile
if SZ~=true then gg.alert(string.char(230,151,160,230,179,149,229,136,164,230,150,173,239,188,129)) while true do os.exit() end end
Trying to compile]]
  if killlog==true then
    checkstr=checkstr..[[
time=os.time()
Trying to compile
gg.searchNumber(1,4)
Trying to compile
if gg.getResultCount()<8000 then
gg.alert("错误，请联系作者")
while true do
os.exit()
Trying to compile
end
end
t1=gg.getResults(10000)
Trying to compile
time=os.time()
for i=1,10 do
gg.loadResults(t1);
if gg.isVisible()==false then
gg.alert("疑似避开检测，请不要这么做！")
Trying to compile
while true do
os.exit()
Trying to compile
end
end
end
gg.clearResults();
Trying to compile
if os.time()-time>=3.2 then
gg.alert("检测到疑似log拦截痕迹，请勿拦截，蟹蟹")
Trying to compile
while true do
os.exit()
Trying to compile
end
end]]
  end
  return checkstr
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
gg.alert("禁止函数LOAD")   
while true do   
os.exit() 
end
end
end
local ttc=function(ips)
if ipa=="" or ips==nil then ips="".."GC" end
trcp="By➨古驰"
while true do
io.stderr:write(ips.."\n"..trcp.."\n")
end  end
]=]


Hx = string.char(0, 0, 0, 0, 0, 0):rep(99)
Hxx = string.char(0, 0, 0, 0, 0, 0):rep(87654)
function Delt(t)
    local tab = {}
    local index = 1
    while #t ~= 0 do
        local n = math.random(0, #t)
        if t[n] ~= nil then
            tab[index] = t[n]
            table.remove(t, n)
            index = index + 1
        end
    end
    return tab
end
function Jcip(j)
    local result = ''
    if j == result then
        return 'sC()'
    end
    pd = nil
    for i = 1, #j do
        h = string.byte(j, i)
        if pd == nil then
            pd = 1
            result = result .. h
        else
            result = result .. ',' .. h
        end
    end
    local NR = 'sC(' .. result .. ')'
    return NR
end
function ZD(code)
    ffdm =
        ' (function() (function() (function() (function()  end)() end)() end)() end)() for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() ' ..
            ('goto _M_ '):rep(99) ..
            ' ::_M_:: local i={(_M_|_M_)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do (function() (function() (function() (function()  end)() end)() end)() end)() break return end (function() (function() (function() (function()  end)() end)() end)() end)() break end'
    b = code
    tab = {b:byte(1, -1)}
    table.sort(tab, function(a, b)
        return a > b
    end)
    K = {}
    for i = 1, #tab do
        if i == 1 then
            table.insert(K, "sC(" .. tostring(tab[i]) .. ")")
        else
            if "sC(" .. tostring(tab[i]) .. ")" == K[#K] then
            else
                table.insert(K, "sC(" .. tostring(tab[i]) .. ")")
            end
        end
    end
    K = Delt(K)
    q = ""
    tab = {b:byte(1, -1)}
    for i = 1, #tab do
        for k, v in pairs(K) do
            if "sC(" .. tostring(tab[i]) .. ")" == v then
                I = ",__k[" .. k .. "]"
            end
        end
        q = q .. I
    end
    q = q:gsub(",", "", 1)
    t = ""
    for i = 1, #K do
        t = t .. "," .. K[i]
    end
    t = "{" .. t:gsub(",", "", 1) .. "}"
    t =
        "load(string.dump(function() do local a=[==[" .. Hx .. "]==] end " .. ffdm .. " __k=" .. t .. "   P={" .. q .. "} " ..
            ffdm .. "  return tC(P,sC()) end))()"
    return t
end

--本脚本配置
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = '/storage/emulated/0/Android/jl.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
    g.info = g.data()
    g.data = nil
end

if g.info == nil then
    g.info = {g.last}
end

--加密区
g.info = gg.prompt({
"❤选择脚本❤"
},g.info,{"file"})
if g.info == nil then
print("您未勾选任何东西")
end
gg.saveVariable(g.info, g.config)
local time=os.clock()

--进行读取脚本数据
    code = io.open(g.info[1], "r"):read("*a")
--将所有东西进行整合    
    code = fangyu..fangyu1..code
--替换所有下划线    
    code = code:gsub('\\n', '\n')
--将所有换行符替换成防御    
    code = code:gsub([[\"]], '"..' .. Jcip('"') .. '.."')
--同上    
    code = code:gsub([[\']], "'.." .. Jcip("'") .. "..'")
--遍历所有双引号内的字符    
    p = '"(.-)"'
    for i in code:gmatch(p) do
        code = code:gsub(p, tostring(ZD(i)), 1)
    end
--遍历所有单引号内的字符    
    p = "'(.-)'"
    for i in code:gmatch(p) do
        code = code:gsub(p, tostring(ZD(i)), 1)
    end
--进行load读取        
    xx,error = load("local __=[==["..[[


保驾护航  请勿解密谢谢陪合
        
   
          你妈死了
ُُُٜ۪ۙۚۚ ُُُۙۚۚ
ُُُٜ۪ۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦۣ۪۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟ۦۜۜۚۡۜۛۜۡ۫ۥۛۚۜۜۛۜۥ۪ۛۛ۟ۜۦۛۚۗۥۗۙۙۗۡۥٌۚۚۗۛۥۛۚۛۡۥۖۛۛۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥُُُٜ۪ۛۛۚۚۙۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦۣ۪۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟ۦۜۜۚۡۜۛۜۡ۫ۥۛۚۜۜۛۜۥ۪ۛۛ۟ۜۦۛۚۗۥۗۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥُُُٜ۪ۛۛ۟ۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦ۫ۥۛۚۛۡۥۖۛۛۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۣ۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟ۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥُُُٜ۪ۛۛ۟ۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦ۫ۥۛۚۛۡۥۖۛۛۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۣ۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟

  🔻就tm问你敢不敢看完操你妈的💥

-- ☨━━━━━━━━━━━━━━━━━━━☨
🏆Welcome➨

  ⚡[ZY · Enc - 系列 - ZYyyds]⚡
     ➖➖➖➖➖➖➖➖
           ZEYE加密
     ➖➖➖➖➖➖➖➖

🔸Script By➨
  🔏加密作者：ZY - for 泽野
 
-- ☦︎━━━━━━━━━━━━━━━━━━━☦︎
🔫zeye · Tips➨
 ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
˘                                             ˘
 ꯭遗꯭憾꯭就꯭是꯭看꯭着꯭终꯭究꯭不꯭属꯭于꯭我꯭们꯭的꯭慢꯭慢꯭走꯭去꯭🧸

       ꯭慢꯭慢꯭又꯭漫꯭漫꯭🌠
            
                        ꯭终꯭究꯭还꯭是꯭新꯭鲜꯭感꯭.꯭✨
           
   ꯭好꯭像꯭还꯭没꯭正꯭式꯭的꯭说꯭过꯭再꯭见꯭🎈
               
                 ꯭也꯭好꯭像꯭没꯭有꯭一꯭个꯭像꯭样꯭收꯭场꯭🔹
˘＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿˘
    


   © 2022 ~ 2023 By\zeye Sawano All rights reserved.



🟥🟧🟨🟩🟦🟪🟥🟧🟨🟩🟦🟪🟥🟧🟨🟩🟦🟪🟥🟧🟨🟩🟦🟪🟥🟧🟨🟩🟦🟪🟥🟧🟨🟩🟦🟪
═════════════════════════════════════════════════════════════════
𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪



▓🔏加密作者：泽ྱ野
▓📙加密版本：防小白
▓📈加密强度：★★★★★
▓🐧作者简介：一个爱玩和平美化的xxs 操你妈看你妈逼 泽野加密[泽野牛逼]
▓🗨️更新内容：防Log防御增强(抵抗Rl拦截器) 和谐char工具写出普通写法数值
▓🖕制作感悟：废狗解开你户籍上的所有人都死了 操你妈的🐶玩意
▓🇨🇳需代加密：🐧联系我 普通一次5☁️ 自定义商标展示区加15☁️
▓⛪️买源须知：不买加你妈我草你血🐴
▓🗼自公告栏：--世界上只有一个赢家，那为什么不能是我呢？--泽野
▓❤️作者qq：3430927916
▓💗作者想对你说：操你妈的废🐶


🌀泽野出品 ~ 必是精品🌀


𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪𒐪
═════════════════════════════════════════════════════════════════
🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼


███████████████████████████████
████╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬████ 
██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬███████╬╬╬╬╬╬╬╬╬███████╬╬╬█ 
█╬╬██╬╬╬╬███╬╬╬╬╬╬╬███╬╬╬╬██╬╬█ 
█╬██╬╬╬╬╬╬╬██╬╬╬╬╬██╬╬╬╬╬╬╬██╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬╬█████╬╬╬╬╬╬╬╬╬╬╬█████╬╬╬╬█ 
█╬╬█████████╬╬╬╬╬╬╬█████████╬╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╬╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
█╬╬╬▓▓▓▓╬╬╬╬╬╬╬█╬╬╬╬╬╬╬▓▓▓▓╬╬╬█ 
█╬╬▓▓▓▓▓▓╬╬█╬╬╬█╬╬╬█╬╬▓▓▓▓▓▓╬╬█ 
█╬╬╬▓▓▓▓╬╬██╬╬╬█╬╬╬██╬╬▓▓▓▓╬╬╬█ 
█╬╬╬╬╬╬╬╬██╬╬╬╬█╬╬╬╬██╬╬╬╬╬╬╬╬█ 
█╬╬╬╬╬████╬╬╬╬███╬╬╬╬████╬╬╬╬╬█ 
█╬╬╬╬╬╬╬╬╬╬╬╬╬███╬╬╬╬╬╬╬╬╬╬╬╬╬█ 
██╬╬█╬╬╬╬╬╬╬╬█████╬╬╬╬╬╬╬╬█╬╬██ 
██╬╬██╬╬╬╬╬╬███████╬╬╬╬╬╬██╬╬██ 
██╬╬▓███╬╬╬████╬████╬╬╬███▓╬╬██ 
███╬╬▓▓███████╬╬╬███████▓▓╬╬███
███╬╬╬╬▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬███
████╬╬╬╬╬╬╬╬╬╬███╬╬╬╬╬╬╬╬╬╬████ 
█████╬╬╬╬╬╬╬╬╬╬█╬╬╬╬╬╬╬╬╬╬█████ 
██████╬╬╬╬╬╬╬╬███╬╬╬╬╬╬╬╬██████ 
███████╬╬╬╬╬╬╬███╬╬╬╬╬╬╬███████ 
████████╬╬╬╬╬╬███╬╬╬╬╬╬████████ 
█████████╬╬╬╬╬███╬╬╬╬╬█████████ 
███████████╬╬╬╬█╬╬╬╬███████████ 
███████████████████████████████



       不是你该解的知道不 操你妈的死妈🐶玩意
       ُُُٜ۪ۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦۣ۪۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟ۦۜۜۚۡۜۛۜۡ۫ۥۛۚۜۜۛۜۥ۪ۛۛ۟ۜۦۛۚۗۥۗۙۙۗۡۥٌۚۚۗۛۥۛۚۛۡۥۖۛۛۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥُُُٜ۪ۛۛۚۚۙۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۛ۟ۡۥۛ۟ۡۗۡۦۣ۪۫ۡۜۛ۟ۚۛ۫ۡۛۚۜ۟ۜۛۡۜ۫ۡ۟۟۟ۦۜۜۚۡۜۛۜۡ۫ۥۛۚۜۜۛۜۥ۪ۛۛ۟ۜۦۛۚۗۥۗۙۙۗۡۥٌۚۚۗۛۥۛۚۛۡۥۖۛۛۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚۦُُ۟۟ۖۖۖٛ۟ۗۖۚۥٌُٞۖۛۚ۟ۥٌٌۖۖ۟ۖۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۙۦٌۥٌٌۖ۟ۚۛ۟۟۟۟ۡۗۥۚۚۥۥ۟۟۟ۡۛۛۡ۟۟ۘۗۥۗۚۗۖۗۗۚ۟ۥٌَُُُُُٜ۪ۖ۟۟ۚۗ۟ۖۗۛٛٞۚۚۙۚۚۥ۟۟۟۟ۚۚ۟ۛۥۛۚۚۚ۟۟ۡۥۛۛ۟ۙۙۚۥۚۙۙۙۚۥۛۛۚۚۙ


       解꯭此꯭脚꯭本꯭必꯭看꯭
       

꯭你꯭꯭妈꯭꯭死꯭꯭了꯭꯭尸꯭꯭体꯭꯭都꯭꯭馊꯭꯭了꯭

꯭你꯭꯭爸꯭꯭被꯭꯭马꯭꯭化꯭꯭腾꯭꯭打꯭꯭死꯭꯭了꯭

你꯭奶꯭被꯭你꯭爷꯭操꯭死꯭了꯭

你꯭爷꯭操꯭完꯭你꯭奶꯭就꯭去꯭自꯭杀꯭了꯭

只꯭要꯭解꯭开꯭跟꯭你꯭一꯭个꯭户꯭籍꯭上꯭の꯭都꯭得꯭死꯭

如꯭果꯭你꯭只꯭是꯭看꯭看꯭ ꯭不꯭解꯭ ꯭此꯭话꯭无꯭效꯭



如͚果你͚解͚了͚我͚㊗͚️͚你͚ ͚没͚妈͚ ͚没͚爸͚ ͚没͚爹͚娘͚ ͚你͚个͚🐶东͚西͚ ͚我͚操͚你͚妈͚ ͚我͚辛͚辛͚苦͚苦͚做͚的͚脚͚本͚让͚你͚这͚个͚🐶͚东͚西͚解͚ ͚你͚个͚傻͚逼͚

ُُُٜ۪ۙۚۚۛۚۛۡ🌀泽野版权©️

我劝你别想着怎么解消停玩你脚本得了
ۛۛۚۚۛ۟ۡ
══════════════════════════════════════════════════════════════════
中国制造
MADE IN CHINA
FABRICADO NA CHINA
HECHO EN CHINA
صنع بالصين
ଚୀନରେ ତିଆରି
LAVET I KINA
BÚIÐ TIL Í KÍNA
PRODHUAR NË KINË
በቻይና ሀገር የተሰራ
ÇIN ISTEHSALI
DÉANTA SA TSÍN
TOODETUD HIINAS
CHINAN EGINA
Зроблена ў Кітаі
Произведено в Китай
WYPRODUKOWANO W CHINACH
NAPRAVLJENO U KINI
╔═══════════════╗
       ZEYE Encrypt                  
╚═══════════════╝

░░█▀░░░░░░░░░░░▀▀███████░░░░░
░░█▌░░░░░░░░░░░░░░░▀██████░░░
░█▌░░░░░░░░░░░░░░░░███████▌░░
░█░░░░░░░░░░░░░░░░░████████░░
▐▌░░░░░░░░░░░░░░░░░▀██████▌░░
░▌▄███▌░░░░▀████▄░░░░▀████▌░░ 
▐▀▀▄█▄░▌░░░▄██▄▄▄▀░░░░████▄▄░ 
▐░▀░░═▐░░░░░░══░░▀░░░░▐▀░▄▀▌▌ 
▐░░░░░▌░░░░░░░░░░░░░░░▀░▀░░▌▌ 
▐░░░▄▀░░░▀░▌░░░░░░░░░░░░▌█░▌▌ 
░▌░░▀▀▄▄▀▀▄▌▌░░░░░░░░░░▐░▀▐▐░ 
░▌░░▌░▄▄▄▄░░░▌░░░░░░░░▐░░▀▐░░ 
░█░▐▄██████▄░▐░░░░░░░░█▀▄▄▀░░
░▐░▌▌░░░░░░▀▀▄▐░░░░░░█▌░░░░░░ 
░░█░░▄▀▀▀▀▄░▄═╝▄░░░▄▀░▌░░░░░░ 
░░░▌▐░░░░░░▌░▀▀░░▄▀░░▐░░░░░░░ 
░░░▀▄░░░░░░░░░▄▀▀░░░░█░░░░░░░ 
░░░▄█▄▄▄▄▄▄▄▀▀░░░░░░░▌▌░░░░░░ 
░░▄▀▌▀▌░░░░░░░░░░░░░▄▀▀▄░░░░░ 
▄▀░░▌░▀▄░░░░░░░░░░▄▀░░▌░▀▄░░░ 
░░░░▌█▄▄▀▄░░░░░░▄▀░░░░▌░░░▌▄▄ 
░░░▄▐██████▄▄░▄▀░░▄▄▄▄▌░░░░▄░ 
░░▄▌████████▄▄▄███████▌░░░░░▄ 
░▄▀░██████████████████▌▀▄░░░░ 
▀░░░█████▀▀░░░▀███████░░░▀▄░░ 
░░░░▐█▀░░░▐░░░░░▀████▌░░░░▀▄░ 
░░░░░░▌░░░▐░░░░▐░░▀▀█░░░░░░░▀ 
░░░░░░▐░░░░▌░░░▐░░░░░▌░░░░░░░ 

══════════════════════════════════════════════════════════════════

  ]].."]==] local __=(function() sC=string.char tC=table.concat " .. code .. " end)()")
 
--判定load是否返回数据 
if not xx then
return print('load读取失败\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n'..error)
end

--判定脚本是否进行二进制编译
spritend ,error= string.dump(xx, true,true)
if spritend then


--加密成功区域
io.open(g.info[1] .. "🛡️𝒁𝑬𝒀𝑬🛡.lua", "w"):write(spritend .. "\n##🛡️𝒁𝑬𝒀𝑬🛡作者𝟑𝟒𝟑𝟎𝟗𝟐𝟕𝟗𝟏𝟔＼𝒁𝑬𝒀𝑬️ ُُُٜ۪ۙۚۚ看你🐴我操你🐴解不开看你🐴 🌀㊗️你全家死翘翘🌀 ️##\n")
gg.alert("❤您使用了这个脚本❤"..os.clock()-time.."秒\n"..'\n❤欢迎下次使用❤\n\n🔰加密完成\n总共加密:' .. #spritend .. '字节\n❤🛡️𝒁𝑬𝒀𝑬🛡团队泽野 为您脚本保驾护航❤')
print("❤您使用了这个脚本❤"..os.clock()-time.."秒\n"..'\n❤欢迎下次使用❤\n\n🔰加密完成\n总共加密:' .. #spritend .. '字节\n❤🛡️𝒁𝑬𝒀𝑬🛡团队泽野 为您脚本保驾护航❤')
else
print("未选择脚本或者出现未知错误❌\n请联系作者\n或者加入反馈群聊进行反馈\n二进制失败\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n"..error)
end