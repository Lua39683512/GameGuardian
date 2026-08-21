--参考某人的基础上把内容大量优化
--[GRY]GW原创转载保留信息
--网站源码公布在芥子空间
--高玩
--不要修改任何配置
wz="http://qwudbe.xuelun.me/"--网站
jz="0"--配置
qq="2398134412"--qq号
function mian()
KS = gg.choice({
      "[账号登录]",
      "[账号注册]",
      "[退出脚本]"}, nil, "脚本测试")
if KS == nil then
else
if KS == 1 then
denglu()
end
if KS == 2 then
zhuce()
end
if KS == 3 then
os.exit()
end
end
FX1 = -1
end
function zhuce()
zc=gg.prompt({"账号(英文加数字6位)","密码(随便)","开始创建"},zc,{"text","text","checkbox"})
if zc[3]==true then
zhzc=wz.."api/zc.php?&zh="..zc[1].."&mm="..zc[2]
local paj = gg.makeRequest(zhzc).content
if paj=="账号以存在，无需注册"then
gg.alert("账号已存在")
zhuce()
end
if paj=="注册成功"then
gg.alert("注册成功")
denglu()
end
if paj=="缺少提交值！"then
gg.alert("创建失败")
zhuce()
end
end
end
function denglu()
--本地保存
bc = io.open("/sdcard/配置文件.txt", "rb")
if bc == nil then
user = ""
pass = ""
else
bc = io.open("/sdcard/配置文件.txt"):read("*a")
zh = bc:match("【账号】(.-)【账号】")
mm = bc:match("【密码】(.-)【密码】")
if bc == "" then
zh = ""
mm = ""
end
end
dl=gg.prompt({"账号(英文加数字6位)","密码(随便)","确定登录","本地保存账号输入"},{zh,mm},{"text","text","checkbox","checkbox"})
if dl[4]==true then
--配置生成
zh = dl[1]
mm = dl[2]
io.open("/sdcard/配置文件.txt", "w")
io.open("/sdcard/配置文件.txt", "w"):write("【账号】" .. zh .. "【账号】\n【密码】" .. mm .. "【密码】"):close()
--这里是脚本
end

if dl[3]==true then
zxcv=wz.."api/dl.php?&zh="..dl[1].."&mm="..dl[2]
local paljj = gg.makeRequest(zxcv).content
local paljj1 =paljj:match("用户账号:【(.-)】")
local paljj2 =paljj:match("剩余时间:【(.-)】")
if paljj=="请输入账号密码！"then
gg.alert("账号不存在")
denglu()
end
if paljj=="密码错误！"then
gg.alert("密码错误或账号不存在")
denglu()
end
lasd=gg.alert("你的账号为:"..paljj1.."\n你的时间剩余:"..paljj2.."","充值","进入脚本")
if lasd==2 then
if paljj2 > jz then
  gg.alert("所剩时间为:"..paljj2.."","进入脚本")
Main()--对接脚本开头
else
gg.alert("时间不足","请自行购买作者卡密")
gg.copyText(qq)
denglu()
end
end
if lasd==1 then
km=gg.prompt({"卡密","确定充值"},km,{"text","checkbox"})
if km[2]==true then
cz=wz.."api/cz.php?&zh="..dl[1].."&km="..km[1]
local di = gg.makeRequest(cz).content
if  di=="使用成功"then
  gg.alert("使用成功")
  denglu()
  end
if di=="没有该卡密！"then
gg.alert("卡密不存在")
denglu()
end
end
end
end
end


function Main()--就是这里
pcall(load(gg.makeRequest(wz.."jiaoben.txt").content))

end













while true do
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
    end
  if FX1 == nil then
  mian()
  end
  end