-- 本验证需要写出3个文件 来完成终极验证 -- 
a = io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","w")
a:write("")
b = io.open("/storage/emulated/0/Download/Toi.ini","w")
b:write("")
c = io.open("/storage/emulated/0/DCIM/Toi.ini","w")
c:write("")

mi=os.date("*t").min

if a == nil then os.exit() end
if b == nil then os.exit() end
if c == nil then os.exit() end
--可以替换为 gg.choice 来实现--
ToiYm = gg.alert("请根据您的情况进行下方操作","点击登录(有账号可点击)","内部人员(内部人员点击)","试用体验(无账号请点击)")
--------------登录验证-----------------
if ToiYm == 1 then goto ToiDl end
if ToiYm == 2 then goto ToiNb end
if ToiYm == 3 then goto ToiTy end
if ToiYm == nil then print("脚本结束") os.exit() end
os.exit()
::ToiDl::
--获取分钟数据
mimayz=tostring(mi*2+6909) --密码算法 例子 2018.7.23 12时01分 01*2+6909 = 6911 所以6911就是密码
--获取分钟数据
d = io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","a")
e = io.open("/storage/emulated/0/Download/Toi.ini","a")
mimayz=tostring(mi*2+6909)
F = gg.prompt({
  "     请输入账号：",--默认账号12345
  "     请输入密码：",--密码算法在下方
  "保存账号密码"},
{[1] = "12345",[2] = "分钟 乘2 加上6909 就是密码",[3] = true}, 
{[1] = "number",[2] = "number",[3] = "checkbox"})
if F[1] =="12345" then 
  if F[2] ==mimayz then 
    endtime=load("return os.time{year=2018, month=9, day=31, hour=23,min=59, sec=59}")()
    --year是年,month是月,day是日,hour是时,min是分,sec是秒
    --所以上面这个为2018年9月31日23时59分59秒
    if(os.time()>endtime) then
      gg.alert("账号密码已过期")
      os.exit()
    end
    III = F[1]
    OOO = F[2]
    g = io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","w")
    assert(g)
    g:write(III)
    h = io.open("/storage/emulated/0/Download/Toi.ini","w")
    assert(h)
    h:write(OOO)
    print("登录验证")
    goto GNYM
  else
    print("密码错误") os.exit() end
else
  print("密码错误") os.exit() end

--------------内部验证-----------------

::ToiNb::--内部验证 也就是QQ验证
--下面是qq账号列表,请自行添加修改.
qqaccounts = {
  '1801166741',
  '709606679',
  '20190249'
}
passflag=false 
for i, v in ipairs(qqaccounts)
do file = io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. v .. "artfilter.config", "rb") 
  if file then 
    passflag=true 
    file:close() 
    break 
  end 
end 
if passflag then 
  l = io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","w") 
  l:write("内部人员")
  k = io.open("/storage/emulated/0/Download/Toi.ini","w")
  k:write("内部人员")
  goto GNYM --这里跳转GNYM功能页面
else 
  gg.alert("验证失败!您不是我们内部人员 请联系北玄进内部")
  os.exit()
end
--------------试用验证-----------------

::ToiTy::--试用体验
yz = gg.alert('北玄提示🔊：您可以体验此脚本300次，体验次数用完无法再次使用！','➽开始体验','➽加入内部',' ➽退出脚本')
if yz == 2 then gg.alert('北玄提示🔊：免费脚本群709606679 免费更新！','➽知道了') os.exit() end
if yz == 3 then gg.alert("退出成功 709606679免费脚本群","➽退出") print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥") print("♥♥♥♥在你的世界♥北玄就是王♥♥♥♥") print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥") os.exit() end
file=io.open('/storage/emulated/0/tencent/QQfile_recv/.thumbnails/北玄验证文件','a+')
file:write("1")
cs = file:seek("end") 
ss = 300

if cs < ss then 
  gg.alert('北玄提示：您当前使用次数为'..cs..'次！剩余可用次数为'..ss-cs..'次！')
else 
  gg.alert('北玄提示：您当前可用次数已用完！获取最新脚本请加群！')
  os.exit()
end 
tg = gg.alert('北玄提示：验证通过！欢迎使用！','➽开始奔放','➽体验次数',' ➽退出脚本')
if tg == 1 then 
  m = io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","w") 
  m:write("试用人员")
  n = io.open("/storage/emulated/0/Download/Toi.ini","w")
  n:write("试用人员")
  goto GNYM end
if tg == 2 then 
  gg.alert('联系北玄1801166741获取体验次数！','➽知道了') end
if tg == 3 then 
  gg.alert("退出成功 709606679免费脚本群","➽退出") print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥") print("♥♥♥♥在你的世界♥北玄就是王♥♥♥♥") print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥") os.exit() end 



::GNYM::--功能区域
i= io.open("/storage/emulated/0/tencent/QQfile_recv/.thumbnails/Toi.ini","r")
local iii = i:read("*a")
p = io.open("/storage/emulated/0/Download/Toi.ini","r")
local ppp = p:read("*a")
GNym = gg.choice({
  "功能代码区域",
},nil,"账号信息:\n账号:"..iii.."\n密码:"..ppp.."")
