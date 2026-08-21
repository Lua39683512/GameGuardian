--字符串加密1.3 优化版
--作者:文艺 QQ:2781775952
local art = {}
art.file = gg.getFile()
art.path = art.file:gsub("[^/]+$","") --#file path
art.name = art.file:match("[^/]+$") --#file name
art.config = gg.EXT_FILES_DIR .. "/" .. art.name .. ".cfg"
art.data = loadfile(art.config)

if art.data then
  art.data = art.data()
 else
  art.data = {art.file}
end

info = gg.prompt({"选择加密文件:"}, art.data, {"file"})

if not info then return end
gg.saveVariable(info, art.config)

art.text, art.error = loadfile(info[1])
if not art.text then
  return gg.alert("加载/汇编脚本失败: " .. info[1]:match("[^/]+$") .. "\n\n" .. art.error:gsub(info[1],"错误详情"))
end

file = info[1]
art.content = (io.open(file,"r"):read("*a")) --#file content

print("正在加密基础库...\n")

function VarToString(var, level)
  local szRet = ""
  level = level or 0
  local function Tabs(n)
    local szTabs = ''
    for i = 0,n do szTabs = szTabs end
    return szTabs
  end

  local szType = type(var)
  if szType == "number" then
    szRet = szRet .. var
   elseif szType == "boolean" then
    szRet = szRet .. tostring(var)
   elseif szType == "string" then
    szRet = szRet .. string.format("%q", var)
   elseif szType == "table" then
    szRet = szRet .. "{"
    for k, v in pairs(var) do
      local szKey = VarToString(k)
      local szVal = VarToString(v)
      if (szKey and szVal) then
        szRet = szRet..Tabs(level)..VarToString(v, level+1)..','
      end
    end

    local metatable = getmetatable(var)
    if metatable ~= nil and type(metatable.__index) == "table" then
      for k, v in pairs(metatable.__index) do
        local szKey = VarToString(k)
        local szVal = VarToString(v)
        if (szKey and szVal) then
          szRet = szRet ..Tabs(level)..VarToString(v, level+1) .. ","
        end
      end
    end

    szRet = szRet .. Tabs(level-1) .. "}"

   elseif szType == "function" then
    szRet = szRet .. tostring(var)
   elseif szType == "nil" then
    return nil
  end

  return szRet
end
function strEnc(text)
  local txt, code, rand = "", {}, {}

  function EncHex(text,num)
    text = string.gsub(text, "\\t", "\t")
    :gsub("\\n", "\n")
    :gsub("\\34", "\34")
    :gsub("\\39", "\39")
    return text:gsub(".", function(enc)
      return string.format("%x", (string.byte(enc)))
    end):gsub(" ", "+")
  end

  str = EncHex(text)

  load("str={" .. table.concat({str:byte(0, -1)}, ",") .. "}")()
  for i=1,#str do
    random = math.random(1,60)
    code[i] = str[i] - random
    rand[i] = random
  end

  txt = txt .. "(function(str)local i={} _ = " .. VarToString(rand) .. " for i=1,#str do _[i]=str[i]+_[i] end for i in ipairs(_) do i[#i+1] = char(_[i]) end return dec(table.concat(i)) end)(" ..VarToString(code).. ")"

  return txt
end

 
function FuncEnc(data)
  local func = 0
  for order,code in pairs(_G) do
    if type(code) == "table" then
      for name, fun in pairs(code) do
        brary=order .. "." .. name
        if data:find(brary) then
          repeat
            func = func + 1
            data=data:gsub(brary, function()
              return " _ENV[" .. strEnc(order)  .. "][" .. strEnc(name) .. "]"
            end)
          until data:find(brary) == nil
        end
      end
    end
  end
  print("已加密函数:" .. func .. "个\n")
  return data
end

art.content = FuncEnc(art.content)
function loadLua(txt,content)
  text, error = load(content)
  if not text then
    return os.exit(print(txt .. ":" .. file:match("[^/]+$") .. "\n\n " .. error:gsub(file,"错误详情")))
  end
end

print("正在加密字符串...\n")

data, func = {}, 0
for text in string.gmatch(art.content, '[^\n]+') do
  local types = text:match("['" .. '"]')
  if types == "'" then
    func = func + 1
    text = text:gsub("'(.-)'", strEnc)
    text = text:gsub('"(.-)"', strEnc)
   elseif types == '"' then
    func = func + 1
    text = text:gsub('"(.-)"', strEnc)
    text = text:gsub("'(.-)'", strEnc)
  end
  data[#data+1] = text
end

print("已加密内容:" .. func .. "个\n")
data = table.concat(data,'\n')
art.content = "char = string.char function dec(txt)return(txt:gsub(\"..\",function(i)return char((tonumber(i,16)))end))end\n" .. data
art.content = string.gsub(art.content, "%-%-[^\n]+", "")
art.content = string.gsub(art.content, "\n", " ")
art.content = string.gsub(art.content, "%s%s", " ")
loadLua("加密失败!",art.content)
if gg.alert("脚本加密完成!\n是否进行编译?(否则压缩一行)", "是", "否")==1 then
  io.open(file .. ".art","w")
  io.write(string.dump(load(art.content), true, true))
  io.close()
  print("\n加密路径:" .. file .. ".art\n")
 else
  io.open(file .. ".art","w")
  io.write(file)
  io.close()
  print("\n加密路径:" .. file .. ".art\n")
end