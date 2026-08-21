
yx=gg.prompt({"选择脚本"},{gg.getFile()},{"file","checkbox","checkbox"})
if yx==nil then os.exit(print("未选择"))end
last=yx[1] 
test,error=loadfile(last) 
if test==nil then
gg.alert('脚本错误!\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n错误:\n'..error)
os.exit(print("结束"))
end
ym=io.open(yx[1],"r"):read("*a")
io.open(yx[1].."译.lua","w"):write(string.dump(load(ym),true,true))