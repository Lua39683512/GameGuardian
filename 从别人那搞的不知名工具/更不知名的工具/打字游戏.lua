function y(k)
nb=""
zm="qwertyuopasdfghjkzxcvbnm"


for i=1,k do
sj=math.random(1,#zm)
sc=zm:sub(sj,sj)
s2=math.random(1,2)


if s2==2 then 
sc=string.upper(sc)
end


nb=nb..sc
end


return nb
end


yt=gg.prompt({
"输入字符串开始难度",
"输入字符串多少关卡",
"是否开始倒计时",
"倒计时秒数"
},{
1,
10,
true,
10
},{
"text",
"text",
"checkbox",
"text"
})


if yt==nil then
os.exit()
end


for g=yt[1],yt[1]+yt[2] do


nr=y(g)
sj=os.time()+0


ui=gg.prompt({
"请在输入栏里面输入："..nr},{},{"text"})
if ui==nil then gg.alert("闯关失败\n\n最好成绩："..g.."关") os.exit()  end
if sj<os.time()-yt[4] and yt[3] then gg.alert("时间到期:已经过去"..os.time()-sj.."秒\n\n闯关失败\n\n最好成绩："..g.."关") os.exit()  end
if ui[1]~=nr then gg.alert("闯关失败\n\n最好成绩："..g.."关") os.exit()  end
gg.toast("第"..g.."关闯关成功")
end
if gg.alert("闯关成功","超级简单","查看奖励")==2 then 
bb=""
for hl=1,9 do
for ll=1,hl do
bb=bb..hl.."x"..ll.."="..hl*ll.." "
end
bb=bb.."\n"
end
print(bb)
end