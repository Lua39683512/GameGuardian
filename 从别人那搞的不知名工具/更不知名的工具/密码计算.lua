mm = gg.prompt({[1]="请输入账号"}, {[1]="0"}, {[1]="txet"})
mima=tostring(mm[1]*3-53626*5)     --此处要和本地验证的算法一致
gg.alert("计算完毕，账号“"..mm[1].."”的密码为“"..mima.."”该账号与密码已保存至数据库中！")
io.open("/storage/emulated/0/密码.txt","a"):write("账号："..mm[1].."    密码："..mima.."\n"):close()