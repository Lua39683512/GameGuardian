gg.alert("BYXX")
gg.setVisible(false)
i=1
t=0
function xx1()
gg.alert("无限弹窗")
return xx2()
end
function xx2()
gg.alert("无限弹窗")
return xx1()
end
for i=1,20000 do print("你退出做啥子啊")
end
gg.alert("开启无限弹窗","开启")
gg.alert("程序正在启动中")
for i = 5,100,5 do
jd=math.random(i,i+4)
if i==100 then jd=i end
    gg.toast('程序加载中%'..jd..'\n'..('■'):rep(t)..('□'):rep(38-t))
    t=t+2
    gg.sleep(350)
end
gg.alert("程序运行成功")
return xx1()