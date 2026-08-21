--by文艺QQ257647698
info = gg.prompt({
  "选择加密的脚本 :",
  "选择Lua编译形式",
  "添加调试信息"
}, {
  gg.getFile(),
  "LuaE"
}, {
  "file",
  "text",
  "checkbox"
})
if info == nil then
  return
end
if loadfile(info[1]) then
else
  gg.alert("无法运行此文件 :\n" .. info[1], "")
  return
end
if info[3] == true then
  Checker = false
else
  Checker = true
end
if load((string.gsub(string.dump(loadfile(info[1]), Checker), "LuaR", info[2], 1))) then
else
  gg.alert("\"" .. info[2] .. "\"标准LUA编译不是此形式", "")
  return
end
doc = io.open(info[1] .. ".LN.lua", "w")
doc:write((string.gsub(string.dump(loadfile(info[1]), Checker), "LuaR", info[2], 1)))
doc:close()
print("编译脚本保存到:\n" .. info[1] .. ".LN.lua")