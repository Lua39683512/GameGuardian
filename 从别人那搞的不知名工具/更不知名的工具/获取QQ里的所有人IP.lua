----原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
A=os.date("21"..".".."%m"..".".."%d"..".".."%H")--读取本地时间
Y=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..A..".log","r"):read("*a")

YQ={}
YQ1={}
for QX in Y:gmatch('"ip": "(.-)"')do
	YQ[QX]=1--使用数据作为key，这样即使重复了也只有一个值
end

for k, v in pairs(YQ) do
    YQ1[#YQ1 + 1] = k--遍历key
end
YQ = YQ1
YQ1 = nil

table.insert(YQ,"全部导出")

Y=gg.multiChoice(YQ,nil, "❤当前共有" .. (#YQ-1) .. "个人的ip信息❤")

if not Y then
return print('你未做出任何点击事件')
end

if Y[#YQ]==true then
io.open("ip.lua","w"):write(tostring(YQ))
print("全部导出成功")
end