--神仙
gg.setVisible(false)
i=1
t=0
h=0
while(true) do
    gg.toast(('○'):rep(t)..'●'..('○'):rep(20-i))
  if i==20 then o=1 h=h+1 end
  if i==1 then o=nil end
  if o then t=t-1 else t=t+1 end
 if o then i=i-1 else  i=i+1 end
    gg.sleep(65)--设置间隔
 if h==2 then break end--来回次数
end
t=1
for i = 5,100,5 do
jd=math.random(i,i+4)
if i==100 then jd=i end
    gg.toast('数据加载中%'..jd..'\n'..('■'):rep(t)..('□'):rep(20-t))
    t=t+1
    gg.sleep(400)--设置间隔
end