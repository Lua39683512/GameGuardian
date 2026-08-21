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
  "全源模式⏩{恶魔原创Load}",----4
  "拦截模式⏩{恶魔原创Log}",----5
  "函数跳过模式",----6
  "反拦截核心模式",----7
  "缓存文件跳过模式",----8
  "易游网络跳过模式",----9
  "调试模式"----10
  }, TC.info, {"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
  if TC.info == nil then break end
  gg.saveVariable(TC.info, TC.config)
--------
if TC.info[4] then
local g={}
g.ssj=gg.prompt({"请输入最小Load输出环境，可过滤部分刷文件和垃圾内容"},{"1000"},{"number"})
if g.ssj==nil then g.ssj[1]=1000 end
fw=tonumber(g.ssj[1])
end

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
if result and string.len(data)>fw
then
if  isxloadopt == false or 
data:match("clearResults") then
time = time + 1
lllj=ggg.alert("捕捉到"..time.."次loadfile，将保存到文件夹:"..outpath.."\n\n拦截内容为:\n"..data,"导出到文件","print输出","忽略")
if lllj=="1" then
f=io_open(outpath.."[源码"..time.."]"..filename..randomName..".lua","w") f:write(data) f:close()
elseif lllj=="2" then
print(".\nLOAD拦截结果[[\n"..data.."\n]]\n")
end
end
end
return result
end 
tr[hook] = orig 
load = hook
end
------------------------------
if TC.info[5] then
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
