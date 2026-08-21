if gg.isPackageInstalled("com.fan.ggluadec") or gg.isPackageInstalled("com.fan.ggxxls") or gg.isPackageInstalled("com.fan.ggxxls-1.10") then
  gg.alert("检测到本设备安装有其他解密工具,本工具与其他解密工具不兼容,请卸载其他解密工具后使用.")
  os.exit()
end
local EM = {}
EM.last = gg.getFile()
EM.info = nil
EM.config = "/storage/emulated/0/Android/EM.cfg"
EM.data = loadfile(EM.config)
if EM.data ~= nil then
  EM.info = EM.data()
  EM.data = nil
end
if EM.info == nil then
  EM.info = {EM.last, EM.last:gsub('/[^/]+$', '')}
end
while true do
  EM.info = gg.prompt({
  "选择解密文件",
  "选择解密路径",
  "{功能}:弹窗导出",----3
  "{功能}:缓存导出",----4
  "{功能}:源式导出",----5
  "{功能}:强行函数爆破",----6
  "{功能}:printLoad",---7
  "{功能}:缓存核心",---8
  "{功能}:反拦截核心",---9
  "{功能}:调试模式",----10
  "{功能}:新反拦截核心",----11
  "{模式}:SH5.2-Max模式",---12
  "{功能}:网络验证破解"---13
  }, EM.info, {"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
  if EM.info == nil then break end
  gg.saveVariable(EM.info, EM.config)
--------
if EM.info[5] then
gg.alert("功能介绍:已经脱离恩比方式拦截,原创作者EMMM","继续")
local g={}
g.ssj=gg.prompt({"请输入拦截转储存范围大小"},{"1000"},{"number"})
if g.ssj==nil then g.ssj[1]=1000 end
fw=tonumber(g.ssj[1])
end
local ignoreHook="getLine;isVisible;setVisible;getFile;"

local ignoreInvoke="getResulEMount;sleep;searchNumber;searchAddress"
local TSignore="char"
  EM.last = EM.info[1]
  EM.test = loadfile(EM.last)
  if EM.test == nil then
    gg.alert('脚本加载错误: '..EM.last) break
  end
  local file=EM.info[1]

local outpath=EM.info[2].."/"

local filename=EM.info[1]:match("[^/]+$")
randomName=""

time=0
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
 if EM.info[3] then
 gg.alert("功能介绍:为全新print方式输出的拦截,是EMMM为了达到防刷以及拦截检测而写","确定")
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
      print(content):flush() end end
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
            print(" -- ")
            print(arg[1][ret])
            print(" --\n")
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
              print(" -- ")
              print(a)
              print(" --\n")
            end
            return ret
          end
        end

        --]]
        print('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then print(', ') end
          if typ(a) == 'string' then print('"') end
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
          print(b)
          if typ(a) == 'string' then print('"') end
        end
        print(")")
        print("\n")
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
if true then
local orig = gg.removeListItems
local hook = 1
hook = function (...)
local arg = {...}
return true
end
tr[hook] = orig
gg.removeListItems = hook
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
end
tr[hook] = orig
gg.addListItems = hook
end
----------------------------
if EM.info[4] then
gg.alert("功能介绍:作者执念,EMMM优化,全新输出方式")
i=0
ljjg="输出列表:\n"
local orig=gg.choice
local hook=1
hook=function (a)
i=i+1
ggg.toast("输出"..i.."次LOG拦截列表")
echo(ljjg)
return orig(a)
end
tr[hook]=orig
gg.choice=hook

local orig=gg.multiChoice
local hook=1
hook=function (a)
gg.alert("已导出拦截结果")
echo(ljjg)
return orig(a)
end
tr[hook]=orig
gg.multiChoice=hook
end		
if EM.info[4] then
local orig = gg.toast
local hook = 1
hook = function (...)
local arg = (...)
print('gg.toast("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
gg.toast	 = hook

local orig = gg.setRanges
local hook = 1
hook = function (...)
local arg = (...)
print('gg.setRanges('..arg..')')
return orig(...)
end
tr[hook] = orig
gg.setRanges	 = hook

local orig = gg.searchNumber
local hook = 1
hook = function (...)
local arg = (...)
print('gg.searchNumber("'..arg..'",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)')
return orig(...)
end
tr[hook] = orig
gg.searchNumber	 = hook

local orig = gg.editAll
local hook = 1
hook = function (...)
local arg = (...)
print('gg.editAll("'..arg..'",gg.TYPE_FLOAT)')
return orig(...)
end
tr[hook] = orig
gg.editAll	 = hook

local orig = gg.alert
local hook = 1
hook = function (...)
local arg = (...)
print('gg.alert("'..arg..'")\n--[[ return: 1 ]]')
return orig(...)
end
tr[hook] = orig
gg.alert = hook
end
------------------------------
if EM.info[5] then
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
if EM.info[15] then
local load_cnt = 1
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
if type == 1 and typ(content) == 'function' then
local f = nil
local func = function (...)
local ret = content(...)
if ret ~= nil then
if ret ~= '' then
total = total + #ret
end
else
if f ~= nil then
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
total = #content
end
end
ret = orig(...)
end
if total ~= 0 then
em=ggg.alert('恶魔&执念拦截提示:请选择执行操作\n\n拦截全源 '..load_cnt..'次大小 '..total..'字节\n\n拦截内容如下:\n'..content,'print导出','复制拦截内容','取消')
if em~=3 then
if em==1 then print(content) end
if em==2 then gg.copyText(content) end
end
print(_ENV)
load_cnt = load_cnt + 1
end
return ret
end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
end
end
--------------------
if EM.info[6] then
if nil then os.exit() end
pm=loadfile(EM.info[1])
if pm==nil then gg.alert('BUG') os.exit() end
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
if pm then pcall(pm) else pr(EM.info[1]..'伪装密码为：'..i-1) break end
end
end
------------------
if EM.info[7] then
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]					
local hook = 1
hook = function (...)
local arg = {...}
if type(arg[1])=='string' and #arg[1]>3000 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[print]'..EM.info[1]:match ("[^/]+$"),'w'):print(arg[1]) os.remove(EM.info[2]) end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
end
if EM.info[8] then
ggg.prompt({"点击确定"},{file},{"file"})
-------------------------
local t="stack traceback:\n	"..EM.info[1]..":13 in main chunk\n	[Java]: in ?"
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
if EM.info[9] then
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = EM.info[1],
      ['source'] = '@'..EM.info[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..EM.info[1],
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
if EM.info[10] then
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
if EM.info[10] then--tostring
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



if EM.info[10] then--os.clock
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



ttt=0
if EM.info[10] then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",345),"=")
    else
      ttt=0
      return orig("==","=")
    end
  end
  tr[hook] = orig
  string.gmatch = hook
end



if EM.info[10] then
  local orig = gg.setVisible(false)
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end



if true then
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert(str(arg).."\n"..str(result),"忽略","返回nil","返回随机文件")
    if x==2 then orig(EM.info[1]..".log.txt","w"):write(string.rep("1",521)):close()
    end
    if x==3 then orig(EM.info[1]..".log.txt","w"):write(string.rep("1",719)):close()
    end
    return result
  end
  io.open=hook
end
if EM.info[11] then
  --list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
  list={["gg"]=gg}
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
          io.open(EM.info[1].."xxx","a"):write(dy):close()
          if x==3 then gg.copyText(dy) end
        end
        return orig(...)
      end
      b[k]=hook
    end
  end
end
if EM.info[12] then
SH=gg.prompt({
  "选择解密的脚本",},{
  [1]="/storage/emulated/0/tencent/QQfile_recv/"}, 
  {"file"
 })
 
cy0325="/storage/emulated/0/tencent/QQfile_recv/一键解密>SH5.4.lua"

if SH==nil then
  gg.setVisible(true)
  print("你选择了取消!")
  os.exit()
  end

file=io.open(SH[1],'r')
jz=file:read('*a')
CYCY=jz

b=CYCY CY=b CCY=print CYY=load
CCCC=[[
function Exit()
print("emm")
os.exit()
end

function HOME()
lw=1
Main()
end

cs = 'emmm'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
]]
--5.3解密数字改下82.73
djh=string.char(78,70) djh={djh:byte(0, -1)} for i,v in ipairs(djh)do djh[i]=(v-#djh)*#djh end function SH_UID(t) res,iis=string.char(),0 for i in ipairs(t)do iis=iis==#djh and 1 or iis+1 res=res..string.char(t[i]+djh[iis]) end return res end SH_S1="gg.alert" SH_S2="gg.toast" SH_S3="gg.searchNumber" SH_S4="gg.editAll" SH_S5="gg.setRanges" SH_S6="gg.getResults" SH_S7="gg.clearResults" SH_S8="gg.searchAddress" SH_S9="gg.getResultCount" SH_S10="gg.REGION_BAD" SH_S11="gg.REGION_ANONYMOUS" SH_S12="gg.REGION_ASHMEM" SH_S13="gg.REGION_C_ALLOC" SH_S14="gg.REGION_C_BSS" SH_S15="gg.REGION_C_DATA" SH_S16="gg.REGION_C_HEAP" SH_S17="gg.REGION_CODE_APP" SH_S18="gg.REGION_CODE_SYS" SH_S19="gg.REGION_JAVA" SH_S20="gg.REGION_JAVA_HEAP" SH_S21="gg.REGION_OTHER" SH_S22="gg.REGION_PPSSPP" SH_S23="gg.REGION_STACK" SH_S24="gg.TYPE_FLOAT" SH_S25="gg.SIGN_EQUAL" SH_S26="gg.TYPE_DWORD" SH_S27="gg.TYPE_BYTE"SH_S28="gg.TYPE_WORD"
CY=CY:gsub("SH_UID%({.-}%)",function(Y)
CYY("xgp="..Y)()return '"'..xgp..'"' end)
CY=CY:gsub("SH_S%d+",function(Y)CYY("xgp="..Y)()return xgp end)
CCY("解")
io.open(cy0325, "w"):write(CY..CCCC):close()

local data=io.open(cy0325,"rb"):read("*a")
data=data:gsub("shshsh","\\n")
data=data:gsub("nfnfnf",'"')
data=data:gsub("syh",'"')
io.open(cy0325,"w+"):write(data):close()

file = io.open(SH[1]..'CY', 'w')
file:write(data)
file:close()
io.open(cy0325,"w")
os.remove(cy0325)
gg.alert("解密成功\n脚本保存在:"..SH[1]..".lua")
end
if EM.info[13] then
local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
    elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
    elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
    elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}
    end
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end
---------------------
    local test = EM.test
    EM = nil
    return test()
end
end