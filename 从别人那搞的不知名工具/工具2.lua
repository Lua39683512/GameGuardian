--本工具是恶魔的解密工具
choe=print cheo=gg.alert choo=gg.toast osso=gg.choice soos=gg.prompt
function Main()--Main入口
Q=osso({--Q面板
"❤暖风字符串解算❤",--1
"💛猴子反编译解算💛",--2
"💚任何自由算法分析💚",--3
"💙自创解密小工具💙",--4
"⚠LOG生成拦截器⚠",--5
"🚀密码▶▶伪装🚀",--6
"⭕classificationDecrypt⭕",--7
"❌Return to the world❌"--8
},nil,
"跟上我EEEEMMM的步伐")
if Q == nil then Main() end--nil
if Q == 1 then T() end--1
if Q == 2 then Y() end--2
if Q == 3 then L() end--3
if Q == 4 then S() end--4
if Q == 5 then P() end--5
if Q == 6 then D() end--6
if Q == 7 then A() end--7
if Q == 8 then os.exit() end--出口
end--Main结束

function T() 
function ovo_sh(jie,Text)return (Text:gsub('..', function (jie)return string.char((tonumber(jie,16))%256) end))end
Y=soos({"分段解析"},{},{"text"})
if Y == nil then else
cheo("解析内容为\n"..ovo_sh(nf,Y[1]))
choe(ovo_sh(nf,Y[1]))
gg.copyText(ovo_sh(nf,Y[1]))
  end
  LW1 = 0
  LW2 = 0
while true do
  sj = os.date(" %c")
  if gg.isVisible(true) then
    LW1 = nil
    gg.setVisible(false)
  end
  if LW1 == nil then
    T()
    end
end
end

function Y()
o=load p=soos({"导入路径","输出路径"},{"/storage/emulated/0/tencent/QQfile_recv","/storage/emulated/0/tencent/QQfile_recv"},{"file","file"}) if p==nil then os.exit() end if io.open(p[1])==nil then os.exit() end
os.remove(p[1]..'a') f2=io.open(p[1]..'a','a') d=string.char f=io.open(p[1]) while(true) do a=f:read("*l") if a==nil then break end b=o(a) if b and string.find(a,'string.char') then function string.char(...) e=d(...) f2:write(e..'\n') end pcall(b) else f2:write(a..'\n') end end print(p[1]..'a')
end

function L()
SSH="local HMGGO=function() local HMGEND=0 RG={释怀} HMOL={240, 159, 155, 161, 229, 189, 147, 229, 137, 141, 232, 132, 154, 230, 156, 172, 232, 191, 144, 232, 161, 140, 231, 142, 175, 229, 162, 131, 229, 188, 130, 229, 184, 184, 239, 188, 129} HMG={118,133,126,115,132,121,127,126,48,113,114,115,56,57,48,127,131,62,117,136,121,132,56,57,48,117,126,116} char={} for i=1,#HMOL do hmjmddx=HMOL[i] table.insert(char,string.char(hmjmddx-16)) end local jiami=table.concat(char,'') function HMGM(h,Text) return (Text:gsub('..', function (h) return string.char((tonumber(h,16))%999) end)) end local data = HMGM(HMOL,jiami) if string.find(data,'function') then char={} for i=1,#HMG do hmjmddx=HMG[i] table.insert(char,string.char(hmjmddx-16)) end local HMG=table.concat(char,'') g={} for i, v in ipairs(g) do if ipairs(g) ~= nil then return i..v end end print(load(data)) else os.exit() end char={} for i=1,#HMG do hmjmddx=HMG[i] table.insert(char,string.char(hmjmddx-16)) end local HMG=table.concat(char,'') function GGTM() XW={118,133,126,115,132,121,127,126,48,113,114,115,56,57,48,127,131,62,117,136,121,132,56,57,48,117,126,116} end end HMGGO()"
nf=gg.prompt({"RG={..} 只复制这个table里的东西"},{gg.getFile()},{"file"})
SSH=SSH:gsub('释怀',nf[1])
print(SSH)
pcall(load(SSH))
end
function S()
local s={}
local tr={}
s.a=gg.prompt({'选择文件','界面拦截','加载导出'},{'/sdcard/tencent/QQfile_recv/'},{'file','checkbox','checkbox'})
local a=loadfile(s.a[1])
local sel = select
					if s.a[2] then 
	----------------------------------------------------------------界面分节---------------------------------------------------
				 	if true then
					local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
----------------分-----------------
					end
					----------------分--------------------
if true then
     local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end


if true then
function x(s)
    if s==nil then t="读取" else
      if s:match("r") then t="读取"
       elseif s:match("w") or s:match("a") then t="写入" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert("脚本尝试以"..x(arg[2]).."的方式打开文件:\n"..arg[1].."\n\n请选择执行操作:","忽略","返回nil","返回随机文件")
    if x==2 then--返回nil
     result=nil
                    else
                        return orig(...)
                    end
     
   if x==3 then---返回随机文件
     file=orig(g.info[2] ,"w")
						file:write("666")
						file:close()
                        return orig(g.info[2] ,arg[2])
                         end
    return result
  end
  tr[hook] = orig
  io.open=hook
end
--[[						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end]]
			---------------------------------------拆卸-------------------------------
			if true then
			local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}				
							c=gg.getFile():match('[^/]+$')
								b=gg.getFile()							
								ll=[[:562 in function 'getinfo']]or[[ in function 'traceback']]
							
			return	orig(...):gsub(b,p)
										end
						tr[hook] = orig
						debug.traceback = hook
					end



										if true then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= nil and arg[1] > 1 then
								arg[1] = arg[1] + 1
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
---------------------------------------------------------------核心0开始运行---------------------------------------------------
	
	if true then
local orig = string.dump 
				local hook = 1 
				hook = function (...) local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end  
				tr[hook] = orig 
				string.dump = hook
			end
			if true then --tostring
				local orig = tostring 
				local hook = 1 
				hook = function (...) 
					local old = tostring 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					local ret = orig(arg[1], select(2, ...)) 
					tostring = old 
					return ret
				end 
				tr[hook] = orig 
				tostring = hook
			end
			if true then --debug.getupvalue 
				local orig = debug.getupvalue 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tostring[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end 
				tr[hook] = orig 
				debug.getupvalue = hook
			end
			if true then --debug.getinfo
				local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			
				local sum=1
				local a=orig(sum)
					while a do
					sum=sum+1
					a=orig(sum)
					end
					
					if arg[1] ~= nil and arg[1] > 0  then
						arg[1] = arg[1] + 1
					end 
					
						local ret=1
					if arg[1]<=sum-4 then
					ret=orig(arg[1], select(2, ...))
					else
			  ret=nil
			  end
			  
					return ret
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end					
----------------------------------------------------------------核心1开始_--------------------------------------------------
					if true then--核心2
					local orig = os.exit
  local hook = 1
  hook = function (...)
  qx2=qx2+1
    local arg = {...}
    gg.toast("已跳过"..qx2.."次退出")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx2=0
  os.exit = hook
  end	
----------------------------------------------------------------核心2开始--------------------------------------------------
if true then
local orig = os.remove
  local hook = 1
  hook = function (...)
  qx1=qx1+1
    local arg = {...}
    gg.toast("已跳过"..qx1.."次删除")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx1=0
  os.remove = hook
  end				
-----------------------------------------------------------------核心结束------------------------------------------------------------
if true then-----------------优化
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					if true then--------------优化
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
			if true then---------------优化
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
if true then----------------------优化
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
			if true then----------------------优化
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
					---------------------------------------开始-------------------------
				 if true then
				 hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
----------------------------------------------------------------核心3开始---------------------------------------------------
					for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							hook = function (...)
								local arg = {...}
								if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[解]'..s.a[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(s.a[1]) end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
      end
----------------------------------------------------------------界面分节---------------------------------------------------
	function gg.copyText()
	hook = function (...)
							return nil
						end
						gg.copyText = hook
	end
	----------------------------------------------------------------界面分节---------------------------------------------------
					if s.a[3] then--开始
				 	if true then
					local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
	----------------------------------------------------------------核心开始运行--------------------------------------------------
if true then
     local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end
	----------------------------------------------------------------核心0开始运行---------------------------------------------------
if true then
function x(s)
    if s==nil then t="读取" else
      if s:match("r") then t="读取"
       elseif s:match("w") or s:match("a") then t="写入" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert("脚本尝试以"..x(arg[2]).."的方式打开文件:\n"..arg[1].."\n\n请选择执行操作:","忽略","返回nil","返回随机文件")
    if x==2 then--返回nil
     result=nil
                    else
                        return orig(...)
                    end
     
   if x==3 then---返回随机文件
     file=orig(g.info[2] ,"w")
						file:write("666")
						file:close()
                        return orig(g.info[2] ,arg[2])
                         end
    return result
  end
  tr[hook] = orig
  io.open=hook
end
--[[						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end]]
	                -----------------------------分-----------------------------
	                	if true then
			local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}				
							c=gg.getFile():match('[^/]+$')
								b=gg.getFile()							
								ll=[[:562 in function 'getinfo']]or[[ in function 'traceback']]
							
			return	orig(...):gsub(b,p)
										end
						tr[hook] = orig
						debug.traceback = hook
					end



										if true then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= nil and arg[1] > 1 then
								arg[1] = arg[1] + 1
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
---------------------------------------------------------------核心0开始运行---------------------------------------------------
	
	if true then
local orig = string.dump 
				local hook = 1 
				hook = function (...) local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end  
				tr[hook] = orig 
				string.dump = hook
			end
			if true then --tostring
				local orig = tostring 
				local hook = 1 
				hook = function (...) 
					local old = tostring 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					local ret = orig(arg[1], select(2, ...)) 
					tostring = old 
					return ret
				end 
				tr[hook] = orig 
				tostring = hook
			end
			if true then --debug.getupvalue 
				local orig = debug.getupvalue 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tostring[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end 
				tr[hook] = orig 
				debug.getupvalue = hook
			end
			if true then --debug.getinfo
				local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			
				local sum=1
				local a=orig(sum)
					while a do
					sum=sum+1
					a=orig(sum)
					end
					
					if arg[1] ~= nil and arg[1] > 0  then
						arg[1] = arg[1] + 1
					end 
					
						local ret=1
					if arg[1]<=sum-4 then
					ret=orig(arg[1], select(2, ...))
					else
			  ret=nil
			  end
			  
					return ret
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end					
----------------------------------------------------------------核心1开始_--------------------------------------------------
					if true then--核心2
					local orig = os.exit
  local hook = 1
  hook = function (...)
  qx2=qx2+1
    local arg = {...}
    gg.toast("已跳过"..qx2.."次退出")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx2=0
  os.exit = hook
  end	
----------------------------------------------------------------核心2开始--------------------------------------------------
if true then
local orig = os.remove
  local hook = 1
  hook = function (...)
  qx1=qx1+1
    local arg = {...}
    gg.toast("已跳过"..qx1.."次删除")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx1=0
  os.remove = hook
  end				
-----------------------------------------------------------------核心结束------------------------------------------------------------
if true then-----------------优化
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					if true then--------------优化
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
			if true then---------------优化
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
if true then----------------------优化
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
			if true then----------------------优化
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
----------------------------------------------------------------核心结束2--------------------------------------------------
			local	file='/sdcard/123'
			function gg.setVisible()
			return true
			end
			local orig=print
			local hook=1
			hook=function(...)
		   local 	a=(...)
		   if a~=s.pr then s.pr=a
		   return orig(...) end
			end
			tr[hook]=orig
			print=hook
			local orig=gg.clearResults
			local hook=1
			hook=function()
			print('gg.clearResults()')
			end
			tr[hook]=orig
			gg.clearResults=hook
			
			local orig=gg.searchNumber
			local hook=1
			hook=function(...)
			local a={...} b=''
			for i=1,#a do
			if i==1 then
			b=b..'"'..tostring(a[i]) end
			if i==2 then 
				b=b..'",'..tostring(a[i])
				end
				if i>2 then 
			 b=b..','..tostring(a[i]) end
			end
			print('gg.searchNumber('..b..')')
				 end 
				 tr[hook]=orig
				 gg.searchNumber=hook
				 
				 gg.searchAddress=function(...)
				 local a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[1] end
				 end
				 print('gg.searchAddress('..b..')')
				 end
				 gg.setRanges=function(a)
				 print('gg.setRanges('..a..')')
				 end
				 gg.getResults=function(a)
				 print('gg.getResults('..a..')')
				 end
				 gg.editAll=function(...)
				 a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[i] end
				 end
				 print('gg.editAll('..b..')')
				 end
				 s.s=1
				 local orig=gg.toast
				 gg.toast=function(a)
				 print('gg.toast("'..a..'")')
				 orig('捕获'..s.s..'次搜索')
				 s.s=s.s+1
				 end
				 end
---------------------------------------开始-------------------------
				 if true then
				 hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
-----------------------------------辅助运行-----------------------------
return a()
end
	-------------运行结束--------------
function D()
abc=gg.prompt({'选择文件'},{'/sdcard/0'},{'file'})
if abc==nil then os.exit() end
pm=loadfile(abc[1])
if pm==nil then gg.alert('脚本有误') os.exit() end
pr=print
print=gg.getFile
function gg.toast(...)
return true
end
function gg.multiChoice(...)
pm=nil
return os.exit()
end
function gg.alert(...)
arg={...}
return true
end
function gg.choice(...)
pm=nil
return os.exit()
end
for i=1,99999999 do
gg.prompt=function (...)
o={tostring(i)}

return o
end
if pm then pcall(pm) else pr(abc[1]..'的key：'..i-1) break end
end
end
function P()
--gg.copyText("/storage/emulated/0/Notes")
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-43a566bd5f9fpb11_hd"
if gg.BUILD < 11630 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end

local g = {} 
g.last = gg.getFile() 
g.info = {g.last,g.last:gsub('[^/]+$', ''),
gg.VERSION,
gg.BUILD,
"/storage/emulated/0/Notes",
"123456789",
false,true}
while true do 
g.info = gg.prompt({
  '选择运行脚本:', --1
  '选择输出文件夹:', --2
  '使用VERSION版本:'..gg.VERSION,--3
  '使用BUILD版本:'..gg.BUILD,--4
  '伪装log路径',--5
  '使用QQ伪装',--6
  'QQ伪装',--8
  '[生成]Log',--9
  '🔰🔰🔰',--9
   }, 
g.info, {
   'file',
   'path', 
   'text',
   'text',
   'text',
   'number',
   'checkbox',
   'checkbox',
   'checkbox'
   })
     if g.info == nil then 
    break 
    end 
    if g.info[6] then
    local file = io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. g.info[6] .. "artfilter.config", "rb")
     if file then 
      file:close()
     else file=io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. g.info[6] .. "artfilter.config", "w+")
      end 
      end
     local filepath=g.info[1] 
     local path=filepath:gsub('[^/]+$', '')
     local filename=string.sub(filepath,#path+1,#filepath) 
     gg.VERSION = g.info[3] 
     gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+',
     function (m) m = m:sub(2)
     if #m == 1 then 
      m = '0'..m end return m end))) 
     gg.BUILD=g.info[4] 
     g.last = g.info[1] g.test = loadfile(g.last) 
     if g.test == nil then 
     gg.alert('载入脚本错误,请检查脚本是否错误.'..g.last) 
     else g.name = g.last:match('[^/]+$') 
    g.pathes = {g.info[2]..'/'..g.name, 
     g.last, '/sdcard/'..g.name, 
      gg.getFile():gsub('[^/]+$', '')..g.name,
      gg.EXT_FILES_DIR..'/'..g.name}
      g.file = nil 
      g.out = '' 
      g.try = '' for i, v in ipairs(g.pathes) 
      do g.out = v..".tmp.lua" 
      g.file = io.open(g.out, "w")
     if g.file ~= nil then 
      g.last = v:gsub('%.lua$', '')
      break
       end
       g.try = g.try..' '..v 
       end
      if g.file == nil then 
        gg.alert('写出文件失败,请检查:'..g.try) 
        else 
        g.file:close() 
        os.remove(g.out) 
        if g.info[8] then 
       local ggg = {}
       local funlist={{nil,nil}}
       local io_open = io.open 
       local oexit=os.exit
       local str =function(s)
      local ss= tostring(s)
      if ss=='nil' then ss='' 
      end
       return ss
       end
        if true then
        for k, v in pairs(gg) 
       do ggg[k] = v 
        end
       local sel = select
      local typ = type 
       local echo = print
      local tr = {}
       local msg = '' 
      local fun={} 
      local funindex=1 
       if true then 
      local file =path.."[Star dust]"..filename..".EM"
     local f = io_open(file, 'w') 
     f:write("-- 代码破解-来自恶魔拦截器.\n") 
     f:close() 
     local names = { setRanges = {'^REGION_'}, 
     startFuzzy = {'^TYPE_', '0x%X', '0x%X'}, 
     searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
     searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'}, 
     searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'}, 
     loadList = {nil, '^LOAD_'}, 
     saveList = {nil, '^SAVE_'},
     editAll = {nil, '^TYPE_'}, 
     copyMemory = {'0x%X', '0x%X'}, 
     dumpMemory = {'0x%X', '0x%X'}, }
     local rets = { alert = 1, 
     prompt = 1, 
     choice = 1, 
     multiChoice = 1, }
      local toFlags = function (check, value) 
      local ret = ''
      for k, v in pairs(ggg) do
       if k:match(check) ~= nil
       and 
       (value & v) == v then
       if ret ~= '' then ret = ret..' | ' 
       end ret = ret..'gg.'..k value = value & ~v 
       end
       end 
       if ret == '' or value ~= 0 then
       if ret ~= '' then ret = ret..' | ' 
       end
        ret = ret..value 
      end
      return ret 
     end 
     for i, v in pairs(ggg) do
     if typ(v) == 'function' and i ~= 'getLine' and i ~= 'isVisible' and i~='multichoice' and i~='prompt'  and i~='clearResults' then 
    local orig = v
     local name = i
     local hook = 1
      if i=='choice' then hook = function (...) 
     local arg = {...}
      local list=arg[1] 
      local f = io_open(file, 'a')
      local index= orig(...) 
      f:write("\n---"..list[index].."---\n")
       if funlist[funindex][2]==nil 
       or funlist[funindex][2]=='' then
      funlist[funindex][1]=list[index]
       elseif funlist[funindex][1]~=nil then 
       funindex=funindex+1
        funlist[funindex]={nil,nil} 
        funlist[funindex][1]=list[index] 
        end f:close()
         return
          index 
          end
           elseif i=='getFile' then hook= function() 
           return 
           filepath
            end 
           else hook = function (...) 
         local arg = {...}
         local f = io_open(file, 'a')
         f:write('gg.'..name..'(')
         if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..'gg.'..name..'(' end for j, a in ipairs(arg) do 
        if j ~= 1 then 
        f:write(', ')
        if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..',' 
         end 
         end 
         if typ(a) == 'string' then 
         f:write('"')
         if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..'"' 
         end 
         end
         local b = a
         if typ(a) == 'number'
        and 
        names[name] ~= nil
       and 
      names[name][j] ~= nil then
      local check = names[name][j] 
      if check:sub(1, 1) ~= '^' then
      if a == 0 or a == -1 then b = a
      else
       b = check:format(a)
       end 
       else 
       b = toFlags(check, a)
       end 
      end
       b = str(b) f:write(b) 
       if funlist[funindex][1]~=nil then
       funlist[funindex][2]=str(funlist[funindex][2])..b
       end
      if typ(a) == 'string' then 
      f:write('"')
      if funlist[funindex][1]~=nil then 
      funlist[funindex][2]=str(funlist[funindex][2])..'"'
      end
     end
     end f:write(")") 
     if funlist[funindex][1]~=nil then
      funlist[funindex][2]=funlist[funindex][2]..")" 
      end
       if rets[name] ~= nil then
       local ret = orig(...)
       f:write(" --[[ ") f:write(str(ret)) 
       f:write(" ]]\n") f:close() 
       return ret 
       end f:write("\n")
       if funlist[funindex][1]~=nil then 
       funlist[funindex][2]=str(funlist[funindex][2]).."\n"
       end 
       f:close() 
       if name=='alert' or name=='getResults' or name=='setRanges' or name=='editAll' then return nil
      elseif name=='searchNumber' then 
       ggg.toast('已自动跳过搜索过程') return nil 
       else 
       return orig(...) 
       end
        return nil 
        end
         end 
       tr[hook] = orig gg[i] = hook 
       end 
       end 
       msg = msg..'\拦截结果将写出到: '..path..'[Star dust]'..filename..".log"
       end 
       echo(msg) ggg.alert('运行脚本时,请输入密码'..msg) 
       msg = nil 
       if true then 
       local orig = os.exit 
       local hook = 1 
       if g.info[9] then hook = function (...)
       local Skr='666'
        end 
       else hook = function (...) SkrSkr(666) 
       end 
       end tr[hook] = orig os.exit = hook
        end
        if true then
        local orig = string.dump
        local hook = 1 hook = function (...)
        local arg = {...}
        if tr[arg[1]] ~= nil then
       arg[1] = tr[arg[1]] 
       end 
       return 
       orig(arg[1], sel(2, ...))
        end 
        tr[hook] = orig 
       string.dump = hook 
       end
       if true then
       local orig = tostring
       local hook = 1 hook = function (...)
      local old = tostring 
      local arg = {...} 
      if tr[arg[1]] ~= nil then arg[1] = tr[arg[1]]
      end
      local ret = orig(arg[1], sel(2, ...)) tostring = old 
      return ret
      end 
      tr[hook] = orig tostring = hook
     end 
     if true then
      local orig = debug.getupvalue 
      local hook = 1 hook = function (...)
       local arg = {...}
       if tr[arg[1]] ~= nil then 
      arg[1] = tr[arg[1]] 
      end 
      return orig(arg[1], sel(2, ...)) 
      end
       tr[hook] = orig debug.getupvalue = hook
      end
       if true then 
      local orig = debug.getinfo 
      local hook = 1 hook = function (...)
      local arg = {...} 
     if arg[1] ~= nil
     and 
     arg[1] > 1 then 
     arg[1] = arg[1] + 1
      end 
       return 
      orig(arg[1], sel(2, ...)) 
      end 
     tr[hook] = orig debug.getinfo = hook 
      end
      if name=='alert' then 
	echo(arg)
wzsh:write('gg.alert("'..arg[1]..'")\n--[[ return: 1 ]]\ndebug.traceback()\n')
end
	if name=='editAll' then
	echo(arg)
wzsh:write('gg.editAll("'..arg[1]..'", gg.TYPE_FLOAT)\n')
end		
 print(name)			 
												 
     if false then
     local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end
     if false then
     local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('gg.alert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						gg.alert = hook
						end
     if false then
     local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    gg.toast("已跳过os.exit")
    return true
  end
  tr[hook] = orig
  os.exit = hook
  end
     if false then 
     local orig = os.remove 
     local hook = 1 hook = function (...)
      local arg = {...} echo('os.remove:', arg)
      return true
       end 
       tr[hook] = orig
       os.remove = hook
       end    
      if false then
        local orig = assert
        local hook = 1 hook = function (...)      
        local arg = {...}
       echo('assert:', arg) 
      return orig(...)
      end
       tr[hook] = orig
      assert = hook
       end
       if false then
       local orig = io.open
       local hook = 1 hook = function (...) 
       local arg = {...} echo('io.open:', arg)
       return orig(...)
       end 
       tr[hook] = orig io.open = hook 
       end 
       end 
      local test = g.test g = nil pcall(test) 
      local function CreateLuaText(fl) fl[#fl+1]={'退出脚本','print(" By 恶魔")\nos.exit()\n'}
      local result='gg.alert("[LOG]阿鼻:脚本已生成")\nfunction Main()\nmenu = gg.choice({' 
        local index=1
       for
       index=1,#fl 
       do
      result=result..'"'
       result=result..fl[index][1] 
       result=result..'"' 
      if index~=#fl then 
      result=result..','
       end
       end 
       result=result..'},nil,"选择开启功能")\n' 
       for 
        index=1,#fl
        do 
       result=result..'if menu=='..index..' then '
       if index==#fl then 
      result=result..'Exit() end\n'
       else
         result=result..'F'..index..'() end\n' 
        end 
        end
        result=result..'vis=false\nend\n ' 
        for index=1,#fl 
       do 
       result=result..'\n---'..fl[index][1]..'---\nfunction ' 
        if index==#fl then
        result=result..'Exit()\n' 
      else 
      result=result..'F'..index..'()\n' 
      end 
     result=result..str(fl[index][2])..'end\n'
       end 
     result=result..'\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend'
     return 
     result
       end 
     local luas=CreateLuaText(funlist) 
   local todo= ggg.alert(luas,"复制脚本","脚本导出","告辞")
     if todo==1 then 
    ggg.copyText(luas) 
   ggg.toast("已复制脚本")
    elseif todo==2 then 
    local file=io_open(path.."[LOG lua]阿鼻."..filename..".lua","w+") 
    file:write(luas)
     file:close() 
    ggg.toast("已写出到:"..path.."[LOG lua]阿鼻."..filename..".lua") 
     end 
	 break 
	 end
	 end
	 end
     end
if g.info[9] then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
end
function A()--A入口
E=osso({--E面板
"💙花海大人💙",--1
"❤CODEEM❤",--2
"💛CX猎黑💛",--3
"💚SSS~LOG💚",--4
"💜CXHOOK2.27💜",--5
"💝MX一建解💝",--6
"🇨🇳TC拦截器🇨🇳",--7
"💔Return to the world💔"--8
},nil,
"猜猜我是谁💘")
if E == nil then A() end--nil
if E == 1 then X() end--1
if E == 2 then C() end--2
if E == 3 then V() end--3
if E == 4 then B() end--4
if E == 5 then N() end--5
if E == 6 then M() end--6
if E == 7 then J() end--7
if E == 8 then Main() end--出口
end--A结束
function X()

----By Code 

if gg.BUILD < 11630 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]


local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb99_hd"


 g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.getFile():gsub('%lua$', '')..'Code'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end


qx=gg.alert("欢迎使用 By  Code 拦截器 \n\n\n\t➣ 采用全方面拦截机制\n\n\t➣ Code全局编写制作\n\n\t➣ 在Enyby拦截器上做的深度优化\n\n\t➣ 版权归 Code 所有 © \n\n\t➣ 感谢您的使用！\n\n","确定","","查看更新内容")
		if qx == 1 then 
		end
		if qx == 3 then 
		gg.alert("已是最新版本！\n\n在之前的版本做的改动:\n1.优化了拦截功能与log刷内存的现象\n2.增加了函数赋值与伪装log路径\n3.采用压缩输出load，无限编译不在话下\n4.拦截优化\n5.增加伪装和移除QQ存在\n6.增加了爆破功能\n7.增加了简单拦截输出\n\n若拦截器出现bug，请及时联系QQ:2732797595进行修复。","复制QQ")
gg.copyText(2732797595)
		end
		
		

function Main()
			g.sel = gg.choice({
				'设置跳过执行函数', -- 1
				'函数赋值调用', -- 2
				'简单拦截输出', -- 3
				'其他爆破', -- 4
				'开始拦截' ,--5
					'退出'},2019,'💀 By Code 拦截器   \n💀 禁止倒卖！原创QQ:3509175514©')
					
					if g.sel == 1 then tgzzhs() end---跳过执行函数
					if g.sel == 2 then hsfz() end---函数赋值
					if g.sel == 3 then jdljsc() end---简单拦截输出
				if	 g.sel == 4 then baopo() end---其他爆破
				if	 g.sel == 5 then kslj() end---开始拦截
					if	 g.sel == 6 then Exit() end
					
  XGCK = -1
end
			
--			if g.sel == nil then Main()  end
			









			
						
												
function tgzzhs()--跳过执行函数
if tg == nil then
	tg = {
	"getLine;isVisible;setVisible;getFile;addListItems",
	 false,
	  false,
	  
	  false,
	  false,
	  false,
	  
	  false,
	  false}
end

gg.toast("设置成功后请点击确定")

--tg(跳过)
				tg = gg.prompt({
				'请输入要跳过拦截的函数:(多个用;隔开)',
				'跳过alert', 
				'跳过toast',
				
		'跳过os.exit', 
		'跳过os.remove',
		'跳过sleep',
		
		'跳过包名检测',
		'跳过搜索',
		'print打印优化',
		
		'跳过copyText'}, tg, {"text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
		
				if tg == nil then Main()  end
	end

 
			


























									
																		
																											
																																											
function hsfz()--函数赋值
--赋值
if fz == nil then
fz={
gg.VERSION,
gg.BUILD,
gg.PACKAGE,

	"/storage/emulated/0/Notes",
	false,
	
	"待添加...",
	"3509175514",
	
	false,
	false}
end

gg.toast("设置成功后请点击确定")

--赋值
	fz = gg.prompt({
				'VERSION版本号:',
				'BUILD版本号:', 
				'包名:',
				
				'伪装GGlog路径:',
				'io.open文件操作检测(弹出提示)',
				
				'伪装QQ号存在:(可添加多个使用;分隔)',
				'移除QQ号存在:(可添加多个使用;分隔)',
				
				'无视debug.sethook防拦截检测',
				'无视debug.getlocal防拦截检测'}, fz, {"path","number","text","path","checkbox","text","text","checkbox","checkbox"})
				
gglog = fz[4]--伪装log路径
wjczjc= fz[5]--文件操作检测
	
yesqq = fz[6]--伪装QQ存在
noqq = fz[7]--移除QQ存在

wssethook=fz[8]---无视sethook
wsgetlocal=fz[9]--无视getlocal
			
					if hsfz == nil then Main()  end
						end
					
						
							
								
















		
				
								
									
function jdljsc()--简单拦截输出
local s={}
local tr={}
s.a=gg.prompt({'选择文件','加载导出','调用导出'},{'/sdcard/tencent/QQfile_recv/'},{'file','checkbox','checkbox'})
local a=loadfile(s.a[1])
local sel = select
					if s.a[2] then 
					for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							hook = function (...)
								local arg = {...}
								if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[Code解]'..s.a[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(s.a[1]) end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
							end
					end
	function gg.copyText()
	end
					if s.a[3] then
			local	file='/sdcard/123'
			function gg.setVisible()
			return true
			end
			local orig=print
			local hook=1
			hook=function(...)
		   local 	a=(...)
		   if a~=s.pr then s.pr=a
		   return orig(...) end
			end
			tr[hook]=orig
			print=hook
			local orig=gg.clearResults
			local hook=1
			hook=function()
			print('gg.clearResults()')
			end
			tr[hook]=orig
			gg.clearResults=hook
			
			local orig=gg.searchNumber
			local hook=1
			hook=function(...)
			local a={...} b=''
			for i=1,#a do
			if i==1 then
			b=b..'"'..tostring(a[i]) end
			if i==2 then 
				b=b..'",'..tostring(a[i])
				end
				if i>2 then 
			 b=b..','..tostring(a[i]) end
			end
			print('gg.searchNumber('..b..')')
				 end 
				 tr[hook]=orig
				 gg.searchNumber=hook
				 
				 gg.searchAddress=function(...)
				 local a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[1] end
				 end
				 print('gg.searchAddress('..b..')')
				 end
				 gg.setRanges=function(a)
				 print('gg.setRanges('..a..')')
				 end
				 gg.getResults=function(a)
				 print('gg.getResults('..a..')')
				 end
				 gg.editAll=function(...)
				 a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[i] end
				 end
				 print('gg.editAll('..b..')')
				 end
				 s.s=1
				 local orig=gg.toast
				 gg.toast=function(a)
				 print('gg.toast("'..a..'")')
				 orig('捕获'..s.s..'次搜索')
				 s.s=s.s+1
				 end
				 end
return a()

end





























function baopo()---其他爆破
function ks()
x=0
menu = gg.choice({
'B加密解密',
'YIC加密解密',
'无分段B加密解密',
'自定义算法',
'返回'
  },x,"Code爆破工具")
if menu == 1 then b() end
if menu == 2 then yic() end
if menu == 3 then wfd() end
if menu == 4 then gg.alert('还没写') end end
function b()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','设置分隔符','设置开始','设置结尾'}, {'/storage/emulated/0/','B','0','1000'}, {'file','text','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("加载字符失败")
b()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[3]
ii=wj[4]
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
function getByte(data, flag)
local array = {}
local lens = string.len(data)
if (flag == false) then
for i=1,lens do
array[i] = string.byte(data, i)
end
return array 
else
for i=1,lens do
array[i-1] = string.byte(data, i)
end
end
return array,lens 
end
function getChars(bytes)
local array = {}
for key, val in pairs(bytes) do
array[key] = string.char(val) end
return array
end
function string.split( str,reps )
local resultStrList = {} string.gsub(str,"[^"..reps.."]+",function ( w )  table.insert(resultStrList,w)
end)
return resultStrList
end
function decryptData(data, keys)
local result = ""
local dataArr = string.split(data, wj[2])
local keyArr,keyLen = getByte(keys, true)
for index,value in pairs(dataArr) do
bytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])
result = result..string.char(bytes)
end
if load(result)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'B解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'B解密') gg.setVisible(true) os.exit() end
end
data = eee
decryptData(data,iii)end
end
function yic()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','开始','结束'}, {'/storage/emulated/0/','0','1000'},{'file','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("失败加载脚本")
yic()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[2]
ii=wj[3]
function Yicjm(key,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
local data = Yicjm(iii,eee)
if load(data)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'YIC解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'YIC解密') gg.setVisible(true) break end
end
end
function wfd()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','开始','结束'}, {'/storage/emulated/0/','0','1000'},{'file','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("失败加载脚本")
wfd()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[2]
ii=wj[3]
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
function string.split( str,reps )
lens=string.len(str)
 str=string.sub(str, 48445,lens-46622)
   local resultStrList = {}
string.gsub(str,'[^'..reps..']+',function ( w )
table.insert(resultStrList,w)
    end)
    return resultStrList
end
function decryptData(data, key)
local result = ''
local dataArr = string.split(data, '‭')
for index,value in pairs(dataArr) do
bytes=(tonumber(value) + 256 - 220 - iii+ 255999744) % 256
result = result..string.char(bytes)
end
if load(result)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'无分段B解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'无分段B解密') gg.setVisible(true) os.exit() end end
local data = eee
decryptData(data,iii)
end
end
ks()

end					






























																												
			
function kslj()--开始拦截
			

			
			if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''), 
	"400",
	true,
	true,
	false,
	true,
	false,
	false}
end
if g.info[3] == nil then g.info[3] = "400" end

while true do
gg.toast('By Code compiler v1.5')				
	g.info = gg.prompt({'选择需要拦截的文件:', '选择输出的可写路径:',
		 '日志调用“load”的最小大小:','拦截load','拦截log','破解密码','拦截优化','反拦截追踪(核心)','log无视刷内存'}, g.info, {'file', 'path', 'number',"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})

		 
		if g.info == nil then Main()  end
			gg.saveVariable(g.info, g.config)
	gg.VERSION=fz[1]
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	
--	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = g.info[1]
	g.test = loadfile(g.last)
	g.loaded = g.last
		if g.test == nil then
		gg.alert('加载失败: '..g.last)
	else
	
		g.name = g.last:match('[^/]+$')		
local data=wz:gsub("运行文件",g.last)
local wc=g.last:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",gglog)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
	
	
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('Failed write to file. Checked:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			
			if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
	
	
	
	
	
			 local cs1="0"
		g. youhua=g.info[7]--优化
		 fljzz=g.info[8] --反拦截追踪
		 wssnc=g.info[9]--无视刷内存

		 		 
tgzzhs = tg[1] --跳过执行函数
tgalert = tg[2] --跳过alert
tgtoast = tg[3] --跳过toast


tgtc = tg[4]--跳过os.exit
tgsc = tg[5] --跳过os.remove
tgsleep = tg[6]--跳过sleep


tgbmjc = tg[7]--跳过包名检测
tgss = tg[8] --跳过搜索
youhuaprint = tg[9]--print打印优化
tgcopy = tg[10]--跳过copyText


printt=false	--print打印优化




cs2=1
tx=true


					local wzlogdata=gglog.."/"..g.last:match('[^/]+$')..".log.txt"
					
					
					
					
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local gg_getFile = gg.getFile
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					
					if g.info[4] == true then--load
					
					
					 local fname = g.info[2]..'/'..'[Code]'..g.name
     		local fnamee = g.info[2]..'/'..'[Code load]'..g.name
 						local wjm=g.name
 						local fnameee = g.info[2]..'/'..'[Code load_'
					
					
					
						local load_cnt = 0
						local fname = rnd..'.load.lua'
						
						local min_size = tonumber(g.info[3])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
						local							filpe = io_open(wzlogdata, "w+")
						
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fname, 'wb')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

							f:write("load_")---随机文件名输出
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
								:write(content)
							
								if content~=contentt then
						if content:match("#2000") or content:match("#131") then
						else
							cs1=cs1+1					
							if tx then
				ggaiert=	gg.alert("已成功捕捉到"..cs1.."次load.\n将保存为 :\n[Code load_"..cs1.."]"..wjm.."\n\n〖"..content:sub(1,200000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				gg.toast("已成功捕捉到"..cs1.."次load.\n将保存为:"..cs1.."]"..wjm.."")
				end
					contentt=content					
					f = io_open(fnameee..""..cs1.."]"..wjm, 'w')					
							end
								f:write(content)								
							end
							
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
--						msg = msg..'\n\n来自调用“加载”的所有数据将被转储到tar存档中: '..fname
					end
					
							if g.info[5] == true then--拦截log
						local file = rnd..'.log.txt'
						local f = io_open(file, 'wb')
						f:write("-- By Code compiler v1.5\n-- QQ :3509175514 \n\n")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
--							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
if type(v) == 'function' and tgzzhs:match(i)==nil then--跳过拦截函数
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'ab')
									if i == 'choice' then--判断单选
          if rets[name] ~= nil then
            local f = io_open(file, 'a')
            local ret = orig(...)
            local arg = {...}
            f:write("\n --------------- ")
            f:write(arg[1][ret])
            f:write(" ---------------\n")
            return ret
          end
        end
        if i == 'multiChoice' then--判断多选
          if rets[name] ~= nil then
            local f = io_open(file, 'a')
            local ret = orig(...)
            local arg = {...}
            local gs = {}
            for w in string.gmatch(tostring(ret), "%[") do
              gs[#gs + 1] = w
            end
       --     print("一共选中" .. #gs .. "个选项")
            local date = tostring(ret)
            local sz = {}
            for i=1 ,#gs do
              kaishi = string.find(date, "%[")+1
              jiewei = string.find(date, "%]")-1
              nameshu=string.sub(date , kaishi , jiewei)
              date= string.gsub(date, "%[+", "", 1)
              date= string.gsub(date, "%]+", "", 1)
              sz[i]=tonumber(nameshu)
            end
            table.sort(sz)
            for j, a in ipairs(sz) do
              f:write("\n -------------- ")
              f:write(arg[1][a])
              f:write(" --------------\n")
            end
            return ret
          end
        end
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									if tgss then
											if name=='searchNumber' or i=='searchNumber'then --跳过搜索
									 return true
									  end
									return orig(...)
								end
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
--						msg = msg..'\n\n所有GG呼叫都将被记录到文件中: '..file
					end
					
					ggg.prompt({'跳过检测:'}, {g.loaded}, {'file'})
--[[					
					echo('Hook started.'..msg..'\n')
					ggg.alert('钩子开始了。运行脚本、输入密码等 '..msg)
					msg = nil
]]					
					





		if youhuaprint then  --print打印优化
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] ~= printt  then
						printt=arg[1] 
							return orig(...)
							else
							return true
						end
						end
						tr[hook] = orig
					print	 = hook
					end





if tgalert then---跳过alert
hook = function (...)
							return nil
						end
						gg.alert = hook
						gg.toast("已跳过gg.alert的执行")
						end





					if tgtoast then---跳过toast
						local orig = gg.toast
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= toast or cs2=="30"or cs2=="20" then
						toast=arg[1] 
							return orig(...)
							else
								cs2=cs2+1
							return true
						end
						end
						tr[hook] = orig
						gg.toast = hook
					end













if tgtc then--os.exit()跳过
local orig = os.exit
						local hook = 1
						hook = function (...)
							ggfh=ggg.alert('文件尝试调用os.exit函数',"禁止","","允许调用")
							local arg = {...}					
						if ggfh==3 then
 							select= orig(...)
							else
							select=gg.setVisible(true)
								end
								return select
						end
						tr[hook] = orig
					os.exit	 = hook
					end










if tgsc then --os.remove跳过
				local orig = os.remove
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止文件:"..arg[1].."的删除")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end












							if tgsleep  then ----------------------跳过sleep
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.sleep		 = hook
					end











if tgbmjc then---跳过包名检测
hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
						
	
	
	
	
	
	
	
	
		if wjczjc then--文件操作检测
								 function x(s)
    if s==nil then t="读取" else
      if s:match("r") then t="读取"
       elseif s:match("w") or s:match("a") then t="写入" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert("脚本尝试以"..x(arg[2]).."的方式打开文件:\n"..arg[1].."\n\n请选择执行操作:","忽略","返回nil","返回随机文件")
    if x==2 then--返回nil
     result=nil
                    else
                        return orig(...)
                    end
     
   if x==3 then---返回随机文件
     file=orig(g.info[2] ,"w")
						file:write("666")
						file:close()
                        return orig(g.info[2] ,arg[2])
                         end
    return result
  end
  tr[hook] = orig
  io.open=hook
end
--[[						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end]]


					
					













if g.youhua then-----------------优化
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					if g.youhua then--------------优化
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
			if g.youhua then---------------优化
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
if g.youhua then----------------------优化
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
			if g.youhua then----------------------优化
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end














if fljzz then--反拦截追踪
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if fljzz then--反拦截追踪
						local orig = tostring
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
if fljzz then	--反拦截追踪
  local t="stack traceback:\n	"..g.info[1]..": in main chunk\n	[Java]: in ?"
  local orig = debug.traceback
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return t
  end
  tr[hook] = orig
  debug.traceback = hook
end
if fljzz then	--反拦截追踪
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = g.info[1],
      ['source'] = '@'..g.info[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..g.info[1],
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
    elseif str(arg[1])=="3" then return nil 
    elseif str(arg[1]):find("storage") then return cg[2]
    
    else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end

	
		
			
				







if wssnc then----LOG防刷内存
	local orig = gg.removeListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.removeListItems		 = hook
					end
if wssnc then----LOG防刷内存
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end
if wssnc then----LOG防刷内存
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.addListItems = hook
					end








	

if tgcopy then---跳过gg.copyText
hook = function (...)
							return nil
						end
						gg.copyText = hook
						end
		
													










if wssethook then --无视sethook
				local orig = debug.sethook
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				debug.sethook		 = hook
					end
if wsgetlocal then --无视debug.getlocal
				local orig = debug.getlocal
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						debug.getlocal = hook
					end













if true then------------移除和伪装QQ存在
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}			
--[[				if arg[2] ==nil then
filpe:write('\nio.open("'..arg[1]..'")')
else
filpe:write('\nio.open("'..arg[1],'",'..'"',arg[2]..'")')
end]]
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)--打印io.open的检测路径
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'Code',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
			if true then-----------移除和伪装QQ存在
						local orig = io.input
						local hook = 1
						hook = function (...)
							local arg = {...}
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)---打印io.open的检测路径
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'Code',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
					
												














																																																																
	
																																																																			
																																																																						
																								
									
						

if g.info[6] == true then 
local rnd = g.last..'_'..os.time()..'_'..math.random()
					local pa = math.random(10, 99)
					local ss = math.random(10, 99)
					local file = rnd..'.pass.log'
					local f = io.open(file, 'w')
					gg.alert('显示可能的密码。仅适用于简单的保护以及密码是否在代码中。在提供输入密码时，必须输入密码 "'..pa..ss..'", 没有空格或额外字符。')
					local cache = {}
					cache[pa..ss] = 1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function ()
						local stack = {}
						for j = 1, 500 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then
										for i, v in pairs_(val) do
											stack[v] = 1
										end
									end
								end
							end
						end
						if stack[pa..ss] ~= nil then
							for v, _ in pairs_(stack) do
								if cache[v] == nil then
									print_(v)
									cache[v] = 1
									if f ~= nil then f:write(v.."\n") end
								end
							end
						end
					end
					debug.sethook(hook, '', 1)
				end
				end


	print("➣ Code拦截器\n➣ QQ:3509175514\n➣ 足够用心才足够特别！\n-------------------------------------------------")

					
				end
						local test = g.test
				g = nil
				
				return test()
			end
		end
	end



function Exit()
	print("足够用心才足够特别")
print("足够用心才足够特别")
os.exit()
for qx=0,50000 do
gg.alert("触发循环，请强制退出脚本!")
gg.toast("触发循环，请强制退出脚本!")
end
os.exit()
end --结束



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
end
function C()
--gg.copyText("/storage/emulated/0/tencent/QQfile_recv")
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]


local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb99_hd"
if gg.BUILD < 11630 then
	gg.alert('您正在使用旧版本的GameGuardian。有些函数可能不起作用,或者不按预期工作。')
end


local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'恶魔'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	"1725935400",
	"415249342",
	"无","sstool.only.com.sstool;",
	"400",true,true,true}
end

while true do				
	g.info = gg.prompt({
    	'选择文件:', --1
    	'输出的文件夹:',--2
		'使用VERSION版本:'..gg.VERSION, --3
		'使用BUILD版本:'..gg.BUILD,--4
		'伪装GGlog储存路径',--5
		'伪装QQ存在可添加多个[;] 分隔 以下都可',--6
		'移除QQ存在',--7
		'伪装App包名存在',--8
		'移除App包名存在',--9
		'最小的输出环境 "load"',--10
		'🍉revo6.0请联系恶魔破解',--11
		'[🍉Load]',--12
		'[🍉Log]',--13
		'[🍉SH模式]',--14
		'[🍓防止检测文件(密码跳过)]',--15
		'[🍓防止验证文件]',--16
		'[🍓防止删除文件]',--17
		'[🍓LUA藐视弹窗]',--18
		'[🍶本拦截小白模式]',--19
		'[🍚拦截LOG防刷内存]',--20
		'[🍓易游验证破解]',--21
		'[🍓调试模式『不懂勿开』]',--22
		'[🍓密码数据解析]',--23
		'[🐒佛门罗汉截]',--24
		'[一切验证跳过加强版]'}
		 ,g.info, {'file', 'path', 'text','text','text','text','text','text','text','number','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local		fullName = g.info[1]
 	g.sucdz=g.info[2]
	gg.VERSION = g.info[3]
	gg.BUILD=g.info[4]
 	g.gglog=g.info[5]
	
--g.qq="/storage/emulated/0/tencent/MobileQQ/artfilter/"..g.info[6].."artfilter.config"
local yesqq=g.info[6]
local noqq=g.info[7]
local yesapp=g.info[8]
local	noapp=g.info[9]
 	g.acdax=g.info[10]
	g.youhua=g.info[11]
	g.load=g.info[12]
	g.log=g.info[13]
 	wzlog=g.info[14]
 	g.assert=g.info[15]
 	g.open=g.info[16]
 	g.remove=g.info[17]
 	g.alert=g.info[18]
 	g.xbms=g.info[19]
 	g.wssnc=g.info[20]
 	g.yiyou=g.info[21]
 	g.tiaoshi=g.info[22]
 	g.mima=g.info[23]
 	g.flj=g.info[24]
 	g.yz=g.info[25]
------------------------------------------------------------------------------------------------------------------------
local	fffile=io.open(fullName,"r")
local	contentt=fffile:read("*a")
	if 		 contentt:match("Revo")  then
		g.load=false
		g.youhua=false
		g.load=false
		g.open=false
		g.assert=false
		g.remove=false
		g.alert=false
		gg.alert("小白模式:\n检测到revo加密，已自动关闭会被检测到的功能")
		end

                      ----------------------------------------------------------------
if wzlog then
gg.alert("✅伪装修改器更多内置log功能，已开启！")
wzwj=io.open(fullName..".log.txt","w")
print(".\n\n✅伪装修改器更多内置log功能，已开启！\n\n.")
end

	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-------------------------------------------------------------------
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('\t\t\t\t您的GG版本: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(fullName)
	g.loaded = fullName
	if g.test == nil then
		gg.alert('GameGuardian: '..fullName)
	else
	gg.name = fullName:match('[^/]+$')		
local data=wz:gsub("运行文件",fullName)
local wc=fullName:gsub("/"..gg.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",g.gglog)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
g.name = fullName:match('[^/]+$')
		g.pathes = {g.sucdz:gsub('/?$', '')..'/'..g.name, fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}

		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				fullName = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('写入文件失败。检查过了。:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			local cs1="0"
		local cs2="1"
		local cs3="1"
		local cs4="0"
		local cs5="1"
		local cs6=1
		local csp=1
		local menui = 1
		local lleve=""
		local wengin=fullName 
		local logdz=g.gglog
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
						local slog=false
					local wzlogdata=g.gglog.."/"..fullName:match('[^/]+$')..".log"
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local string_gsub=string.gsub
					local msg = ''
					local rnd = fullName..'_'..os.time()..'_'..math.random()
					local gg_getFile=gg.getFile
					local load_cnt = 0
						local fname = g.sucdz..'/'..'[恶魔]'..g.name
						local fnamee = g.sucdz..'/'..'[恶魔 Load]'..g.name
						local wjm=g.name
						local fnameee = g.sucdz..'/'..'[恶魔 Load]'
						local min_size = tonumber(g.acdax)
						local getResultsCount=false
						local searchNumber=false
						local printt=false
						local fe=false
						local tx=true
						local opo=""
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
					local lload = load
						local string_char=string.char
						local os_remove = os.remove
						
						local							filpe = io_open(wzlogdata, "w+")
					if g.load then
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

				---[[			:write(ch(sfmt('%07d', load_cnt)))
						--[[		:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
	:write(ch(sfmt('%011o', size)))
    :write("\x0000000000000\x00")
	:write(sfmt('%06o', checksum))
	:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
					
	
						if content~=contentt then
						if content:match("#2000") or content:match("#131") then
						else
							cs1=cs1+1					
							if tx then
				ggaiert=	ggg.alert("成功获取"..cs1.."次load.\n将保存为 :\n[恶魔 Load("..cs1..")]"..wjm.."\n\n〖"..content:sub(1,800000).."\n〗","写出并出源","")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次load.\n将保存为:("..cs1..")]"..wjm.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1..")]"..wjm, 'w')					
					
					end
								f:write(content)								
							end
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
	    	local orig = _G[i]
			local hook = 1
			local type = v
			hook = function (...)
			local arg = {...}
			local content = arg[1]
			if content ~= nil and type == 0 then
			content = nil
			local f = io_open(arg[1], "rb")
			if f ~= nil then
			content = f:read("*a")
			f:close()
			end
			end
			if content ~= nil then
			local ret = nil
			local total = 0
			local file = fname..load_cnt..'.lua'
			if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\n来自调用“load”的所有数据将被转储到tar存档中。: \n'..fnamee
					end
					ggg.prompt({'跳过检测:'}, {g.loaded}, {'file'})
					if g.log then
						local file = g.sucdz..'/'..'[Stardust Log]'..g.name
						local f = io_open(file, 'wb')
					f:write("--Star dust\n")
             		f:write("--来自恶魔的私人拦截器\n")
             		f:write("")
             		f:write("")
             		f:write("")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
						if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
							local orig = v
							local name = i
							local hook = 1
							hook = function (...)
								local arg = {...}
								local f = io_open(file, 'a')
								-----
									if true then
							if name=='alert' then 
							local arg = {...}
										 end
							if name=='getFile' then 
							local arg = {...}
										 end
								if name=='editAll' then 
								local arg = {...}
												 end												 
												 end
												 ------
							if name=='searchNumber' then 
									local arg = {...}
						if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
	    		return true
	    		end								
	    	 	  end
			  	if name=='clearResults' then 					
				return true
				end
									  
									  -----------
				
  ----
			    if i == "multiChoice" or i== "choice" then
				local arg = {...}
				local gss = {}				
				if			 menui==1 then
	    		f:write("-----------------------------LOG 恶魔 LOG-----------------------------\n\n")
				for c=1,#arg[1] do 							
				f:write("-----------------------------LOG 恶魔[",c.."]"..arg[1][c].."-----------------------------\n")
				end										
				menui=2
				end
                end
				if i == 'choice'  then
				if rets[name] ~= nil then
				local f = io_open(file, 'a')
				local ret = orig(...)
				local arg = {...}
				if ret ~=nil then
				f:write("\n\n-----------------------------LOG 恶魔 [",ret.."]"..arg[1][ret].."-----------------------------\n")
				--		f:close()
				return ret
				end
				end
				end
	    		if i == 'multiChoice'  then
				if rets[name] ~= nil then
	    		local f = io_open(file, 'a')
				local ret = orig(...)
				local arg = {...}
				local gs = {}								
				for w in string.gmatch(str(ret), "%[") do
	    		gs[#gs + 1] = w
				end
--			echo("一共选中" .. #gs .. "个选项") 
				local date = str(ret)
	    		local sz = {}
    			for i=1 ,#gs do
									--查询字符位置
				kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
					opo=sz
					pop=arg[1]
		   			csp=#gs									
	       			  f:write("\n\n-----------------------------LOG 恶魔 LOG-----------------------------\n")
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if fe then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																			
												cs4=cs4+1
												a=opo[cs4]
												if a ~= nil then
										f:write("\n-----------------------------LOG 输送 [",a.."]"..pop[a].."-----------------------------\n\n")					
										end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
								if name=='searchNumber' or i=='searchNumber'then 
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\n您的GG拦截目录:\n '..file.."\n\n恶魔 : clearResults 移除无用Log \n已开启🍧\n恶魔 : searchNumber 移除搜索过程 \n已开启🍧"
					end
					
				
					
					
					
					
	---------------------------------------------------------------------------------------------------------------------------------------
							
		if g.youhua then  ---------------------- APP包名检测				
						msg=msg.."\n恶魔 : isPackageInstalled APP包名检测 \n已开启🍧"
						local orig = gg.isPackageInstalled
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('\n包名:', arg[1])
							local leve=orig(...)
							if noapp:match(arg[1])		then							
							leve=  false 
							else	if yesapp:match(arg[1])		then							
							leve=  true
	       end
	       end
							return leve
							end
						tr[hook] = orig
						gg.isPackageInstalled= hook
					end

					if g.youhua then
					msg=msg.."\n恶魔 : setVisible GGUI常显 \n已开启🍧"
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					
					if g.youhua then
					msg=msg.."\n恶魔 : isVisible GGUI常显 \n已开启🍧"
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
					
						if g.youhua then
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
					
					if g.youhua then
					msg=msg.."\n恶魔 : toast 消息优化删除重复 \n已开启🍧"
						local orig = gg.toast
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= toast or cs2=="30"or cs2=="20" then
						toast=arg[1] 
							return orig(...)
							else
								cs2=cs2+1
							return true
						end
						end
						tr[hook] = orig
						gg.toast = hook
					end
					
						if g.youhua then ----------------------log
						msg=msg.."\n恶魔 : getResultsCount 移除刷LOG \n已开启🍧"
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
					
						if g.youhua then ----------------------log
						msg=msg.."\n恶魔 : addListItems 移除刷LOG \n已开启🍧"
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
echo('traceback:\n', roel)
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
	----------------------------------------------------------------------------------------------------				
						if true then						
--[[
						if g.info[8]==true then--os.exit()跳过
				local orig = os.exit
  local hook = 1
  hook = function (...)
  qx2=qx2+1
  	ggfh=ggg.alert('文件准备结束.',"No","","Yes")
    local arg = {...}
    gg.toast("已跳过"..qx2.."次退出")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx2=0
  os.exit = hook
  end		
]]  
if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end

						msg=msg.."\n恶魔 : os.exit 退出弹窗 \n已开启🍧"
						local orig = os.exit
						local hook = 1
						hook = function (...)
							ggfh=ggg.alert('文件准备结束.',"No","","Yes")
							local arg = {...}					
						if ggfh==3 then
 							sel= orig(...)
							else
							sel=gg.setVisible(true)
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

o=0
	if g.open then
							  function x(s)
    if s==nil then
 t="其他" else
      if s:match("r") then t="r"
       elseif s:match("w") or s:match("a") then t="w" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=ggg.alert("尝试以"..x(arg[2]).."的方式打开文件:"..arg[1].."\n请选择执行操作","忽略","返回nil","返回该文件")
    if x==2 then o=o+1 gg.toast("跳过"..o.."次io.open") result=zn return nil end
    if x==3 then o=o+1 gg.toast("跳过"..o.."次io.open") local file=io_open(arg[1],"w") file:write("--执念拦截器") file:seek("set") os_remove(arg[1]) result=file return file end
  return result
  end
  tr[hook] = orig
  io.open=hook
  end
  
  isc=0
                            if g.remove then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							isc=isc+1
							gg.toast("跳过"..isc.."次os.remove")
							return true
						end
						tr[hook] = orig
					os.remove	 = hook
					end
		
		abs=0
		               if g.assert then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						

als=0
                       if g.alert then
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}
							als=als+1
							gg.toast("跳过"..als.."次alert")
							return true
						end
						tr[hook] = orig
					gg.alert	 = hook
					end


					
					if true then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启🍧"
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] ~= printt  then
						printt=arg[1] 
							return orig(...)
							else
							return true
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					

					
					if false then ----------------------gg.getFile
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
					local 		lleve=lleve..(string_char(arg[1]))			
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					if false then ----------------------gg.getFile
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}								
					echo('gg.alert:',arg)
							return true
						end
						tr[hook] = orig
					gg.alert  = hook
					end
					
					
					if wzlog then
					local orig = gg.getFile
local hook = 1
hook = function (...)
local arg = {...}
wzwj:write('gg.getFile()\n')
return fullName
end
tr[hook] = orig
gg.getFile	 = hook

local orig = os.remove
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('os.remove("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
os.remove	 = hook

local orig = assert
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('assert("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
assert	 = hook

local orig = gg.toast
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('gg.toast("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
gg.toast	 = hook

local orig = gg.alert
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('gg.alert("'..arg..'")\n--[[ return: 1 ]]\n')
return orig(...)
end
tr[hook] = orig
gg.alert	 = hook
end
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
			if wzlog then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}			
				if arg[2] ==nil then
wzwj:write('io.open("'..arg[1]..'")\n')
else
wzwj:write('io.open("'..arg[1],'","'..arg[2]..'")\n')
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'em',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if wzlog then
						local orig = io.input
						local hook = 1
						hook = function (...)
							local arg = {...}
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'em',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==gg_getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
										if false then
					local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
					local			roel=str(orig(...))
		if  roel:match(gg_getFile()) then  roel=roel:gsub(gg_getFile(), fullName) end
--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',roel)
				 return roel
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end
			
--------------------------------------------------------------------------------------------------------------------------------
if wssnc then----LOG防刷内存
	local orig = gg.removeListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.removeListItems		 = hook
					end
if wssnc then----LOG防刷内存
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end
if wssnc then----LOG防刷内存
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
if yiyou then
  local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
     elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
     elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
     elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}    end
    -- echo(str(arg).."\n--------\n"..str(result))
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
if tiaoshi then
list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
      for a,b in pairs(list) do
        for k,v in pairs(b) do
          local orig=b[k]
          hook=1
          local hook=function(...)
            local arg={...}
            local result=orig(...)
            if #str(arg)>3000 then arg={} end
            if #str(result)>3000 then result="" end
            if TSignore:match(k)==nil then
              local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"

              --   io_open(gg.getFile().."xxx","a"):write(dy):close()
              x=ggg.alert(dy,"确定",nil,"复制")
           --   if x==3 then ggg.copyText(dy) end
            end
            return orig(...)
          end
          b[k]=hook
        end
      end
    end
if mima then
  ggg.prompt({"点击确定"},{file},{"file"})
end
if flj then
local file = outpath.."[佛门菩萨解开始]"..filename..randomName..''
  local f = io_open(file, 'w')
  f:write("佛截代码如下:\n")
  f:close()
  local names = {
    allocatePage = {'^PROT_', '0x%X'},
    copyMemory = {'0x%X', '0x%X'},
    dumpMemory = {'0x%X', '0x%X'},
    gotoAddress = {'0x%X'},
    setRanges = {'^REGION_'},
    searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
    searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
    searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
    editAll = {nil, '^TYPE_'},
    loadList = {nil, '^LOAD_'},
    saveList = {nil, '^SAVE_'},
  }
  names.refineAddress = names.searchAddress
  names.refineNumber = names.searchNumber
  local rets = {
    alert = 1,
    prompt = 1,
    choice = 1,
    multiChoice = 1,
  }
  --------------------
  local toFlags = function (check, value)
    local ret = ''
    for k, v in pairs(ggg) do
      if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then ret = ret..' | ' end
        ret = ret..'gg.'..k
        value = value & ~v
      end
    end
    if ret == '' or value ~= 0 then
      if ret ~= '' then ret = ret..' | ' end
      ret = ret..value
    end
    return ret
  end
  -------------------
  local f = io_open(file, 'a')
  local write=function(content)
    if nowfunc~=lastfunc then
      f:write(content):flush() end end
  for i, v in pairs(ggg) do

if type(v) ~= "function" then --constants
      if i == "PACKAGE" then _G.gg[i] = VPACKAGE
       elseif i == "VERSION" then _G.gg[i] = "73.4"
      -- elseif i == "VERSION_INT" then _G.gg[i] = getVERSION_INT()
      -- elseif i == "BUILD" then _G.gg[i] = VBUILD
      end
     else
    end--]]
    if typ(v) == 'function' and ignoreHook:match(i)==nil
      then
      local orig = v
      local name = i
      local hook = 1
      hook = function (...)
        local arg = {...}
        lastfunc=nowfunc
        nowfunc=name

        if i == 'choice' then---判断单选功能列表
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            write(" -- ")
            write(arg[1][ret])
            write(" --\n")
            return ret
          end
        end

        if i == 'multiChoice' then--判断多选功能列表

          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            local num={}
            for w in gmatch(str(ret), "%[(%d+)%] =") do
              insert(num,arg[1][tonumber(w)])
            end
            for j, a in ipairs(num) do
              write(" -- ")
              write(a)
              write(" --\n")
            end
            return ret
          end
        end

        --]]
        write('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then write(', ') end
          if typ(a) == 'string' then write('"') end
          local b = a
          if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
            local check = names[name][j]
            if check:sub(1, 1) ~= '^' then
              if a == 0 or a == -1 then
                b = a
               else
                b = check:format(a)
              end
             else
              b = toFlags(check, a)
            end
          end
          b = str(b)
          write(b)
          if typ(a) == 'string' then write('"') end
        end
        write(")")
        write("\n")
        --   f:close()
        local result = 1
        if ignoreInvoke:match(name) then
          ggg.toast("已自动跳过函数gg." .. name .. "()的执行")
         elseif name=="getResults" then result={{['address'] = 0xbd102a74,['flags'] = 4,['value'] = 10}}  
         else
          result=orig(...)
        end
        return result
      end
      tr[hook] = orig
      gg[i] = hook
    end
  end
end
if yz then
  local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    ggg.toast("已跳过os.exit的执行")
    return true
  end
  tr[hook] = orig
  os.exit = hook
end
if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
----------------------------------------------------------------------------------------------------------------------------
if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if true  then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
---------------------------------------------------------------------------------------------------------------------------
					echo('\t\t\t\t恶魔.'..msg..'\n--------------------------------\n')
					msg=nil
					end
				local test = g.test
				g = nil
			return test()			
			end
		end
	end
	end
	function V()
	environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址   </string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]
local wzw=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="727" />
    <string name="history-1">运行文件</string>
    <string name="hidden-dir">Diz9</string>
    <string name="script-debug">log地址</string>
    <int name="root-ok" value="13913" />
    <int name="h-0" value="4" />
    <int name="h-1" value="4" />
    <string name="com.xiaomi.smarthome-script">运行文件</string>
    <string name="history-0">123</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="2" />
    <string name="script-path">log地址</string>
    <int name="pos-y" value="380" />
</map>]]
--print((tostring(_ENV)))

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb999_hd"



local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'Skr'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

local		config = {} 
	
if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	
	true,false,
	"123456",
	"415249342",
	"无","sstool.only.com.sstool;",
	
	"400",true,true,true,true,true,true,false}
end

while true do
	g.info = gg.prompt({
	'🔐选择文件:', 
	'📁输出的文件夹:',
		'使用VERSION版本:'..gg.VERSION, 
		'使用BUILD版本:'..gg.BUILD,
		'伪装GGlog储存路径',
		
		'使用默认GGlog储存路径:\n/storage/emulated/0/Notes',
		'伪装GG存储所有代码加载',
		'伪装QQ存在可添加多个[;] 分隔 以下都可',
		'移除QQ存在',
		'伪装App包名存在',
		'移除App包名存在',
		
		'📋最小的输出环境 "load"',
		'[Load]拦截',
		'[Log]拦截',
		'[Char}拦截',
		'[Log]多选匹配',
		'[优化]调用bug.sethook',
		'[优化]切换核心',
		'[Log}prompt优化 开启则关闭密码破解',
		'[Bug]调试模式',
		'[灵魔]网络卡密验证破解' }, g.info, {
		'file', 'path', 'text','text','path',
		'checkbox','checkbox','text','text','text','text',
		'number','checkbox','checkbox','checkbox','checkbox',
		'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local	Name={
"fullName",
"Outputpath",
"VERSION",
"BUILD",
"Gglogstoragepath",

"GglogSwitch",
"StoragecodeLoad",
"Camouflageqqexist",
"CamouflageqqNonexistence",
"Camouflageappexist",
"CamouflageappNonexistence",

"Minimumoutput",
"LoadHook",
"LogHook",
"Hookchar",
"Multiselectionoptimization",
"Bugsethook",
"core",
"Prompt",
"BugDebugging",
"internet"
}

local ZZZZ={}
for i, v in ipairs(g.info) do
ZZZZ[Name[i]]=v
end
	gg.VERSION = ZZZZ.VERSION
	gg.BUILD=ZZZZ.BUILD

if  	ZZZZ.GglogSwitch then
 ZZZZ.Gglogstoragepath="/storage/emulated/0/Notes"
end
if ZZZZ.internet then



XX={}
XXJL={}
XX.makeRequest=gg.makeRequest
gg.makeRequest=function(a,b,c)
file=io.open(gg.getFile().."自动回复.cfg","r")
if file==nil then file=io.open(gg.getFile().."自动回复.cfg","w")
file:close()
end
dofile(gg.getFile().."自动回复.cfg")
for i,v in pairs(XXJL) do
if i==a then return v end
end
local XXNB={}
XXNB.HF=XX.makeRequest(a,b,c)
XXNB.aa={}
XXNB.bb={}
XXNB.cc={}
for k,v in pairs(XXNB.HF) do
XXNB.aa[k]=k
XXNB.bb[k]=v
XXNB.cc[k]="text"
end
XXNB.aa[1]="是否开启该链接自动回复"
XXNB.bb[1]=false
XXNB.cc[1]="checkbox"
XXNB.GB=gg.prompt(XXNB.aa,XXNB.bb,XXNB.cc)
if XXNB.GB[1]==true then
XXNB.GB.headers=nil
XXJL[a]=XXNB.GB
XXLSS="{"..tostring(XXJL):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub(tostring(string.char(92)),'')
XXLSS=XXLSS:gsub('-- ','')
XXLSS=XXLSS:gsub('\n',' ')
XXLSS=XXLSS:gsub('	','')
gg.toast("自动回复将会记录在"..gg.getFile().."自动回复.cfg")
io.open(gg.getFile().."自动回复.cfg","w"):write("XXJL="..XXLSS):close()
end
return XXNB.GB
end
gg.alert("代码网络改包已开启")



--[[


XX={}
XXJL={}
XX.makeRequest=gg.makeRequest
gg.makeRequest=function(a,b,c)
file=io.open(gg.getFile().."自动回复.cfg","r")
if file==nil then file=io.open(gg.getFile().."自动回复.cfg","w")
file:close()
end
dofile(gg.getFile().."自动回复.cfg")
for i,v in pairs(XXJL) do
if i==a then return v end
end
local XXNB={}
XXNB.HF=XX.makeRequest(a,b,c)
XXNB.aa={}
XXNB.bb={}
XXNB.cc={}
for k,v in pairs(XXNB.HF) do
XXNB.aa[k]=k
XXNB.bb[k]=v
XXNB.cc[k]="text"
end
XXNB.aa[1]="是否开启该链接自动回复"
XXNB.bb[1]=false
XXNB.cc[1]="checkbox"
XXNB.GB=gg.prompt(XXNB.aa,XXNB.bb,XXNB.cc)
if XXNB.GB[1]==true then
XXNB.GB.headers=nil
XXJL[a]=XXNB.GB
XXLSS="{"..tostring(XXJL):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub(tostring(string.char(92)),'')
XXLSS=XXLSS:gsub('-- ','')
XXLSS=XXLSS:gsub('\n',' ')
XXLSS=XXLSS:gsub('	','')
gg.toast("自动回复将会记录在"..gg.getFile().."自动回复.cfg")
io.open(gg.getFile().."自动回复.cfg","w"):write("XXJL="..XXLSS):close()
end
return XXNB.GB
end
gg.alert("代码网络改包已开启")]]
end
if  	ZZZZ.StoragecodeLoad then
local  p=gg.alert("代码\n  您开启了[伪装GG存储所有代码加载]\n 确认一下您是否误开启\n 应对一些某些验证\n 误开启 将会生成过多文件 导致崩溃和卡顿\n 正常情况下不建议开启","继续开启功能","","关闭功能并继续")
 if p==3 then
 ZZZZ.StoragecodeLoad=false
 g.info[7]=false
	gg.saveVariable(g.info, g.config)
 end
end
if  	ZZZZ.core then
 wz=wzw
end
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-----
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(ZZZZ.fullName)

	g.loaded = ZZZZ.fullName
	if g.test == nil then
		gg.alert('Failed load script: '..ZZZZ.fullName)
	else
g.name = ZZZZ.fullName:match('[^/]+$')
local data=wz:gsub("运行文件",ZZZZ.fullName)
local wc=ZZZZ.fullName:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",ZZZZ.Gglogstoragepath)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
		g.pathes = {ZZZZ.Outputpath:gsub('/?$', '')..'/'..g.name, ZZZZ.fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		local io_open = io.open		
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
local CXio = {}
local CXstring = {}
local ZZZZ = {}
for i, v in pairs(io) do CXio[i] = v end
for i, v in pairs(string) do CXstring[i] = v end
for i, v in pairs(gg) do ZZZZ[i] = v end

local get_file=gg.getFile()
local  save_filename = get_file..'.cfg'
	local chunk = loadfile(save_filename)
	if chunk == nil then 
local		config = {} 
	else
local		config = chunk()
	end


					local sel = select
					local Runningfunction=""
					local FunctionnameWarehouse={}
					local debugsethook=debug.sethook

					local	remove={{nil,nil}}
					local Functionnumber={{nil,nil}}
					local Erasable={}
					local ioopen={}
					local ioopen1={}
					local ioinput1={}
					local ioinput={}
					local	Funccount=0
					local Functionlibrary={}
			 local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    local temp={}
    local Namerepetition=0
					local os_exit=os.exit
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local msg = ''
					local rnd = ZZZZ.fullName..'_'..os.time()..'_'..math.random()
					local load_cnt = 0
       local Removalofpolypus=g.name:gsub('.[^.]+$', '')..".lua"
       local Ggname=g.name
						local fname = ZZZZ.Outputpath..'/'..'Heyuan.'..Removalofpolypus
						local fnamee = ZZZZ.Outputpath..'/'..'[Load] 代码.'..Removalofpolypus
						local fnameeee = ZZZZ.Outputpath..'/'..'[Lua] 代码.'..Removalofpolypus						
						local fnchar = ZZZZ.Outputpath..'/'..'[Char] 代码.'..Removalofpolypus
						local wFilename=Removalofpolypus
						local fnameee = ZZZZ.Outputpath..'/'..'[Load] 代码.'
						local min_size = tonumber(ZZZZ.Minimumoutput)
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						local os_remove = os.remove						
						local Camouflagelog=ZZZZ.Gglogstoragepath.."/"..ZZZZ.fullName:match('[^/]+$')..".log.txt"
						local Camouflageload=ZZZZ.Gglogstoragepath.."/"..ZZZZ.fullName:match('[^/]+$')..".load_"							
				local							filpe = io.open(Camouflagelog, "w+")			
				
						ggg.setVisible(false)
						
						
					
					if ZZZZ.LoadHook then
					local cs1=0
					local load_cnt1=0
					local tx=true
					local contentcs=0
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"											
						local f = nil
						local tar_put = function (content)						
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end
													
						if content~=contentt then
						if content:match("#%d%d%d") or content:find("qword, q")~=nil  then											
						local							contentcs=contentcs+1
						else
							cs1=cs1+1					
							if tx then
local				ggaiert=	ggg.alert("成功获取"..cs1.."次Load.\n过滤"..contentcs.."次虚假Load\n将保存为 :\n[Load] 代码.("..cs1..")."..wFilename.."\n\n〖"..content:sub(1,10000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次load.\n将保存为[Load] 代码.("..cs1..")]"..wFilename.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1.."):"..wFilename, 'w')					
					
					end
								f:write(content)								
							end
							
										local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
							
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)							
								local arg = {...}
								if ZZZZ.StoragecodeLoad then
				--[[				local size = slen(...)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end							]]
							if load_cnt1>500  then
							ggg.alert(" ZZZZ.代码\n目标刷取"..load_cnt1.."次Load\n 为恶意刷取\n非正常脚本\n正在关闭")
								os_exit()
								end
local							f = io_open(Camouflageload..load_cnt1..".lua", 'w')							
load_cnt1 = load_cnt1 + 1
--[[															f:write("load_")
								:write(ch(sfmt('%07d', load_cnt1)))								
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
								f:write(str(...))
end
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into tar archive: \n'..fnamee
					end
					
					if ZZZZ.LogHook then		
					local scripts = {}
					local options = {}
					local config = {}
					local multiChoicecx=1
      local stackcs=0
					local toastt=false					
					local cs4=1
					local menui=1
					local searchNumber=""
						local file = ZZZZ.Outputpath..'/'..'[Log] 代码..'..Removalofpolypus
						local f = io_open(file, 'wb')
						f:write("-- Hook started\n")
						f:close()
						gg.prompt({'Just press ok:'}, {g.info[1]}, {'file'})
						gg.prompt({'Just press ok:'}, {g.info[5]}, {'file'})
						

						
						
						
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
												for i, v in pairs(ggg) do
							if typ(v) == 'function'  and i ~= 'getLine' and i ~= 'isVisible' and i ~= 'clearResults' and i ~= 'addListItems' and i ~= 'getResultsCount' and i ~= "removeListItems" --and i ~= 'getFile' 
							then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
									-----
									if	 i == 'getFile' then
									local ret=orig(...)
								if filpe~=nil then				filpe:write('gg.getFile()\n')				
			--						filpe:write('getFile()\n')				
								end
									return ZZZZ.fullName
									end
		if	 i == 'processKill' then
									return true
									end
												 ------


												if name=='searchNumber' then 
									local arg = {...}
										if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
							return true
						end
						end
						
						if name=="getResultCount" then
						return 2
									end
--[[						  if				i == 'getFile'  then
						  if filpe~=nil then
				filpe:write('gg.getFile()\n')
				end
				return ZZZZ.fullName
				end]]
					  		
									  if name=='isPackageInstalled' then 									
									  local arg = {...}
							echo('包名:', arg[1])
							local leve=orig(...)
							if ZZZZ.CamouflageappNonexistence:match(arg[1])		then							
							return  false 
							else	if ZZZZ.Camouflageappexist:match(arg[1])		then							
							return  true
	       end
	       end
							end							
	
	if name=='prompt' and ZZZZ.Prompt then 	
	local arg = {...}
							if rets[name] ~= nil then
							local f = io_open(file, 'a')
										local ret = orig(...)
										if ret~=nil then
										for i=1,#ret do
		--								gg.alert(i)
									if ret[i] then
									f:write("\n-----------------------------LOG PromptData [",i.."]"..arg[1][i].."-----------------------------\n")
												Functionname=arg[1][i]
										Runningfunction=""
									end
									end
									return ret
									end
										end
										end
			  if name=='prompt' then 	
					local pa = math.random(10, 99)
					local ss = math.random(10,99)
			local	leoe=ggg.alert('破解prompt密码\n 在密码处输入['..pa..ss..']激活密码解析\n 对于嵌入代码解密段则无效\n 点击Yes将会复制:['..pa..ss..']并启动密码拦截\n粘贴即可',"Yes","","No")
			
			if leoe==1 then
			ggg.copyText(pa..ss)
					local cache = {}
					cache[pa..ss] = 1
					cache["text"]=1
					cache["table"]=1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function (...)											
						local stack = {}
						for j = 1, 900 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then	
										for i, v in pairs_(val) do
									stack[v] = 1			
										end
									end
								end
							end
						end				
						
						if stack[pa..ss] ~= nil then	
							for v, _ in pairs_(stack) do							
								if cache[v] == nil then	
								local v=tostring(v)
								if not (v:match("{") or v:match("function")   or v:match("]") or v:match("-") or v==")"
								or v=="")
								then
								 stackcsno=true
								 scripts[#scripts + 1]=v
ggg.toast("ZZZZ:\n成功激活密码破解\n解析共:"..#scripts.."条数据")
								print_(v)			
						cache[v] = 1						 
								end
								end
							end
						end
					end						
debugsethook(hook, '', 1)													
				echo("下列为解析的可疑密码\nResolution:\n-----------------------------") 
									  end								  
									  end
			if stackcsno then
			echo("-----------------------------\nResolution[",#scripts,"]")
			while true do
			local options={}
			for i, v in ipairs(scripts) do
		options[i] ="📌".. str(v):sub(1,50)
	end
	
			local ZZZZos_exit = #options + 1
	options[ZZZZos_exit] = config['ZZZZ_os_exit'] == nil and '复制后结束 [继续]' or '复制后继续  [结束]' 
	
	selected = ggg.choice(options, #options, "ZZZZ 拦截密码解析\n 选择复制可疑密码\n Resolution["..#scripts.."]")
	
	if scripts[selected] ~= nil then
	ggg.copyText(scripts[selected])
		echo("复制:",scripts[selected])
		pw=scripts[selected]
		if config['ZZZZ_os_exit'] then
		os_exit()
		else
		stackcsno=false
		stackcsn=true
		ggg.tmp= {scripts[selected]}
		break
		end
		end
		
		
	if selected == ZZZZos_exit then
		config['ZZZZ_os_exit'] = config['ZZZZ_os_exit'] == nil and 1 or nil
		ggg.saveVariable(config, save_filename)
	end
--
	end
--	return {scripts[selected]}
--	if true then
--							return ggg.prompt(...)
--					end -- true then
--	return 9420
echo("#####")
	end

									  -----------
														    if i == "multiChoice" or i== "choice" then
									local arg = {...}
									local gss = {}						
					if			 menui==1 then
					f:write("-----------------------------LOG GameGuardian LOG-----------------------------\n\n")
								for c=1,#arg[1] do 							
										f:write("-----------------------------LOG Menu[",c.."]"..arg[1][c].."-----------------------------\n")
										end										
										menui=2
										end
end

									if i == 'choice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									if ret ~=nil then
										f:write("\n\n-----------------------------LOG Single [",ret.."]"..arg[1][ret].."-----------------------------\n")								
				--						f:close()
			 Functionname=arg[1][ret]
			 Runningfunction=""
										return ret
									end
									end
									end
						
			if i == 'multiChoice'  then
			if multiChoicecx==1 then 
			ggg.alert("ZZZZ.代码\n 由于函数的特性请勿一次性选择多个开启\n 选择过多将会压缩在一起\n if如果你并不想用Log脚本则无视")
			multiChoicecx=2
			end
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}								
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
--									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}
									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
									opo=sz
									pop=arg[1]
									csp=#gs									
										f:write("\n\n-----------------------------LOG Multiple menu LOG-----------------------------\n")
										Functionname=""
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										Functionname=arg[1][a]										
										Runningfunction=""
												fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									Runningfunction=Runningfunction..'\ngg.'..name..'('
									if filpe~=nil then
					--				filpe:write(name..'(')								
									filpe:write('gg.'..name..'(')								
									end
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ')
										Runningfunction=Runningfunction..', '
										 if filpe~=nil then		filpe:write(', ')		end		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)										
										Runningfunction=Runningfunction..b:gsub("\n",[[\n]])
										if filpe~=nil then		filpe:write(b)		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
									end
									f:write(")")
									Runningfunction=Runningfunction..")"
									if filpe~=nil then		filpe:write(")")		end
									if fe then
									if ZZZZ.Multiselectionoptimization then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																															
												a=opo[cs4]
												cs4=cs4+1
												if a ~= nil then
										f:write("\n-----------------------------LOG Transport :[",a.."]"..pop[a].." Error in forced matching-----------------------------\n\n")					
										end
									end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										if filpe~=nil then			
										filpe:write("\n--[[ return: "..str(ret).." ]]\n")
					--					filpe:write("\n-- return:"..str(ret).."\n")	
						end
										return ret										
									end
									
									------------------------------------------------------------								
									
							
if Functionname~=nil and Runningfunction:match("searchNumber") then
--f Functionlibrary["Black"..Functionname]~= nil then
Functionlibrary["Hook"..Functionname]=Runningfunction

--else
--Functionlibrary["Black"..Namerepetition..Functionname]=Runningfunction
--end
end

				local  Menuname=""
   local  Hookitem=""
   local HookSelectandkeep=""
   local  i=0
   for i=1,52 do
        temp[i] = string.sub(b64chars,i,i)
    end
    p=1
    for k,v in pairs(Functionlibrary) do
    i=i+1
    p=i+1    
Menuname=Menuname..'\n"'..str(k)..'",'

HookSelectandkeep=HookSelectandkeep.."\nif menu=="..i.." then CX"..str(temp[i])..i.."() end"

Hookitem=Hookitem.."\n---[["..k.."]]\nfunction CX"..str(temp[i])..i.."()"..str(v).."\nend"
end
Hookscript="gg.alert('ZZZZ: 代码')\n\nfunction Main()\n"
-----启动脚本
Hookscript=Hookscript..'menu = gg.choice({'..Menuname..'"结束脚本 Exit"},nil,"选择开启功能[初心❤ 代码拦截生成]")'
-----功能名称
Hookscript=Hookscript..HookSelectandkeep.."\nif menu=="..p.." then Exit() end\nvis=false\nend"
-----调用功能
Hookscript=Hookscript..Hookitem
-----功能实体
Hookscript=Hookscript.."\nfunction Exit()\nprint('ZZZZ By 初心')\nos.exit()\nend\n\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend"
-----结束项目
if #Hookscript >376 then
local fi = io_open(fnameeee, 'w')					
							fi:write(Hookscript)
							fi:close()
							end
------------------------------------------------------------------------------------
									f:write("\n")
									if filpe~=nil then		filpe:write("\n")		end
									f:close()
					if name=='searchNumber' then 
					function xqmnb(a)
aaaa=aaaa+1
print(aaaa.."！！！"..tostring(a))
print("\n")
print(aaaa.."！！！"..tostring(qmxg))
end
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)									
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\nAll GG calls will be logged into file:\n '..file.."\n\nCreate and generate scripts to the:\n"..fnameeee.."\n\nSkip : clearResults 移除无用Lo \n已开启☑\nSkip : searchNumber 移除搜索过程 \n已开启☑"
					end

					
					
							if true then
						msg=msg.."\nSkip : os.exit 退出弹窗 \n已开启☑"		
						local orig = os.exit
						local hook = 1
						hook = function (...)
		--echogg.alert(Function..Functionname1..Function1..Function2..Function3..Function4..Function5)
		
		if str(Functionlibrary):match("searchNumber") then
local		Menuname=""
local i=0
		for k,v in pairs(Functionlibrary) do
		i=i+1
Menuname=Menuname.."["..str(k).."]\n"
end
							ggfh=ggg.alert('准备结束Hook\n\n拦截并生成项目.'..i..'条Data\n\n'..Menuname..'\n\n保存为.:\n[Lua] 代码.'..wFilename..'\n\n™项目简短\n'..Hookscript:sub(1,9000)..'',"No.继续拦截","","Yes.确认退出")							
							else
							ggfh=ggg.alert('结束Hook',"No.继续拦截","","Yes.确认退出")
							end
							local arg = {...}					
						if ggfh==3 then
						 if ZZZZ.BugDebugging==false then
							echo('io.open:', ioopen)
							echo('io.input:', ioinput)
							echo('os.remove:', remove)
	
							end
local 							sel= orig(...)
							else
local						sel=true
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

					
      
     
if true then
local ioopencs=0
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}											
												if arg[2]=="w" or arg[2]=="w+" then
												Erasable[#Erasable+1]=arg[1]
							end		
							if ioopencs>15 then
						local ioopenalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioopenalert==1 then local ioopencs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioopencs=ioopencs+1
							end
							end
			if filpe~=nil then
			if arg[2] ==nil then
filpe:write('io.open("'..arg[1]..'")\n')
else
filpe:write('io.open("'..arg[1],'", '..'"',arg[2]..'")\n')
end
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
							ioopen[#ioopen+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioopen1[#ioopen1+1]=str(arg[1])
							if ZZZZ.BugDebugging then
							echo('io.open:', arg)
							end
	--echo('io.open:', ioopen)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if ZZZZ.CamouflageqqNonexistence:match(ddd) or arg[1]==wzdata then
							leve=nil
							else		if ZZZZ.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if true then
						local orig = io.input
						local ioinputcs=0
						local hook = 1
						hook = function (...)
							local arg = {...}
							if ioinputcs>15 then
						local ioinputalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioinputalert==1 then local ioinputcs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioinputcs=ioinputcs+1
							end
							end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
				ioinput[#ioinput+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioinput1[#ioinput1+1]=str(arg[1])
							if ZZZZ.BugDebugging then
							echo('io.input:', arg)
							end
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if ZZZZ.CamouflageqqNonexistence:match(ddd)or arg[1]==wzdata then
							leve=nil
							else		if ZZZZ.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
									
										---------------------------------------------------------------------------------------------------------------------------------------
														if true then ----------------------删除
												local		removecs=0
							msg=msg.."\nSkip : os.remove 跳过删除文件 \n已开启☑"
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}		
							remove[#remove+1]=arg[1]
			if filpe~=nil then
filpe:write('os.remove("'..arg[1]..'")\n')
end
							local leve=true
							if arg[1]==Camouflagelog or arg[1]:match("log") then
							leve=orig(...)
							end
										for i=1,#ioopen1 do
				if arg[1]==str(ioopen1[i]) or arg[1]:match(Ggname)then			
								remove[#remove]=arg[1].."\n已允许[⭕删除]"
								ioopen[i]=arg[1].."\n已[⭕删除]"
							leve=orig(...)
							else
							remove[#remove]=arg[1].."\n已拒绝[✅删除]"
							end
							end											
							if ZZZZ.BugDebugging then
							echo('os.remove:', arg)
							end
--							echo('os.remove:', remove)
							return leve
						end
						tr[hook] = orig
						os.remove = hook
					end

							
					
					if ZZZZ.Bugsethook then ----------------------gg.getFile
	local				roelsethook={}
	local ovei={}
						local orig = debug.sethook
						local hook = 1
						hook = function (...)												
						local arg = {...}	
				local		roel=str(arg[1])
				ovei[1]=roel:gsub("@", "")
				ovei[2]=arg[2]
			--	gg.alert(tostring((...)))
			if ZZZZ.BugDebugging then
			echo("debug.sethook:",ovei)
			end
							return ovei
						end
						tr[hook] = orig
					debug.sethook  = hook
					end
										
								if true  then						
					local orig = debug.getinfo 
				local hook = 1 
				local ggWarehouse={
'getFile','prompt','choice','toast','alert','getResultsCount','multiChoice','setSpeed','getSpeed','REGION_C_HEAP','clearResults','bytes','SAVE_AS_TEXT','require','removeResults','editAll','setValues','getValues','refineAddress','refineNumber','loadResults','getListItems','getTargetPackage','processKill','startFuzzy','getRanges','setRanges','getLine','unrandomizer','numberFromLocale','PROT_WRITE','skipRestoreState','allocatePage','getValuesRange','isVisible','gotoAddress','getSelectedPackage','saveList','addListItems','removeListItems','getTargetInfo','processResume','setVisible','searchNumber','getLocale','saveVariable','isPackageInstalled','timeJump','processToggle','numberToLocale','clearList','copyMemory','getResultCount','processPause','isProcessPaused','getRangesList','getResults','copyText','sleep','loadList','dumpMemory','searchFuzzy','searchAddress','load','pcall','xpcall'}
				hook = function (...) 
					local arg = {...}
				local 	roel=orig(...)
				local item=(orig(gg.getFile,"S"))
				local ppetinfo={}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
		if tostring(arg[1]):sub(1,1):match("%d")  then			
		for k,v in pairs(roel) do
		 ppetinfo[k]=str(v):gsub(ggg.getFile(),ZZZZ.fullName)
		 end
		else		
		for k,v in pairs(ggWarehouse) do		
if tostring(arg[1]):match(str(v)) then
for i,o in pairs(roel) do
if i=="short_src" then
 ppetinfo[i]=v
 else if i=="source" then
 ppetinfo[i]="=[Java]"
 else
 ppetinfo[i]=o
 end
 end 
 	ppetinfo['lastlinedefined'] = item.lastlinedefined
	ppetinfo['linedefined'] = item.linedefined 
		 end		 
break
 end
end
end

--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',arg)
if ZZZZ.BugDebugging then
			echo("debug.getinfo:",ppetinfo)
			end
--			gg.alert(tostring(bugget))

				 return  ppetinfo
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end

				
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if ZZZZ.BugDebugging then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
					
					


					
					if false then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启☑"
			local printt=""
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] == printt or #arg[1]>1000 then						
							return true
							else
							printt=arg[1] 
							return orig(...)
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					
	
					
					if ZZZZ.Hookchar then ----------------------gg.getFile
							local fof = io_open(fnchar, 'w')									
							fof:write("-- Hook char\n")
						fof:close()
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
							local fof = io_open(fnchar, 'a')														
							if arg[1] ~= nil then
						fof:write((CXstring.char(arg[1])))															
						end
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
			
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==ggg.getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
			
			



----------------------------------------------------------------------------------------------------------------------------------------------------------
	if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					echo('Hook GameGuardian CXGG拦截.'..msg..'\n--------------------------------\n')
					msg=nil				
					end
				local test = g.test 				
				g = nil
				aaaa=0
			return test()			
			end
		end
	   end
	  function B()
	  	LJ = gg.prompt({'选择要LOADHOOK的脚本','无视退出','load大小'}, {  '/storage/emulated/0/GG脚本助手' ,false,1000}, {'file', 'checkbox' ,'number'})
	os.remove(LJ[1]..'.商log')
     jz=loadfile(tostring(LJ[1]))
						local tr={}
                    local echo=print
					if true then
 						local orig = load
						local hook = 1
						hook = function (...)
							local arg = {...}
                    if arg[1]~=nil then
                    if #arg[1]>=tonumber(LJ[3]) and type(arg[1])~='number' then
					print(arg[1])
						
							end
                    end
							return orig(...)
						end
						tr[hook] = orig
						load = hook
					end
                        local orig = true
						local hook = 1
						hook = function (...)
							local arg = {...}
							return false end
					if LJ[2] then
						local orig = os.exit
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.exit:', arg)
							return true
						end
						tr[hook] = orig
						os.exit = hook
					end

					if true then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
                    if arg~=nil then
							echo('os.remove:', arg)
                    end
						return true
						end
						tr[hook] = orig
						os.remove = hook
					end
					for i, v in pairs(gg) do
			if type(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
				gg[i] = function (...)
					local f = io.open(LJ[1]..".商log", 'a')
					 if string.find(i,'addListItems')==nil then
					f:write('gg.'..i..'(')
					for j, a in ipairs({...}) do
						if j ~= 1 then f:write(', ') end
						if type(a) == 'string' then f:write('"') end
						if string.len(tostring(a))<100 then f:write(tostring(a)) end
						if type(a) == 'string' then f:write('"') end
					end
					f:write(")\n")
					f:close()
					end
					return v(...)
				end
				end
			end
jz()
end
function N()


gg.require('1.5')
gg.toast('CXGG v1.5')
-- https://gameguardian.net/forum/files/file/146-script-compiler/

local g = {}
g.last = gg.getFile()
g.info = nil

--g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.config = gg.EXT_FILES_DIR:gsub('%lua$', '')..'CXGG'

g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, g.last:gsub('/[^/]+$', '')}
end

while true do
g.info = gg.prompt({
'载入脚本:',
 '载出文件夹:',
 'PCALL拦截',
 '搜索跳过',
 'alert弹窗跳过',
 'os.exit结束跳过',
 'os.remove删除跳过',
 'io.open打开查看',
 '反追踪拦截',
 '反拦截核心'}, g.info, {'file', 'path','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'}) 
	if g.info == nil then break end
	if g.info[4] then CXGGTG = true else CXGGTG = false end
	gg.saveVariable(g.info, g.config)
	
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = g.info[1]

	g.test = loadfile(g.last)
	if g.test == nil then
		gg.alert('Failed load script: '..g.last)
	else
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}			
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end		
		if g.file == nil then
			gg.alert('Failed write to file. Checked:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
		LOG=0
			
				if true then
					local ggg = {}
					 local funlist={{nil,nil}} 
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					local os_remove = os.remove
					local os_exit=os.exit
					local gg_alert = gg.alert
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local gg_toast = gg.toast
					local tr = {}
                   local msg = '' 
                   local fun={}
                    local funindex=1
					local msg = ''
					if g.info[3] then
					if true then
						local load_cnt = 1
						local fname = g.info[2].."/[CXGG]"..g.name..".LOAD"
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'									
									if type == 1 and typ(content) == 'function' then
										local f = nil
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													if f == nil then
														f = io_open(file, 'w');
													end
													f:write(ret)
													total = total + #ret
												end
											else
												if f ~= nil then
													f:close()
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' then
if typ(arg[1])=='number' or #arg[1]==0 or #arg[1]<=1000 then
											return true
else

											local f = io_open(file, 'w')
											f:write(content)
											total = #content
											f:close()
										end
end
										ret = orig(...)
									end
									if total ~= 0 then
										
gg_alert('pcallHOOK '..load_cnt..'次大小 '..total..'字节保存到 '..file)
										load_cnt = load_cnt + 1
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nLOAD写出为: \n [CXGG]'..g.name..".LOAD"
					end
					end
					if true then
					 local file =g.info[2].."/[CXGG]"..g.name..".LOG"
						local f = io_open(file, 'w')
						f:write("-- CXGG拦截HOOK\n")
						f:close()
						local names = {
							setRanges = {'^REGION_'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
							editAll = {nil, '^TYPE_'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
						}
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local toFlags = function (check, value) 
							local ret = ''
							for k, v in pairs(ggg) do
								if k:match(check) ~= nil and (value & v) == v then 
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for c, v in pairs(ggg) do
							if typ(v) == 'function' and c ~= 'getFile' and c ~= 'getLine' and c ~= 'isVisible' then
								local orig = v
								local name = c
								local hook = 1
							if name == "gg.addListItems" then
            return true
          end
          if name == "gg.isPackageInstalled" then
            return true
          end
          if name == "gg.clearList" then
            return true
          end
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
										

													if c == 'choice'  then------------判断单选功能列表
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									 GUOXUAN = false									 
									 if ret ~= nil then					
										f:write("\n------LOG"..ret.."--单--")															
										f:write(arg[1][ret])
									
										f:write("---LOG----\n")
						end
				--						f:close()
										return ret
									end
									end

									if c == 'multiChoice'  then------------判断多选功能列表
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}
									
									GUOXUAN = true
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}

									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)

									--	print(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									GNJ = arg[1]

									table.sort(sz)
								wz=sz  --默认从小到大排序
							
									for j, a in ipairs(sz) do								
									
											gn=(arg[1])
										f:write("\n------LOG"..a.."--多--")
										f:write(arg[1][a])
										f:write("---LOG----\n")
					--					f:close()
									end									
										return ret																													
									end																		
									end																																						
										
																		f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if check:sub(1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = check:format(a)
												end
											else
												b = toFlags(check, a)
											end
										end
										
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									f:write("\n")
									f:close()									
--[[									    if GUOXUAN then
          if c == "toast" then
																										local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
										f:write(" -- ")
										
										f:write(arg[1][ret])
										
          end
        end]]--
--[[ 					if GUOXUAN then
          if name == "toast" then 
          LOG=LOG+1          
										f:write("---LOG----\n")
										end
										return ret
	         end]]
	
 

	         if CXGGTG then
			if name == "searchNumber" then		
			LOG=LOG+1	
				   if LOG == 1 then 
	gg_alert("开始为您跳过搜索")end
	gg_toast("跳过"..LOG.."次搜索")
            return true
          end
          end    
									return orig(...)			
								end
								tr[hook] = orig
								gg[c] = hook
							end
						end
						msg = msg..'\n\nLOG写出为: \n[CXGG]'..g.name..".LOG"
					end
					echo('CXGG.'..msg..'\n')
					ggg.alert('CXGG.'..msg)
					msg = nil
					     

					g.last = g.info[1]
					if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							local ret = orig(arg[1], sel(2, ...))
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end

						if true then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
							echo('德布勒格图普沃思:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
	
if g.info[6] then					
		if true then
hook = function (...)
   			local arg = {...}
							echo('os.exit:', arg)
							return true
						end
						tr[hook] = orig
			  os.exit = hook
end
end
if g.info[5] then
if true then
hook = function (...)
   			local arg = {...}
							echo('gg.alert:', arg)
							return true
						end
						tr[hook] = orig
			  gg.alert = hook
end
end

if true then
hook = function (...)
   			local arg = {...}
							return true
						end
						tr[hook] = orig
			  gg.clearResults  = hook
end

					if true then
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
					if true then
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
					if true then
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end

					if true then
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
--						return orig(...)
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
										if true then
 						local orig = gg.copyText
 				local hook = 1
						hook = function (...)
							local arg = {...}
							return true
--						return orig(...)
						end
						tr[hook] = orig
						gg.copyText = hook
					end
					
if true then
 						local orig = 
gg.clearList
						local hook = 1
						hook = function (...)
							local arg = {...}
							return nil
--						return orig(...)
						end
						tr[hook] = orig
						
gg.clearList = hook
					end



if g.info[4] then
						local orig = gg.setVisible(false)
						local hook = 1
						hook = function (...)
							return gg.isVisible(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					
					if g.info[9] or g.info[10] then
						local orig = print
						local hook = 1
						hook = function (...)
							return orig("CXGG")
						end
						tr[hook] = orig
						print = hook
					end

					if g.info[7] then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.remove:', arg)
							return true
						end
						tr[hook] = orig
						os.remove = hook
					end
						p=	g.last
							if g.info[9] then
							if g.info[10] == true then ggg.alert("请勿同时开启\n反拦截核心 or 反追踪拦截")  break end
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}										
							return 		p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"
						end
							tr[hook] = orig
						debug.traceback = hook
					end
			
										if g.info[10] then
								if g.info[9] == true then ggg.alert("请勿同时开启\n反拦截核心 or 反追踪拦截")  break end
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}				
							c=gg.getFile():match('[^/]+$')
								b=gg.getFile()							
								ll=[[:562 in function 'getinfo']]or[[ in function 'traceback']]
							
			return	orig(...):gsub(b,p)
										end
						tr[hook] = orig
						debug.traceback = hook
					end



										if true then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= nil and arg[1] > 1 then
								arg[1] = arg[1] + 1
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
					if g.info[8] then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return nil
						end
						tr[hook] = orig
						io.open = hook
					end
				end


				
			
				local test = g.test
				g = nil
				
				test()
				break
				test()
				break
			end
		end
	end




end
function M()
Path = gg.prompt({[1]="选择要解释的脚本"}, {[1]="/sdcard"},{[1]="file"})
local file = io.open(Path[1], "r")
assert(file)
local data = file:read("*a")
file:close()
MX=[[local Yicjm = function(Yicstr)
local b64chars="‭\!?_-.:;*|(){}<>,^$#` &Ç~Ɓ¡@abcdefghijklmnopqrstuvwxyz0123456789+/"
local temp = {}  
for i = 1, 64 do    
temp[string.sub(b64chars, i, i)] = i  
end  
temp["="] = 0  
local str = ""  
for i = 1, #Yicstr, 4 do    
if not (i > #Yicstr) then      
local data = 0      
local str_count = 0      
for j = 0, 3 do        
local str1 = string.sub(Yicstr, i + j, i + j)        
if not temp[str1] then          
return        
end        
if temp[str1] < 1 then          
data = data * 64        
else          
data = data * 64 + temp[str1] - 1          
str_count = str_count + 1        
end      
end      
for j = 16, 0, -8 do        
if str_count > 0 then          
str = str .. string.char(math.floor(data / math.pow(2, j)))          
data = math.fmod(data, math.pow(2, j))          
str_count = str_count - 1        
end      
end    
end  
end  
local last = tonumber(string.byte(str, string.len(str), string.len(str)))  
if last == 0 then    
str = string.sub(str, 1, string.len(str) - 1)  
end  
return str
end 
local base64 = Yicjm(]]
XM=[[)
local base64 = load(base64)
print(base64)]]

TJ=MX.."'"..data.."'"..XM

local TH = string.gsub(TJ, "<MX LUA>\n", "")

local MX = TH
local MX = load(MX)
pcall(MX)
end
function J()
local TC = {}
TC.last = gg.getFile()
TC.info = nil
TC.config = "/storage/emulated/0/Android/TC.cfg"
TC.data = loadfile(TC.config)
if TC.data ~= nil then
  TC.info = TC.data()
  TC.data = nil
end
if TC.info == nil then
  TC.info = {TC.last, TC.last:gsub('/[^/]+$', '')}
end
while true do
  TC.info = gg.prompt({
  "选择解密文件",
  "选择解密路径",
  "使用随机文件名",
  "LOAD",----4
  "LOG",----5
  "os.exit函数跳过",----6
  "反拦截核心破解",----7
  "缓存文件检测跳过",----8
  "易游网络验证跳过",----9
  "调试模式"----10
  }, TC.info, {"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
  if TC.info == nil then break end
  gg.saveVariable(TC.info, TC.config)
--------
local ignoreHook="getLine;isVisible;setVisible;getFile;"

local ignoreInvoke="getResultCount;sleep;searchNumber;searchAddress"
local TSignore="char"
  TC.last = TC.info[1]
  TC.test = loadfile(TC.last)
  if TC.test == nil then
    gg.alert('脚本加载错误: '..TC.last) break
  end
  local file=TC.info[1]

local outpath=TC.info[2].."/"

local filename=TC.info[1]:match("[^/]+$")
randomName=""

time=0
if TC.info[3]==true then
  for i = 1, 5 do
    randomName = randomName .. string.char(math.random(65,115))
  end
end
    local ggg = {}
    for k, v in pairs(gg) do
      ggg[k] = v
    end
    local sel = select
    local typ = type
    local str = tostring
    local echo = print
    local io_open = io.open
    local gmatch=string.gmatch
    local insert=table.insert
    local tr = {}
 ----------
if TC.info[4] then
  local orig = load
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    local data=str(arg[1])
    if result and string.len(data)>500
    then
      time=time+1
      f=io_open(outpath.."[LOAD_"..time.."]"..filename..randomName..".lua","w")
      f:write(data)
      f:close()
    end
    return result
  end
  tr[hook] = orig
  load = hook
end
------------------------------
if TC.info[5] then
  local file = outpath.."[拦截log]"..filename..randomName..'.log'
  local f = io_open(file, 'w')
  f:write("--Hook Start\n")
  f:close()
  local names = {
    allocatePage = {'^PROT_', '0x%X'},
    copyMemory = {'0x%X', '0x%X'},
    dumpMemory = {'0x%X', '0x%X'},
    gotoAddress = {'0x%X'},
    setRanges = {'^REGION_'},
    searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
    searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
    searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
    editAll = {nil, '^TYPE_'},
    loadList = {nil, '^LOAD_'},
    saveList = {nil, '^SAVE_'},
  }
  names.refineAddress = names.searchAddress
  names.refineNumber = names.searchNumber
  local rets = {
    alert = 1,
    prompt = 1,
    choice = 1,
    multiChoice = 1,
  }
  --------------------
  local toFlags = function (check, value)
    local ret = ''
    for k, v in pairs(ggg) do
      if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then ret = ret..' | ' end
        ret = ret..'gg.'..k
        value = value & ~v
      end
    end
    if ret == '' or value ~= 0 then
      if ret ~= '' then ret = ret..' | ' end
      ret = ret..value
    end
    return ret
  end
  -------------------
  local f = io_open(file, 'a')
  local write=function(content)
    if nowfunc~=lastfunc then
      f:write(content):flush() end end
  for i, v in pairs(ggg) do

if type(v) ~= "function" then --constants
      if i == "PACKAGE" then _G.gg[i] = VPACKAGE
       elseif i == "VERSION" then _G.gg[i] = "73.4"
      -- elseif i == "VERSION_INT" then _G.gg[i] = getVERSION_INT()
      -- elseif i == "BUILD" then _G.gg[i] = VBUILD
      end
     else
    end--]]
    if typ(v) == 'function' and ignoreHook:match(i)==nil
      then
      local orig = v
      local name = i
      local hook = 1
      hook = function (...)
        local arg = {...}
        lastfunc=nowfunc
        nowfunc=name

        if i == 'choice' then---判断单选功能列表
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            write(" -- ")
            write(arg[1][ret])
            write(" --\n")
            return ret
          end
        end

        if i == 'multiChoice' then--判断多选功能列表

          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            local num={}
            for w in gmatch(str(ret), "%[(%d+)%] =") do
              insert(num,arg[1][tonumber(w)])
            end
            for j, a in ipairs(num) do
              write(" -- ")
              write(a)
              write(" --\n")
            end
            return ret
          end
        end

        --]]
        write('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then write(', ') end
          if typ(a) == 'string' then write('"') end
          local b = a
          if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
            local check = names[name][j]
            if check:sub(1, 1) ~= '^' then
              if a == 0 or a == -1 then
                b = a
               else
                b = check:format(a)
              end
             else
              b = toFlags(check, a)
            end
          end
          b = str(b)
          write(b)
          if typ(a) == 'string' then write('"') end
        end
        write(")")
        write("\n")
        --   f:close()
        local result = 1
        if ignoreInvoke:match(name) then
          ggg.toast("已自动跳过函数gg." .. name .. "()的执行")
         elseif name=="getResults" then result={{['address'] = 0xbd102a74,['flags'] = 4,['value'] = 10}}  
         else
          result=orig(...)
        end
        return result
      end
      tr[hook] = orig
      gg[i] = hook
    end
  end
end
---------------
if TC.info[8] then
  ggg.prompt({"点击确定"},{file},{"file"})
end
-----------os.exit-----

if TC.info[6] then
  local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    ggg.toast("已跳过os.exit的执行")
    return true
  end
  tr[hook] = orig
  os.exit = hook
end

-------------------
  if TC.info[7] then
  local t="stack traceback:\n	"..TC.info[1]..":13 in main chunk\n	[Java]: in ?"
  local orig = debug.traceback
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return t
  end
  tr[hook] = orig
  debug.traceback = hook
end

if TC.info[7] then
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = TC.info[1],
      ['source'] = '@'..TC.info[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..TC.info[1],
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
     elseif str(arg[1])=="3" then return nil
     elseif str(arg[1]):find("storage") then return cg[2]
     elseif str(arg[1])=="2" then x=ggg.alert("选择","第二次","第一次")
      if x==2 then result=nil end
     else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end
if TC.info[7] then
local orig = debug.getregistry
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return {}
  end
  tr[hook] = orig
  debug.getregistry = hook
end
    ------------------

if TC.info[9] then
  local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
     elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
     elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
     elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}    end
    -- echo(str(arg).."\n--------\n"..str(result))
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
--------------
    
    if TC.info[10] then
      list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
      for a,b in pairs(list) do
        for k,v in pairs(b) do
          local orig=b[k]
          hook=1
          local hook=function(...)
            local arg={...}
            local result=orig(...)
            if #str(arg)>3000 then arg={} end
            if #str(result)>3000 then result="" end
            if TSignore:match(k)==nil then
              local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"

              --   io_open(gg.getFile().."xxx","a"):write(dy):close()
              x=ggg.alert(dy,"确定",nil,"复制")
           --   if x==3 then ggg.copyText(dy) end
            end
            return orig(...)
          end
          b[k]=hook
        end
      end
    end
    ------------
    local test = TC.test
    TC = nil
    return test()
end
end
Main()