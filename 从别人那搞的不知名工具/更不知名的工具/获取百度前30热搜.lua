-- 原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
-- 脚本已开源，供大家学习

Y=gg.makeRequest("https://api.pingping6.com/tools/baidutop/?type=1").content
YQ={}
for QX in Y:gmatch('"(.-)"')do
	YQ[#YQ+1]=QX
end
print(YQ)