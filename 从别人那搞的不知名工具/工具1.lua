choe=print cheo=gg.alert choo=gg.toast osso=gg.choice soos=gg.prompt
function Main()--Main入口
Q=osso({--Q面板
"❤➡解➡密➡Ⅰ",
"💛➡解➡密➡Ⅱ",
"💚➡解➡密➡Ⅲ",
"💙▶伪装▶密码▶Ⅳ",
"💜▶伪装▶密码▶Ⅴ",
"💔❌退▶出❌"
},nil,
"↗🎶↘🎶↙")
if Q == nil then Main() end--nil
if Q == 1 then T() end--1
if Q == 2 then Y() end--2
if Q == 3 then U() end--3
if Q == 4 then I() end--4
if Q == 5 then O() end--5
if Q == 7 then os.exit() end--出口
end--Main结束

function T() 
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
function Y()
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
function U()








local g = {}
g.last = gg.getFile()
g.info = nil


g.config = gg.EXT_FILES_DIR:gsub('%lua$', '')..'/华夏恶魔💔'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end
if g.info == nil then
	g.info = {g.last, g.last:gsub('/[^/]+$', ''),gg.VERSION,gg.BUILD,400,true,true,false,false,true}
end

while true do
gg.toast('龙神拦截')
	g.info = gg.prompt({'选择文件:', '选择输出路径:',	'GG版本(VERSION):'..gg.VERSION,'GG版本(BUILD):'..gg.BUILD ,'Load大小','▶全▶源','▶单▶源','▶调试Ⅰ▶跳系列','▶调试Ⅱ▶反系列','▶调试Ⅲ▶反系列','▶卡密➡破解▶','▶易游➡破解▶','▶核心▶Ⅱ➡防系列','▶核心▶Ⅲ➡防系列','▶辅助功能➡超级跳过▶','▶辅助功能➡超强阻止▶','▶辅助功能➡超级无视▶','▶▶▶▶▶▶清▶除▶缓▶存▶▶▶▶▶▶▶'}, g.info, {'file', 'path', 'text', 'number', 'number',"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
	gg.VERSION = g.info[3]
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
		gg.alert('Failed load script: '..g.last)
	else
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
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					
					if g.info[6] == true then
						local load_cnt = 0
						local fname = rnd..'.tar'
						
						local min_size = tonumber(g.info[5])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
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

						f:write("load_")
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
								:write(content)
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
						
							msg = msg..'\n\n▶源▶文▶件▶写▶入▶路径: '..fname
							ggg.prompt({'➡全➡源➡模➡式➡已➡开➡启:'}, {g.loaded}, {'file'})
					
	--				echo('Hook started.'..msg..'\n')
					ggg.alert('⬆黄⬇鹤⬆全⬆源⬇模⬆式⬇. '..msg)
					msg = nil
				end
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

					if g.info[7]==true then
	local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}					
					local file = g.last..'.[❌].lua'
					local f = io_open(file, 'w')
					f:write("\n-- ▶入魔的EMMM▶ \n")
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
					}
					local rets = {
						alert = 1,
						prompt = 1,
						choice = 1,
						multiChoice = 1,
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
					for i, v in pairs(ggg) do
						if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then												

							local orig = v
							local name = i
							local hook = 1
							hook = function (...)
								local arg = {...}
								local f = io_open(file, 'a')
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
									if typ(a) == 'table' then
										b = b
											:gsub('table%([0-9a-f]+%): ', '')
											:gsub('(%[address%] = )(%d+)', function (b, c) 
												return ('%s0x%X'):format(b, c)
											end)
											:gsub('(%[flags%] = )(%d+)', function (b, c)
												return b..toFlags('^TYPE_', c)
											end)
											:gsub('(%[freezeType%] = )(%d+)', function (b, c)
												for k, v in pairs(gg) do
													if k:match('^FREEZE_') ~= nil and c == v then
														return b..'gg.'..k														
													end
												end
												return b..c
											end)
											:gsub('(\t%[)([^%]]+)(%] = [^\n{]+)\n', "%1'%2'%3,\n")
											:gsub('\n}\n', '\n},\n')
									end
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
								return orig(...)
							end
							tr[hook] = orig
							gg[i] = hook
						end
					end		
					
					local orig = string.dump
					local hook = 1
					hook = function (...)
						local arg = {...}
						if tr[arg[1]] ~= nil then
							arg[1] = tr[arg[1]]
						end
						return orig(arg[1])
					end
					tr[hook] = orig
					string.dump = hook
					end
					if g.info[8]==true then
      
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
					end
						if false then
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
if false then  --print打印优化
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





if false then---跳过alert
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
if false then--os.exit()跳过
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
if false then --os.remove跳过
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
							if false  then ----------------------跳过sleep
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.sleep		 = hook
					end
if false then---跳过包名检测
hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
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
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					if false then
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
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end
					if g.info[9]==true then
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



										if false then
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
			if false then --tostring
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
			if false then --debug.getupvalue 
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
			if false then --debug.getinfo
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
					if false then--核心2
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
if false then
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
if false then-----------------优化
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					if false then--------------优化
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
			if false then---------------优化
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
if false then----------------------优化
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
			if false then----------------------优化
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
				 if false then
				 hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
						if g.info[10]==true then
						if false then--反拦截追踪
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
					if false then--反拦截追踪
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
if false then	--反拦截追踪
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
if false then	--反拦截追踪
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
if false then---跳过gg.copyText
hook = function (...)
							return nil
						end
						gg.copyText = hook
						end

if false then --无视sethook
				local orig = debug.sethook
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				debug.sethook		 = hook
					end
if false then --无视debug.getlocal
				local orig = debug.getlocal
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						debug.getlocal = hook
					end
					end
					if g.info[11]==true then
					
					
					
					
					
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
gg.alert("辛心网络改包已开启")



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
gg.alert("辛心网络改包已开启")]]
end
if g.info[12]==true then
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
if g.info[13]==true then
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
  if g.info[14]==true then
      
if g.info[14]==true then----LOG防刷内存
	local orig = gg.removeListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.removeListItems		 = hook
					end
if g.info[14]==true then----LOG防刷内存
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
	if g.info[14]==true then----LOG防刷内存
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
	if g.info[14]==true then----LOG防刷内存
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
if g.info[14]==true then----LOG防刷内存
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
 if g.info[15]==true then
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
						end
						if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
if g.info[16]==true then
 local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("阻止检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end
		if g.info[17]==true then
		hook = function (...)
   			local arg = {...}
							echo('gg.alert:', arg)
							return true
						end
						tr[hook] = orig
			  gg.alert = hook
              end
 if  g.info[18]==true then
 local nf=gg.PACKAGE
qx="/storage/emulated/0/Android/data/"..nf.."/files/缓存"
os.remove(qx)
 end
					
				print("▶♦天▶♦下▶♦无▶♦魔\n----------------------------------")

				end
						local test = g.test
				g = nil
				return test()
			end
		end
	end
	end
	function I()
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
function O()
abc=gg.prompt({'选择文件','随机模式','密码开始'},{'/sdcard/0','true','0'},{'file','checkbox','text','text'})
if abc==nil then os.exit() end
pm=loadfile(abc[1])
if pm==nil then gg.alert('脚本有误') os.exit() end
pr=print
alr=gg.alert
print=gg.getFile
function gg.addListItems()
return true
end
function gg.toast()
return true
end
function gg.multiChoice()
pm=nil
return os.exit()
end
function io.open()
pm=nil
return os.exit()
end
function gg.alert()
return true
end
function gg.choice()
pm=nil
return os.exit()
end
i=abc[3]
while(true) do
gg.prompt=function ()
if abc[2] then
i=math.random(math.random(0,9999),math.random(10000,99999999)) end
o={tostring(i)}
i=i+1
if not g then g=alr('解密中')  end
return o
end
if pm then pcall(pm) else gg.setVisible(true) pr(abc[1]..'的key：'..o[1]) pr(i) break end
end
end
Main()