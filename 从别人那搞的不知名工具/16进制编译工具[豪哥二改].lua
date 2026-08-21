--原创莫笑  豪哥二改
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
  Mzdma = "gg.toast(\"脚本加载中........\")\n"..aa..""
  aaa = io.open(v_value[1] .. "a", "w")
  assert(aaa)
  aaa:write(Mzdma)
  aaa:close()
  fint = io.open(v_value[1] .. "编译", "w")
  assert(fint)
  aaaaa = loadfile(v_value[1] .. "a")
 local cccc = (string.dump(aaaaa, true))
 zxcv = string.gsub(cccc, "LuaB","LuaY")
  fint:write(zxcv)
  fint:close()
  os.remove(string.gsub(v_value[1] .. "a", "@", ""))
  print("脚本编译成功\n加密后的文件在:" .. v_value[1] .. "编译成功")
end
