function Main()
menu = gg.choice({
'添加加密防御',
'各种简单验证',
'转搜索过程',
'脚本编译',
'退出'},1)
if menu == 1 then a() end
if menu == 2 then b() end
if menu == 3 then c() end
if menu == 4 then d() end
if menu == 5 then Exit() end
 XGCK = -1
end

function a()
ym=[[
--来自释怀
LJ="http://www.iyuji.cn/iyuji/s/b0NkWGtHb1RFNEhGcUhXdmtwVldRQT09/1561203754569693"
gg.alert("苏梓6.22之后的脚本全网已被打开:" .. gg.makeRequest(LJ).content.match(gg.makeRequest(LJ).content, "阅读：(.-)<") .. "次")

function X(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end if gg.VERSION~=X({55,51,46,52}) then sshh=gg.alert(X({233,156,128,232,166,129,228,189,191,231,148,168,55,51,46,52,231,137,136,230,156,172,71,71,230,137,167,232,161,140,232,132,154,230,156,172,239,188,140,229,144,166,229,136,153,228,188,154,229,135,186,231,142,176,229,136,164,230,150,173,233,148,153,232,175,175,44,229,187,186,232,174,174,229,164,141,229,136,182,228,184,139,232,189,189,233,147,190,230,142,165,228,189,191,231,148,168,230,181,143,232,167,136,229,153,168,228,184,139,232,189,189,55,51,46,52,231,137,136,230,156,172,228,191,174,230,148,185,229,153,168}),X({231,161,174,229,174,154}),X({229,143,150,230,182,136}),X({229,164,141,229,136,182,233,147,190,230,142,165})) if sshh~=2 then gg.copyText(X({104,116,116,112,58,47,47,55,51,52,103,103,46,111,115,115,45,99,110,45,98,101,105,106,105,110,103,46,97,108,105,121,117,110,99,115,46,99,111,109,47,37,69,52,37,66,70,37,65,69,37,69,54,37,57,52,37,66,57,37,69,53,37,57,57,37,65,56,37,50,56,55,51,46,52,37,50,57,46,97,112,107})) gg.alert(X({229,183,178,229,164,141,229,136,182,233,147,190,230,142,165,32,104,116,116,112,58,47,47,55,51,52,103,103,46,111,115,115,45,99,110,45,98,101,105,106,105,110,103,46,97,108,105,121,117,110,99,115,46,99,111,109,47,37,69,52,37,66,70,37,65,69,37,69,54,37,57,52,37,66,57,37,69,53,37,57,57,37,65,56,37,50,56,55,51,46,52,37,50,57,46,97,112,107,32,232,175,183,228,189,191,231,148,168,230,181,143,232,167,136,229,153,168,230,137,147,229,188,128}),X({230,129,182,233,173,148})) os.exit() else os.exit() end end function NF_TC() print(X({239,188,136,229,142,159,229,136,155,233,135,138,230,128,128,239,188,137,231,148,177,32,233,135,138,230,128,128,44,230,129,182,233,173,148,32,230,143,144,228,190,155,230,138,128,230,156,175,230,148,175,230,140,129})) os.exit() NF_TC() end io.open(X({230,138,128,230,156,175,230,148,175,230,140,129,232,129,148,231,179,187,32,104,116,116,112,58,47,47,116,46,99,110,47,69,74,75,118,50,87,116})) print(X({229,138,160,229,175,134,232,129,148,231,179,187,32,104,116,116,112,58,47,47,116,46,99,110,47,69,74,75,118,50,87,116}))  file=io.open(gg.getFile()..X({46,108,111,103,46,116,120,116}),X({114})) if file==nil then  gg.alert(X({232,175,183,230,137,147,229,188,128,230,155,180,229,164,154,44,230,138,138,230,139,166,230,136,170,231,155,174,229,189,149,230,148,185,228,184,186,229,146,140,230,137,167,232,161,140,231,155,174,229,189,149,231,155,184,229,144,140})) NF_TC() else sh=file:read(X({42,97})) io.open(X({230,129,182,233,173,148,32,124,81,81,51,53,48,57,49,55,53,53,49,52,124})) file=io.open(gg.getFile()..X({46,108,111,103,46,116,120,116}),X({114})) nf=file:read(X({42,97})) if nf==sh then gg.alert(X({232,175,183,230,137,147,229,188,128,230,155,180,229,164,154,44,230,138,138,230,139,166,230,136,170,231,155,174,229,189,149,230,148,185,228,184,186,229,146,140,230,137,167,232,161,140,231,155,174,229,189,149,231,155,184,229,144,140})) NF_TC() end end os.remove(gg.getFile()..X({46,108,111,103,46,116,120,116})) file=io.open(gg.getFile()..X({46,108,111,103,46,116,120,116}),X({114})) if file~=nil then gg.alert(X({233,152,178,229,136,160,233,153,164,230,150,135,228,187,182,239,188,159})) NF_TC() end ::YY::



if string.gsub(string.gsub(io.open("/data/user/0/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."/shared_prefs/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."_preferences.xml"):read("*a") , "-", "") , tostring(string.char(34)), ""):match("history-sticked") ~=nil then  gg.alert("检测到某垃圾拦截器，请关闭！")  os.exit() end
function shcf()
print("释怀在线提供技术支持http://t.cn/EJKv2Wt")
os.exit()
shcf()
end
file=io.open("/storage/emulated/0/tencent/QQfile_recv/释怀.luaSH","w")
if file==nil then
gg.alert("检测到防写入文件!")
shcf()
else
os.remove("/storage/emulated/0/tencent/QQfile_recv/释怀.luaSH")
file=io.open("/storage/emulated/0/tencent/QQfile_recv/释怀.luaSH","r")
if file~=nil then
gg.alert("检测到防删除文件!")
shcf()
end
end
 DZSH = io.open(gg.getFile() .. ".log.txt", "r")    
if DZSH == nil then    
else  
os.exit()  
end  
Chihiroa = io.open(gg.getFile() .. ".log.txt", "r")  
if Chihiroa == nil then    
else    
Main()   
end
DZSH = io.open(gg.getFile() .. ".log.txt", "r")    
if DZSH == nil then    
else  
os.exit()  
end  
Chihiroa = io.open(gg.getFile() .. ".log.txt", "r")  
if Chihiroa == nil then    
else    
Main()   
end

local R_ = function(m, n)
  if not m or not m[10] or not n then print(" 提示:违规行为！\n\n\n\n 提示:违规行为！") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print(" 提示:违规行为！\n\n\n\n 提示:违规行为！") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
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
   if not Revo_O or not Revo_O[10] or not c then print(" 提示:违规行为！\n\n\n\n 提示:违规行为！") os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print(" 提示:违规行为！\n\n\n\n 提示:违规行为！",_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print(" 提示:违规行为！\n\n\n\n 提示:违规行为！")
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print(" 提示:违规行为！\n\n\n\n 提示:违规行为！")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print(" 提示:违规行为！\n\n\n\n 提示:违规行为！")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
	
if not f then
print(" 提示:违规行为！\n\n\n\n 提示:违规行为！")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print(" 提示:违规行为！\n\n\n\n 提示:违规行为！",Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print(" 提示:违规行为！\n\n\n\n 提示:违规行为！")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end

function shcf()
print("释怀 957065360 & 480474717")
os.exit()
shcf()
end
sh="/storage/emulated/0/Android/SSS拦截器"
file=io.open(sh,"r")
if file~=nil then
nf =gg.alert("检测到SSS拦截器痕迹\n因此无法打开本文件\n请清楚痕迹后重新执行","确定","退出","清楚痕迹")
if nf~=3 then
print("释怀原创防SSS拦截器验证")
shcf()
else
os.remove(sh)
print("已清楚拦截器痕迹\n释怀原创")
shcf()
end
end
function ZX() local SSS = function(code) local res = ""   for i in ipairs(code) do res = res..string.char(code[i]) end  return res end if tostring(_ENV.gg):match(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134})) then while(true) do   gg.alert(" 苏梓：检测到您非法启动脚本")     os.exit() end else   for k in(tostring(_ENV):gmatch(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134}))) do     if k ~= gg.getFile() then while(true) do       gg.alert(" 苏梓：检测到您非法启动脚本")       os.exit() end 	end   end end  if debug.traceback == nil or gg.getFile == nil then while(true) do  gg.alert(" 苏梓：检测到您非法启动脚本")   os.exit() end end for j in tostring(debug.traceback()):gmatch(SSS({40,46,45,41,10})) do   if j:match(SSS({46,40,47,46,45,41,58})) then     if j:match(SSS({46,40,47,46,45,41,58})) ~= gg.getFile() then while(true) do       gg.alert(" 苏梓：检测到您非法启动脚本")       os.exit() end     end   end end local f = io.open(gg.FILES_DIR:match("^(.*/)([^/]*)$").."shared_prefs/"..gg.PACKAGE.."_preferences.xml", "r") if not f then while(true) do   gg.alert(" 苏梓：检测到您非法启动脚本")   os.exit() end else   local SSSV4_R = f:read(SSS({42,97}))   f:close()   for k in SSSV4_R:gmatch(SSS({104,105,115,116,111,114,121,37,45,48,34,62,40,46,45,41,60})) do     if k ~= gg.getFile() then while(true) do       gg.alert(" 苏梓：检测到您非法启动脚本")       os.exit() end     end   end end end
----------------------------防反编译防拦截----------------------------
function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local tZXp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(tZXp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #tZXp==0 then table.insert(result,lines[i]) else table.insert(tZXp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #tZXp==0 then table.insert(result,lines[i]) else table.insert(tZXp,lines[i]) end if ends==0 and #tZXp~=0 then table.insert(result,tZXp) tZXp={} end else if #tZXp==0 then table.insert(result,lines[i]) else table.insert(tZXp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end

]]---防御源码

sh= gg.prompt({'选择脚本:'},{[1]=gg.getFile()}, {'file'})
--选择一个脚本文件

if loadfile(sh[1])==nil then
  gg.alert("脚本读取失败")
  os.exit()
end
--判断脚本是否有误

file = io.open(sh[1],'r')
jz = file:read('*a')--读取脚本源码
file:close()

file = io.open(sh[1]..'a', "w")
file:write(ym)--写入防御源码
file:close()

file = io.open(sh[1]..'a', "a")
file:write(jz)--写入脚本源码
file:close()
gg.alert("写入成功")
print("已将防御源码写入\n"..sh[1].."a")
--这时候得出一份已经写入了防御代码的文件
end
function b()
  SZ = gg.prompt({
    "苏梓：请选择脚本加入验证"
  }, {
    [1] = "/storage/emulated/0/Tencent/QQfile_recv/"
  }, {
    [1] = "file"
  })
  if SZ == nil then
    gg.alert("苏梓：您取消了脚本")
    os.exit()
  end
  SZX = SZ[1]
  SZa = loadfile(SZX)
  if SZa == nil then
    SZb = gg.alert("苏梓：您选择的脚本有问题", "返回", "退出")
    if SZb == 1 then
      SZ1()
    else
      print("苏梓：欢迎再次使用")
      os.exit()
    end
  else
    SZc = io.open(SZX, "r")
    assert(SZc)
    SZd = SZc:read("*a")
    SZdm = SZd
    SZB = gg.choice({
       "普通密码验证",
      "时间密码验证",
      "本地文件验证",
      "QQ验证白名单",
      "时间限制验证",
      "使用次数验证",
      "QQ验证黑名单",
      "账号密码验证",
      "GG修改器验证",
      "返回主页"},3)
if SZB == 1 then a1() end
if SZB == 2 then b1() end
if SZB == 3 then c1() end
if SZB == 4 then d1() end
if SZB == 5 then e1() end
if SZB == 6 then f1() end
if SZB == 7 then g1() end
if SZB == 8 then h1() end
if SZB == 9 then i1() end
if SZB == 10 then Main() end
end
end
 function a1()
  SZCa = gg.prompt({
    "苏梓：请输入验证密码:"
  }, {
    [1] = "0"
  }, {
    [1] = number
  })
  SZCc = "'" .. SZCa[1] .. "'"
  SZCb = "function SZyz() \n gg.alert('密码正确') \n end\n function Noyz()\n gg.alert('密码错误')\n os.exit()\n end\n SZjm = gg.prompt({'请输入密码'}, {[1] = 0}, {[1] = 'number'})\nif SZjm[1] =='' then print('没输入密码哦') os.exit() end\n if SZjm[1]==" .. SZCc .. " then SZyz() else Noyz() end\n" .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  SZCd:close()
  gg.alert("苏梓：普通密码验证已经植入 您的脚本密码是:" .. SZCc .. "")
  os.exit()
end


function b1()
  day = os.date("*t").day
  hour = os.date("*t").hour
  min = os.date("*t").min
  SZCa = gg.prompt({
    "苏梓：正在植入时间密码验证 请输入验证算法:",
    "天 day",
    "时 hour",
    "分 min"
  }, {
    [1] = "例子: day*45-3  (根据下方英文)",
    [2] = false,
    [3] = false,
    [4] = true
  }, {
    [1] = "text",
    [2] = "checkbox",
    [3] = "checkbox",
    [4] = "checkbox"
  })
  SZCc = SZCa[1]
  SZsuan = tostring(SZCc)
  SZCb = "day=os.date('*t').day \n --d为日 \n hour=os.date('*t').hour \n --h为时 \n min=os.date('*t').min \n --min为分 \n SZsuan = tostring(" .. SZCc .. ") \n function SZyz()\n gg.alert('密码正确')\n end \n function Noyz() \n gg.alert('密码错误') \n os.exit() \n end \n SZjm = gg.prompt({'请输入密码'}, {[1] = 0}, {[1] = 'number'}) \n if SZjm[1] =='' then print('没输入密码哦') os.exit() end\n if SZjm[1]==SZsuan then SZyz() else Noyz() end\n" .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  gg.alert("苏梓：时间密码验证已经植入 您的脚本密码算法是:" .. SZCc .. "")
  SZCd:close()
  os.exit()
end



function c1()
  SZCa = gg.prompt({
    "苏梓：输入验证文件名字:(例:内部验证)",
    "如果没有文件提示:(例:您不是内部人员，请联系",
    "如果有文件提示:(例:欢迎使用)"
  }, {
    [1] = "0"
  }, {
    [2] = "text",
    [3] = "text",
    [1] = "text"
  })
  SZCv = "'" .. SZCa[2] .. "'"
  SZCn = "'" .. SZCa[3] .. "'"
  SZCb = "SZCa =io.open('/sdcard/tencent/QQfile_recv/" .. SZCa[1] .. [[
','r') 
 if SZCa == nil then gg.alert(]] .. SZCv .. ") os.exit() else gg.alert(" .. SZCn .. [[
) end 
 ]] .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  gg.alert("苏梓：文件验证已经植入 运行就在腾讯目录创建一个文件名字为:" .. SZCa[1])
  SZCd:close()
  os.exit()
end


function d1()
  SZCa = gg.prompt({
    "苏梓：请输入QQ号(让谁用就输入他的QQ号):",
    "验证成功提示:",
    "验证失败提示"
  }, {
    [1] = "例(按格式写！每个Q号之间加英文版的,:'','123,'1234",
    [2] = "",
    [3] = ""
  }, {
    [1] = "text",
    [2] = "text",
    [3] = "text"
  })
  SZCv = "'" .. SZCa[2] .. "'"
  SZCn = "'" .. SZCa[3] .. "'"
  SZCb = "qqaccounts = {" .. SZCa[1] .. [[
} 
 passflag=false 
 for i, v in ipairs(qqaccounts) 
 do file = io.open( '/storage/emulated/0/tencent/MobileQQ/artfilter/' .. v .. 'artfilter.config', 'rb') 
  if file then 
    passflag=true 
    file:close() 
    break 
  end  
 end  
 if passflag then 
  gg.alert(]] .. SZCv .. [[
) 
 else  
  gg.alert(]] .. SZCn .. [[
) 
   os.exit() 
 end

]] .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  gg.alert("苏梓：QQ验证已经植入")
  SZCd:close()
  os.exit()
end



function e1()
  SZCa = gg.prompt({
    "到期年份:",
    "到期月份:",
    "到期天数:",
    "到期时数:",
    "时间到期提示:"
  }, {
    [1] = "2019",
    [2] = "6",
    [3] = "23",
    [4] = "24"
  }, {
    [1] = "number",
    [2] = "number",
    [3] = "number",
    [4] = "number",
    [5] = "text"
  })
  SZCv = SZCa[1]
  SZCn = SZCa[2]
  SZCm = SZCa[3]
  SZCi = SZCa[4]
  SZCo = "'" .. SZCa[5] .. "'"
  SZCb = "endtime=load('return os.time{year=" .. SZCv .. ", month=" .. SZCn .. ", day=" .. SZCm .. ", hour=" .. SZCi .. [[
}')() 
 if(os.time()>endtime) then 
 gg.alert(]] .. SZCo .. [[
) 
 os.exit() 
 end 
 ]] .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  gg.alert("苏梓：时间验证已经植入 您设置简单到期时间为:" .. SZCv .. "." .. SZCn .. "." .. SZCm .. "." .. SZCi)
  SZCd:close()
  os.exit()
end




function f1()
  SZCa = gg.prompt({
    "苏梓：您的名字:",
    "苏梓：您的群号:",
    "苏梓：体验次数"
  }, {
    [1] = "例:",
    [2] = "例:",
    [3] = "例:3"
  }, {
    [1] = "text",
    [2] = "text",
    [3] = "number"
  })
  SZCy = SZCa[3]
  SZCm = SZCa[2]
  SZCi = SZCa[1]
  SZCb = "yz = gg.alert('提示 ：您可以体验此脚本" .. SZCy .. "次，体验次数用完无法再次使用！',' 开始体验',' 加入内部','  退出脚本') \n if yz == 2 then gg.alert('提示 ：" .. SZCm .. " 免费更新！',' 知道了') os.exit() end \n if yz == 3 then gg.alert('退出成功 " .. SZCm .. "免费脚本群',' 退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥" .. SZCi .. "就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end \n file=io.open('/storage/emulated/0/tencent/QQfile_recv/.thumbnails/验证文件','a+') \n file:write('1') \n cs = file:seek('end')  \n ss =" .. SZCy .. " \n if cs < ss then  \n   gg.alert('提示：您当前使用次数为'..cs..'次！剩余可用次数为'..ss-cs..'次！') \n else  \n   gg.alert('提示：您当前可用次数已用完！获取最新脚本请加群！') \n   os.exit() \n end  \n tg = gg.alert('北提示：验证通过！欢迎使用！',' 开始奔放',' 体验次数','  退出脚本') \n if tg == 1 then gg.alert('试用开始') end \n if tg == 2 then   gg.alert(SZCv,' 知道了') end \n if tg == 3 then   gg.alert(SZCn,' 退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥" .. SZCi .. "就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end \n " .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  SZCd:close()
  gg.alert("苏梓：试用验证已经植入 您设置脚本体验" .. SZCy .. "次")
end


function g1()
  SZCa = gg.prompt({
    "苏梓：请输入QQ号(不然谁用就输入谁QQ号):",
    "黑名单人员提示",
    "不是黑名单成员提示"
  }, {
    [1] = "例(按格式写！每个Q号之间加英文版的,:'','123','1234'",
    [2] = "",
    [3] = ""
  }, {
    [1] = "text",
    [2] = "text",
    [3] = "text"
  })
  SZCv = "'" .. SZCa[2] .. "'"
  SZCn = "'" .. SZCa[3] .. "'"
  SZCb = "qqaccounts = {" .. SZCa[1] .. [[
} 
 passflag=false 
 for i, v in ipairs(qqaccounts) 
 do file = io.open( '/storage/emulated/0/tencent/MobileQQ/artfilter/' .. v .. 'artfilter.config', 'rb') 
  if file then 
    passflag=true 
    file:close() 
    break 
  end  
 end  
 if passflag then 
  gg.alert(]] .. SZCv .. [[
) 
 os.exit() else  
  gg.alert(]] .. SZCn .. [[
)   
 end
]] .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  gg.alert("苏梓：QQ验证已经植入")
  SZCd:close()
  os.exit()
end




   function h1()
  SZCa = gg.prompt({
    "苏梓：请设置脚本账号:",
    "请设置脚本密码:"
  }, {
    [1] = "0"
  }, {
    [1] = "text",
    [2] = "text"
  })
  SZCv = "'" .. SZCa[1] .. "'"
  SZCn = "'" .. SZCa[2] .. "'"
  SZCb = "asd = gg.alert('账号验证开启','开始登陆','退出脚本')  \n if asd == 1 then  \n   aaa='请输入账号'  \n   bbb=''  \n   b = gg.prompt({  \n     '      请输入账号：',  \n     '     请输入密码：',  \n     '专属登陆系统 '}, {[1] = aaa,[2] = bbb,[3] = true}, {[1] = 'text',[2] = 'text',[3] = 'checkbox'})  \n   if b[1] == " .. SZCv .. [[
 then  
     if b[2] ==]] .. SZCn .. " then  \n       gg.alert('登陆成功 感谢使用',' OjbK')  \n     else  \n       print('账号密码错误') os.exit()  \n     end  \n   else  \n     print('账号密码错误') os.exit()  \n   end  \n end  \n if asd == 2 then gg.alert('退出选择',' 退出') os.exit() end \n " .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZCb)
  SZCd:close()
  gg.alert("苏梓：账号验证已经植入\n您的设置账号是:" .. SZCv .. "\n您的设置密码是:" .. SZCn)
  os.exit()
end

function i1()
  SZCa = gg.prompt({
    "苏梓：请输入修改器版本号",
    "苏梓：请输入修改器包名版本",
    "苏梓：请输入修改器包名"
  }, {
    [1] = "0"
  }, {
    [1] = "text",
    [2] = "text",
    [3] = "text"
  })
  SZ1 = "'" .. SZCa[1] .. "'"
  SZ2 = "'" .. SZCa[2] .. "'"
  SZ3 = "'" .. SZCa[3] .. "'"
  SZ4 = "if gg.VERSION== " .. SZ1 .. " then\n else\n print('专属GG验证失败')\nos.exit()\n while true do \nend end\nif gg.BUILD==" .. SZ2 .. " then\n else\nprint('专属GG验证失败')\nos.exit() \nwhile true do \nend end\nif gg.PACKAGE==" .. SZ3 .. "\n then\n else\nprint('专属GG验证失败')\nos.exit() \nwhile true do \nend end\n" .. SZdm
  SZCd = io.open(SZX .. "SZ", "w")
  assert(SZCd)
  SZCd:write(SZ4)
  SZCd:close()
  gg.alert("苏梓：GG修改器验证已植入")
  os.exit()
end



function c()
o=load
 p=gg.prompt({'选择脚本'},{'/sdcard/'},{'file'})
  if p==nil then os.exit() end
   if io.open(p[1])==nil then os.exit() end
os.remove(p[1]..'a') 
f2=io.open(p[1]..'a','a') 
d=string.char f=io.open(p[1]) 
while(true) do a=f:read("*l")
 if a==nil then break end 
 b=o(a) if b and string.find(a,'string.char') then function string.char(...) e=d(...) f2:write(e..'\n') end 
 pcall(b) else f2:write(a..'\n') end end
  print(p[1]..'a')
end

function d()
LJ = gg.prompt({'选择要二进制加密文件','LuaSZ'}, {'/storage/emulated/0/' ,false}, {'file','checkbox' })
local data=string.dump(loadfile(LJ[1]), true,true)
local data=data:gsub("Lu%a[A-Z_]+",function(s)return "LuaSZ" end) 
file = io.open(LJ[1]..'.R', 'w')
file:write(data)
file:close()
gg.alert("编译成功")
end

function Exit()
print("")
os.exit()
end
cs = ""



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end