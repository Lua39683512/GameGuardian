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
  "随机文件名",
  "工具拦截模式～{Load}",----4
  "Log截源模式～{Log}",----5
  "缓存文件破解模式～{辅助}",----6
  "反拦截破解模式～{辅助}",---7
  "参数调用模式>{功能}",--8
  "模式超强跳过>{功能}",---9
  "文件防删功能>{功能}",---10
  "acquisition>{♦key♦}",
  "密码计算:请输入0",----11
  "KEY伪装～{密码计算}",----12
  "KEY模式切换～{简单>强制}",----13
  "捕捉拦截模式～{LOG}",---14
  "恶魔&执念模式～{恶魔&执念}",----15
  "REVO拦截模式～{revo专用模式}",---16
  "SH拦截模式～{SH5.3>SH5.4}",---17
  "加载输出模式~{文件生成拦截}",---18
  "调用输出模式~{新LogⅤprint方式}",---19
  "二代Log模式～{针对运行失败的加密}>{Bug}",--21
  "三代Log模式～{LOG&print}",---22
  "释怀字符串转换模式"---23
  }, EM.info, {"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
  if EM.info == nil then break end
  gg.saveVariable(EM.info, EM.config)
--------
if EM.info[4] then
local g={}
g.ssj=gg.prompt({"请输入最小Load输出环境，可过滤部分刷文件和垃圾内容"},{"1000"},{"number"})
if g.ssj==nil then g.ssj[1]=1000
end
fw=tonumber(g.ssj[1])
end

local ignoreHook="getLine;isVisible;setVisible;getFile;"

local ignoreInvoke="getResultCount;sleep;searchNumber;searchAddress"
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
if EM.info[3]==true then
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
if EM.info[4] then
local orig = load
local hook = 1 
hook = function (...) 
local arg = {...}
local result= orig(...)
local data=str(arg[1])
if result and string.len(data)>fw
then
if  isxloadopt == false or 
data:match("clearResults") then
time = time + 1
lllj=ggg.alert("捕捉到"..time.."次loadfile，将保存到文件夹:"..outpath.."\n\n拦截内容为:\n"..data,"导出文件","print输出","下一步")
if lllj=="1" then
f=io_open(outpath.."[源码"..time.."]"..filename..randomName..".lua","w") f:write(data) f:close()
elseif lllj=="2" then
print(".\nLoad查获内容[[\n"..data.."\n]]\n")
end
end
end
return result
end 
tr[hook] = orig 
load = hook
end
------------------------------
if EM.info[5] then
 local file = outpath.."[Log]"..filename..randomName..'.log'
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
----------------
if EM.info[6] then
ggg.prompt({"点击确定"},{file},{"file"})
end
-------------------
  if EM.info[7] then
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

if EM.info[7] then
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
-------------------
if EM.info[8] then
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
--------------
    if EM.info[8] then
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
---------------
if EM.info[9] then
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
return "加强" end
end
---------------------
if EM.info[10] then
local orig = os.remove
local hook = 1
hook = function (...)
em1=em1+1
local arg = {...}
gg.toast("成功跳过"..em1.."次删除")
gg.sleep(70)
return true
end
tr[hook] = orig
em1=0
os.remove = hook
end				
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
if EM.info[11] then
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
------------------------
if EM.info[13] then
if EM.info==nil then os.exit() end
pm=loadfile(EM.info[1])
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
i=EM.info[12]
while(true) do
gg.prompt=function ()
if EM.info[14] then
i=math.random(math.random(0,9999),math.random(10000,99999999)) end
o={tostring(i)}
i=i+1
if not g then g=alr('正在拦截KEY中,请稍后！')  end
return o
end
if pm then pcall(pm) else gg.setVisible(true) pr(EM.info[1]..'拦截密码为：'..o[1]) pr(i) break end
end
end
---------------------------
if EM.info[15] then
ss=io.open
io.open=function (...)
fh=ss(...)
gg.alert("检测到反拦截,正在跳过".. ...)
return fh
end
local orig = io.open
local hook = 1
hook = function (...)
local arg = {...}
echo('io.open:', arg)
return orig(...)
end
tr[hook] = orig
io.open = hook
local orig = os.exit
local hook = 1
hook = function (...)
em2=em2+1
local arg = {...}
gg.toast("成功"..em2.."次退出")
gg.sleep(70)
return true
end
tr[hook] = orig
em2=0
os.exit = hook
result = "----------------------------捕捉拦截----------------------/n---------------n/"
function debug.sethook()
  gg.sleep(1)
end
function gg.copyText()
  gg.sleep(1)
end
function gg.processKill()
  gg.sleep(1)
end
function gg.getTargetPackage()
  local L0_0, L1_1
  packge = "com.tencent.tmgp.pubgmhd"
  L0_0 = packge
  return L0_0
end
function gg.setRanges(A0_2)
  if A0_2 == 32 then
    A0_2 = "A内存：gg.REGION_ANONYMOUS"
  end
  if A0_2 == 524288 then
    A0_2 = "As内存：gg.REGION_ASHMEM"
  end
  if A0_2 == 131072 then
    A0_2 = "B内存：gg.REGION_BAD"
  end
  if A0_2 == 16384 then
    A0_2 = "Xa内存：gg.REGION_CODE_APP"
  end
  if A0_2 == 32768 then
    A0_2 = "Xs内存：gg.REGION_CODE_SYS"
  end
  if A0_2 == 4 then
    A0_2 = "Ca内存：gg.REGION_C_ALLOC"
  end
  if A0_2 == 16 then
    A0_2 = "Cb内存：gg.REGION_C_BSS"
  end
  if A0_2 == 8 then
    A0_2 = "Cd内存：gg.REGION_C_DATA"
  end
  if A0_2 == 1 then
    A0_2 = "Ch内存：gg.REGION_C_HEAP"
  end
  if A0_2 == 65536 then
    A0_2 = "J内存：gg.REGION_JAVA"
  end
  if A0_2 == -1032320 then
    A0_2 = "O内存：gg.REGION_OTHER"
  end
  if A0_2 == 262144 then
    A0_2 = "Rs内存：gg.REGION_PPSSPP"
  end
  if A0_2 == 64 then
    A0_2 = "S内存：gg.REGION_STACK"
  end
  if A0_2 == 2 then
    A0_2 = "Jh内存：gg.REGION_JAVA_HEAP"
  end
  result = result .. "内存范围：('" .. A0_2 .. "')\n"
  gg.setVisible(true)
end
function gg.searchNumber(A0_3, A1_4)
  if A1_4 == 127 then
    A1_4 = "A类型：gg.TYPE_AUTO"
  end
  if A1_4 == 1 then
    A1_4 = "B类型：gg.TYPE_BYTE"
  end
  if A1_4 == 64 then
    A1_4 = "E类型：gg.TYPE_DOUBLE"
  end
  if A1_4 == 4 then
    A1_4 = "D类型：gg.TYPE_DWORD"
  end
  if A1_4 == 16 then
    A1_4 = "F类型：gg.TYPE_FLOAT"
  end
  if A1_4 == 32 then
    A1_4 = "Q类型：gg.TYPE_QWORD"
  end
  if A1_4 == 2 then
    A1_4 = "W类型：gg.TYPE_WORD"
  end
  if A1_4 == 8 then
    A1_4 = "X类型：gg.TYPE_ XOR"
  end
  result = result .. "搜索数据：gg.searchNumber('" .. A0_3 .. "')\n"
  result = result .. "搜索类型：('" .. A1_4 .. "')\n"
end
function gg.searchAddress(A0_5, A1_6)
  result = result .. "搜索地址：('" .. A0_5 .. "')\n"
  result = result .. "地址蒙版：('" .. A1_6 .. "')\n"
end
function gg.setValues(A0_7)
  result = result .. "setValues数组：('" .. A0_7 .. "')\n"
  result = result .. "--------------" .. "\n"
  gg.setVisible(true)
end
function gg.editAll(A0_8, A1_9)
  if A1_9 == 127 then
    A1_9 = "A类型：gg.TYPE_AUTO"
  end
  if A1_9 == 1 then
    A1_9 = "B类型：gg.TYPE_BYTE"
  end
  if A1_9 == 64 then
    A1_9 = "E类型：gg.TYPE_DOUBLE"
  end
  if A1_9 == 4 then
    A1_9 = "D类型：gg.TYPE_DWORD"
  end
  if A1_9 == 16 then
    A1_9 = "F类型：gg.TYPE_FLOAT"
  end
  if A1_9 == 32 then
    A1_9 = "Q类型：gg.TYPE_QWORD"
  end
  if A1_9 == 2 then
    A1_9 = "W类型：gg.TYPE_WORD"
  end
  if A1_9 == 8 then
    A1_9 = "X类型：gg.TYPE_ XOR"
  end
  result = result .. "修改数据：gg.editAll('" .. A0_8 .. "')\n"
  result = result .. "修改类型：('" .. A1_9 .. "')\n"
  result = result .. "--------------" .. "\n"
  gg.setVisible(true)
end
function gg.getResultCount()
  local L0_10, L1_11
  jieguo = 5
  L0_10 = jieguo
  return L0_10
end
function os.exit()
  filel = path .. "[捕捉模式]" .. filename .. ".lua"
  io.open(filel, "w")print(result):close()
  gg.setVisible(true)
end
function Zexit()
  filel = path .. "[捕捉模式]" .. filename .. ".lua"
  io.open(filel, "w")print(result):close()
  gg.setVisible(true)
end
filepath = EM.info[1]
path = filepath:gsub("[^/]+$", "")
filename = string.sub(filepath, #path + 1, #filepath)
dofile(EM.info[1])
end
---print改成:write可生成文件
-------------------
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
if EM.info[16] then
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
------------------
if EM.info[17] then
print=nil
zt='EM状态:未伪装key'
function hy(n)
local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  res=res:gsub('%%','百分之')
  res=res:gsub('\n',[[\n]])
  return res
end
::zy::
ty=1 lj='/sdcard/tencent/QQfile_recv/'
if m then ty=nil lj=a[1] end
a=gg.prompt({'状态：'..zt},{lj},{'file'})
if a then
if not m then 
local hook=function()
local o,v=debug.getlocal(1,4)
if type(v)=='table' and #v==10 and type(v[1])~='table' then m=v zt='key拦截完毕'
end
end
debug.sethook(hook,'',1)
pcall(loadfile(a[1]))
goto zy
else 
wj=a[1]..'转换'
a=io.open(a[1]):read("*a")
p=a
for i in a:gmatch('gg%......(.-)[)]') do
a=i:match('%p(.-)[(]{')
if a and a:match('\n') then a=nil end
if a then
a=a:gsub('%s','')
for i in a:gmatch('%p') do
a=a:match('%p(.+)')
end
break
end
end
b=gg.prompt({'手动修改调用符'},{a},{'text'})
if b then a=b[1] end
a=a..'[(]{(.-)}[)]'
for i in p:gmatch(a) do
pcall(load('g=hy({'..i..'})'))
p=p:gsub(a,'"'..g..'"',1)
end
end
else
os.exit()
end
p=p:gsub('百分之','%%')
io.open(wj,'w'):write(p)
gg.alert(p)
end
----------------------
if EM.info[18] then
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
-----------------
if EM.info[19] then
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]					
local hook = 1
hook = function (...)
local arg = {...}
if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[调用输出]'..EM.info[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(EM.info[2]) end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
-------------------------
if EM.info[20] then
ss=io.open
io.open=function (...)
fh=ss(...)
gg.alert("检测到反拦截，正在跳过".. ...)
return fh
end
local orig = io.open
local hook = 1
hook = function (...)
local arg = {...}
echo('io.open:', arg)
return orig(...)
end
tr[hook] = orig
io.open = hook
local orig = os.exit
local hook = 1
hook = function (...)
em2=em2+1
local arg = {...}
gg.toast("成功"..em2.."次退出")
gg.sleep(70)
return true
end
tr[hook] = orig
em2=0
os.exit = hook
end
local file='/sdcard/123'
function gg.setVisible()
return true
end
local orig=print
local hook=1
hook=function(...)
local 	a=(...)
return orig(...) end
end
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
if i==1 then b=b..a[i]..b else b=b..','..EM.info[1] end
end
local orig = gg.toast
local hook = 1
hook = function (...)
local arg = (...)
print('gg.toast("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
gg.toast = hook
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
--------------------
if EM.info[21] then
fh1=gg.toast
gg.toast=function (a)
print("gg.toast("..a..")")
return fh1(a)
end
fh2=gg.searchNumber
gg.searchNumber=function (a,b,c,d,e,f)
print("gg.searchNumber("..a..", "..b..", false, gg.SIGN_EQUAL, 0, -1)")
return fh2(a,b,c,d,e,f)
end
fh3=gg.getResults
gg.getResults=function (a)
print("gg.getResults("..a..")")
return fh3(a)
end
fh4=gg.editAll
gg.editAll=function (a,b)
print('gg.editAll('..a,b..')')
return fh4(a,b)
end
fh5=gg.setRanges
gg.setRanges=function (a)
print("gg.setRanges("..a..")")
return fh5(a)
end
end
if EM.info[22] then
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
if true then
if name=='alert' then 
local arg = {...}
print('gg.alert("',arg[1],'")\n--[[ return: 1 ]]')
end
if name=='searchNumber' then 
local arg = {...}
print('gg.searchNumber("',arg[1],'", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)')
end
if name=='editAll' then 
local arg = {...}
print('gg.editAll("',arg[1],'", gg.TYPE_FLOAT)')
end
if name=='toast' then 
local arg = {...}
print('gg.toast("',arg[1],'")')
end				 
end
return orig(...)
end
tr[hook] = orig
gg[i] = hook
end
end			
end
if EM.info[23] then
function Decryption(DZSH,Cysh)
  return (Cysh:gsub('..', function (DZSH)
    return string.char((tonumber(DZSH,16))%256)
  end))
end
path=gg.prompt({"选择文件"},{gg.getFile()},{"file"})
con=io.open(path[1],"r")
cont=io.open(path[1],"r")
c=cont:read("*a")
file=io.open(path[1].."-恶魔解.lua","w")
file:write("")
file:close()
i=0 host={}
while true do
d=con:read("*l")
if d==nil then break end
i=i+1
host[i]=d
end
--print(host)
for k,v in pairs(host) do
cz1=string.find(v,"ovo_sh%(nf")
if cz1 ~= nil then
nr=v:match('ovo_sh%(nf,%s"(.-)"%)')
jie=Decryption('DZSH',nr)
q=v:match("(.+)ovo_sh")
if q==nil then q="" end
hou=v:match('"%)(.+)')
if hou==nil then hou="" end
xr=q..'"'..jie..'"'..hou
file=io.open(path[1].."-恶魔解.lua","a+")
print(xr)
print("\n")
print()
else
file=io.open(path[1].."-恶魔解.lua","a+")
print(v)
print("\n")
print()
end
end
w=io.open(path[1].."-恶魔解.lua","r")
nr=w:read("*a")
nr=string.gsub(nr,"EM_","gg.")
file=io.open(path[1].."-恶魔解.lua","w")
print(nr)
print()
end
    ------------
    local test = EM.test
    EM = nil
    return test()
end