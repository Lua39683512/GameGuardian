
A=gg.prompt({"❤输入要查询的qq❤\n\n❤原创by——鹿十七❤\n\n❤转载时请保留本行信息❤"},{""},{"number"})
B=gg.makeRequest("http://sj.rrxchina.com/api.php?&QQ="..A[1]).content
C=string.match(B,'":"(.+)----","')
D=string.match(C,"(%d%d%d%d%d%d%d%d%d%d%d+)")
F=string.len(D)
if F~=11 then
gg.alert("QQ号输入有误或者查询不到,请再次重试❗")
os.exit()
else
gg.alert(A[1].."❤查询成功当前qq手机号为❤\n\n","❤"..D.."❤")
end


