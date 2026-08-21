function Main()
A = gg.choice({
"调整",
"开启",
"退出",
},0,"只是一个模板而已\n开启还没做")
if A==1 then
a1() end
if A==2 then
a2() end
if A==3 then
os.exit()
end
FX1=-1
end

function a1()
if not io.open('/sdcard/Download/火箭筒连发','r') or not io.open('/sdcard/Download/迫击炮连发','r') or not io.open('/sdcard/Download/冲锋枪连发','r') or not io.open('/sdcard/Download/蹦蹦枪连发','r') or not io.open('/sdcard/Download/能量炮连发','r') or not io.open('/sdcard/Download/能量剑连发','r')  then
io.open('/sdcard/Download/火箭筒连发','w'):write(0)
io.open('/sdcard/Download/迫击炮连发','w'):write(0)
io.open('/sdcard/Download/冲锋枪连发','w'):write(0)
io.open('/sdcard/Download/蹦蹦枪连发','w'):write(0)
io.open('/sdcard/Download/能量炮连发','w'):write(0)
io.open('/sdcard/Download/能量剑连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
io.open('/sdcard/Download/连发','w'):write(0)
end

if gg.alert("设置好数值")==1 then
TS = gg.prompt({
'火箭筒[1;9]',
'迫击炮[1;9]',
'冲锋枪[1;9]',
'蹦蹦枪[1;9]',
'能量炮[1;9]',
'能量剑[1;9]',
'连发',
'连发',
'连发',
'连发',
'连发',
'连发',
},{"1","1","1","1","1","1","1","1","1","1","1","1",},{
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
})
if TS==nil then
TS_1=0
TS_2=0
TS_3=0
TS_4=0
TS_5=0
TS_6=0
TS_7=0
TS_8=0
TS_9=0
TS_10=0
TS_11=0
TS_12=0
else
TS_1=TS[1]
TS_2=TS[2]
TS_3=TS[3]
TS_4=TS[4]
TS_5=TS[5]
TS_6=TS[6]
TS_7=TS[7]
TS_8=TS[8]
TS_9=TS[9]
TS_10=TS[10]
TS_11=TS[11]
TS_12=TS[12]
end
io.open('/sdcard/Download/火箭筒连发','w'):write(TS_1)
io.open('/sdcard/Download/迫击炮连发','w'):write(TS_2)
io.open('/sdcard/Download/冲锋枪连发','w'):write(TS_3)
io.open('/sdcard/Download/蹦蹦枪连发','w'):write(TS_4)
io.open('/sdcard/Download/能量炮连发','w'):write(TS_5)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_6)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_7)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_8)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_9)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_10)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_11)
io.open('/sdcard/Download/能量剑连发','w'):write(TS_12)
end
end


while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main()
  end
end