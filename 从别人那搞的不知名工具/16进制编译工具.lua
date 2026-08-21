gg.alert(os.date([[
by Mz
Lua Encryption ends here
Please stop making encryption ]]))
v_value = gg.prompt({
  "请选择需要编译的脚本"
}, {
  [1] = "/sdcard"
}, {
  [1] = "file"
})
aaaaa = loadfile(v_value[1])
if aaaaa == nil then
  gg.alert("脚本加载失败:" .. v_value[1])
  os.exit()
else
  a = io.open(v_value[1], "r")
  assert(a)
  aa = a:read("*a")
  Mzdma = "gg.alert(os.date(\"by Mz\\nLua You started the Muzi luar script compiler \\nDo not decrypt, please retain the author's copyright. \"))\n" .. aa .. ""
  aaa = io.open(v_value[1] .. "a", "w")
  assert(aaa)
  aaa:write(Mzdma)
  aaa:close()
  fint = io.open(v_value[1] .. "Mz", "w")
  assert(fint)
  aaaaa = loadfile(v_value[1] .. "a")
 local cccc = (string.dump(aaaaa, true))
 zxcv = string.gsub(cccc, "LuaR","LuaM")
  fint:write(zxcv)
  fint:close()
  os.remove(string.gsub(v_value[1] .. "a", "@", ""))
  print("脚本编译成功\n打开进制软件修改即可\n加密后的文件在:" .. v_value[1] .. "Mz")
end
