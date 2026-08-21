--植入在脚本置顶
function yy()
  tishi="你的专属账号为：“"
  tishi2="”将此字符发送给作者以获取密码\n请不要格式化手机硬盘以免账号丢失！"
  tishi3=tishi..wenjian..tishi2
  gg.alert(tishi3)
  gg.alert("你的专属账号已保存在/storage/emulated/0/专属账号.txt中")
  io.open("/storage/emulated/0/专属账号.txt","w"):write(wenjian):close()
  
  mm = gg.prompt({[1]="请输入密码"}, {[1]="0"}, {[1]="txet"})
  if mm[1] == mima then
    print("密码正确")
    io.open("/storage/emulated/0/Android/data/data","w"):write(mm[1]):close()
   else
    print("密码错误")
    os.exit()
  end
end
  
file,err=io.open("/storage/emulated/0/Android/data/system")                                      --判断账号是否存在
if err==nil then
                                                                                                  --账号存在则
  wenjian=io.open("/storage/emulated/0/Android/data/system"):read("*a")                --读取账号
  mima=tostring(wenjian*3-53626*5)                                                       --计算密码
    --此处为账号和密码的对应关系，通过数学运算得出与账号对应的唯一密码，算法可以修改只要计算和验证的算法一致
   file,errr=io.open("/storage/emulated/0/Android/data/data")                             --判断密码是否存在
   if errr==nil then                                                                     --如果密码存在则                  
    baocun=io.open("/storage/emulated/0/Android/data/data"):read("*a")          --读取密码                  
    if baocun==mima then                                                         --判断密码是否正确          
                                                                                  --正确则继续执行                                                                    
     else                                                                         --不正确则
      yy()                                                             --调用函数发起验证
    end
   else                                                                                --如果密码不存在则
    yy()                                                                    --调用函数发起验证
  end
 else
  suijishu=math.random(1000000,9999999)                                                       --账号不存在则
  io.open("/storage/emulated/0/Android/data/system","w"):write(suijishu):close()              --创建账号
  yy()
end
--植入在脚本置顶




