lj1="/storage/emulated/0/二进制计算记录"
while true do
gg.showUiButton()
if gg.isClickedUiButton(true) then
b=gg.getSelectedListItems()
a=gg.choice({"计算偏移","退出脚本"},nil,"🇧 🇾 白\n提示您现在选择了"..#b.."个地址\n距离计算所需要的地址还有:"..(2-#b).."个地址\n该偏移计算器支持 二进制 八进制 十进制 十六进制")
if a==nil then
elseif a==1 then
if #b<2 then
gg.alert("您选择的地址只有"..#b.."个\n一共需要2个地址")
else
E=b[1]["address"]-b[2]["address"]
io.open(lj1,"w"):write("i=\"")
while true do
a=math.fmod(E,2)
io.open(lj1,"a"):write(math.abs(a))
E=E/2
a=math.fmod(E,2)
io.open(lj1,"a"):write(math.abs(a))
if E~=0 then
E=E/2
else
break
end
end
io.open(lj1,"a"):write("\"")
jz16=string.format("%X",math.abs(b[1]["address"]-b[2]["address"]))
jz10=math.abs(b[1]["address"]-b[2]["address"])
jz8=string.format("%o",math.abs(b[1]["address"]-b[2]["address"]))
pcall(loadfile(lj1))
tmp={jz16,jz10,jz8,i}
jzzh=gg.choice({"16进制偏移量为:"..jz16,"10进制偏移量为:"..jz10,"8进制偏移量为:"..jz8,"2进制偏移量为:"..i},nil,"点击复制")
if jzzh==nil then
else
gg.copyText(tmp[jzzh])
end
end
elseif a==2 then
os.exit()
end
end
end