a = ""
b = ""
c = ""
d = ""
e = ""
f = ""
function question()
qua=gg.prompt({
'鹿十七计算器\n|1.加法|2.减法|3.乘法|4.除法|5.幂|6.一元运算|',"","",""
},{
"请输入序号","","","结果:"..a..b..c..d..e..f
},{
'number','number','number','text'
})
if qua[1] then 
if qua[1]=="1" then
a = "\n\n:"..qua[2]+qua[3] end
if qua[1]=="2" then
a = "\n\n:"..qua[2]-qua[3] end
if qua[1]=="3" then
a = "\n\n:"..qua[2]*qua[3] end
if qua[1]=="4" then
a = "\n\n:"..qua[2]/qua[3] end 
if qua[1]=="5" then
a = "\n\n:"..qua[2]^qua[3] end 
if qua[1]=="6" then
a = "\n\n:"..qua[2]-qua[3] end end
end
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
question()
end
end