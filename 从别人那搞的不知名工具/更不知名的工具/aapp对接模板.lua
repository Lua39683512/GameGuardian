---请注明小白Xy野格，谁他妈日开了来找我，你看我日不日你妈就完了
id=2726
key="861630888"
sidc=2
sidj=1
function gnjb()
------↓-自己的脚本放这里面---↓------


------↑-自己的脚本放这里面---↑------
end



--vxsx函数
function ovo_sh(jie,Text)return (Text:gsub('..', function (jie)return string.char((tonumber(jie,16))%256) end))end
akey=key


--Split函数
function Split(szFullString, szSeparator)
local nFindStartIndex = 1
local nSplitIndex = 1
local nSplitArray = {}
while true do
   local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
   if not nFindLastIndex then
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
    break
   end
   nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
   nFindStartIndex = nFindLastIndex + string.len(szSeparator)
   nSplitIndex = nSplitIndex + 1
end
return nSplitArray
end

--功能中转
function jbzz()
if ycjb=="true" then pcall(
load(icode(str2hex(string.gsub(xcode.decode(jbsj),"Aapp",ikey)))))
 elseif ycjb=="false" then gnjb() end
end

function zf(bz,spid)--支付备注
--生成订单号
local ddh=os.date("%Y")..os.date("%m")..os.date("%d")..os.date("%H")..os.date("%M")..os.date("%S")..math.random(1,9)
--支付方式
local zffs=gg.alert("请选择支付方式","QQ","微信","支付宝")
if zffs==1 then fkfs="qqpay" zffs="QQ" elseif zffs==2 then fkfs="wxpay" zffs="微信" elseif zffs==3 then fkfs="alipay" zffs="支付宝" end

local Y=os.date("%Y")-2000
local lj="http://ipay.xixuan.ink/pay.php?&key="..paykey.."&ddh="..ddh.."&fkfs="..fkfs.."&spid="..spid.."&bz="..bz
local lja=gg.makeRequest(lj).content
local sid=Y..os.date("%d")..lja:match("%错误码<(.-)%>") sid=sid*payc+payj
local lj=lj.."&sid="..sid gg.copyText(lj)
gg.toast("请到浏览器粘贴网址进行支付")
gg.setVisible(false)
zfjc(ddh,zffs)      --检测支付
wa="true" maine(ddh,zffs)
gg.setVisible(false)
end


function zfjc(ddh,zffs)
local SN = gg.choice({
  "已完成支付",
  "返回商品",
  "退出脚本"
 }, nil, "你的订单号："..ddh.."\n已选择 "..zffs.."支付")
 if SN=="1" then wa="false" jczf(ddh) end
  if SN=="2" then spxt() wa="false" end
   if SN=="3" then os.exit() end
XGCK = -1
 if wa=="1" then gg.setVisible(false) end
end



function maine(ddh,zffs)
while wa=="true" do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    zfjc(ddh,zffs)
  end
end
end

function str2hex(str)
	if (type(str)~="string") then
	    return nil,"str2hex invalid input type"
	end
	str=str:gsub("[%s%p]",""):upper()
	if(str:find("[^0-9A-Fa-f]")~=nil) then
	    return nil,"str2hex invalid input content"
	end
	if(str:len()%2~=0) then
	    return nil,"str2hex invalid input lenth"
	end
	local index=1
	local ret=""
	for index=1,str:len(),2 do
	    ret=ret..string.char(tonumber(str:sub(index,index+1),16))
	end
 
	return ret
end

function hex2str(hex)
	if (type(hex)~="string") then
		return nil,"hex2str invalid input type"
	end
	local index=1
	local ret=""
	for index=1,hex:len() do
		ret=ret..string.format("%02X",hex:sub(index):byte())
	end
 
	return ret
end

function jczf(ddh)--检测支付结果
local jc=gg.makeRequest("http://ipay.xixuan.ink/app.php?key="..paykey.."&fs=cx&ddh="..ddh).content
--local jcqd="http://ipay.xixuan.ink/app.php?key="..paykey.."&fs=appyes&ddh="..ddh
--local zfjb=gg.makeRequest(jcqd).content
local zfjg=jc:match("%[(.-)%]")
if zfjg=="成功" then --提交结果
local zf=jc:match("支付成功%[(.-)%]")
if zf=="true" then--支付结果

jg=string.match(jc,"卡密")
spmc=jc:match("商品名称%[(.-)%]")
if jg=="卡密" then--购买卡密商品
local km=jc:match("卡密为%[(.-)%]")--获得卡密
local f=io.open("/storage/emulated/0/购买记录.txt",'r')--写入记录
 if f~=nil then
local xr=io.open("/storage/emulated/0/购买记录.txt"):read("*a") io.open("/storage/emulated/0/购买记录.txt","w"):write(xr.."\n\n"..os.date("%Y-%m-%d %H:%M:%S").."  卡密："..km):close()  io.close(f) 
else io.open("/storage/emulated/0/购买记录.txt","w"):write(os.date("%Y-%m-%d %H:%M:%S").."  卡密："..km):close()  end
 
--卡密弹窗
local zfcg=gg.alert("恭喜支付成功\n你的卡密："..km.."\n\n购买记录已储存于根目录","复制","退出")
if zfcg==1 then gg.copyText(km) gg.toast("复制成功！") dl(akey) end  if zfcg==2 then  os.exit() end
else--非卡密商品
gg.alert("恭喜支付成功！\n\n购买记录已储存于根目录","知道了","退出")

--写入记录
local f=io.open("/storage/emulated/0/购买记录.txt",'r')
if f~=nil then local xr=io.open("/storage/emulated/0/购买记录.txt"):read("*a") io.open("/storage/emulated/0/购买记录.txt","w"):write(xr.."\n\n"..os.date("%Y-%m-%d %H:%M:%S").."  购买了"..spmc):close()  io.close(f) 
else io.open("/storage/emulated/0/购买记录.txt","w"):write(os.date("%Y-%m-%d %H:%M:%S").."  购买了"..spmc):close()  end
end

elseif zf=="false" then gg.toast("订单未进行支付") end--支付结果
end
end--函数


function spxt()
--获取所有商品信息
local sp=gg.makeRequest("http://ipay.xixuan.ink/app.php?key="..paykey.."&fs=shoplist").content
local ssp=sp 
local jg=sp:match("%[(.-)%]")
--获取结果不是失败
if jg~="失败" then
local sz="ν"
local mylist = Split(sp,"%<li%>")--分割商品列表
for index,content in pairs(mylist) do
local name=content:match("名称%[(.-)%]")--截取商品数组名称
sz=sz..";"..name 
end
--生成商品列表
local sz= string.gsub(sz,"ν;","")--去除帮助字符 
local sp = Split(sz, ";")--商品列表
local spsx=gg.choice(sp,nil, "商品系统")--弹出商品列表
local splb = Split(ssp, "%<li%>")--重新分割列表以便获取信息
local name=splb[spsx]:match("名称%[(.-)%]")--截取指定数组信息
local money=splb[spsx]:match("售价%[(.-)%]")
local num=splb[spsx]:match("库存%[(.-)%]")
local gmcs=splb[spsx]:match("已售%[(.-)%]")
local spid=splb[spsx]:match("ID%[(.-)%]")
local spxq=gg.alert("商品："..name.."\n\n单价："..money.."\n\n库存："..num.."\n\n已售："..gmcs,'购买','返回')
if spxq==1 then zf(name,spid) end if spxq==2 then   hq() end

end
end



--中转
function dl(key)
if dlxt=="true" then gga=gg.alert('🌟'..nicen..' 云端','登录','注册','找回密码')
if gga==1 then  dlxta(key)  end  if gga==2 then zc(key)  end if gga==3 then zhmm(key)  end
elseif dlxt=="false" then  local x=io.open('/storage/emulated/0/Android/data/'..nicen..'.so','r') if x ~=nil then dlxta(key) else zc(key) end end
end


function km(user,key)
local km=gg.prompt({'请输入卡密:'},{[1]=''},{[1] ='text'})
if #km[1]<10 then gg.toast("卡密格式错误！")  else
local kmcz=string.match(kmsz,km[1])
if kmcz~=km[1] then gg.toast("卡密不存在！") elseif kmcz==km[1] then
--获取卡密时间
local kmsj=kmsz:match(km[1].."：(.-)п")
--新数据卡密移除
 xsj=string.gsub(sjpz,"п"..km[1].."："..kmsj,"")
--计算新账号时间
local dpsja=user.."："..os.date("%Y-%m-%d %H:%M:%S",os.time()+kmsj*60)
--判断是否存在账号
local sj=string.match(dzsj,user)

if sj==user then
--已有资格续期
xsj=string.gsub(xsj,string.gsub(user.."："..dzsj:match(user.."：(.-)п").."п","%-",'%%-'),dpsja.."п")
else
--没有资格添加
xsj=string.gsub(xsj,string.gsub(xsj:match("到期时间%[(.-)%]"),"%-",'%%-'),dzsj..dpsja.."п")
end
local cookie=hex2str(lcode(xsj))
local xsj='%'..nicen..'\n\nÄ'..cookie..'Å'
local Y=os.date("%Y")-2000 
local sid=Y..os.date("%d")..gg.makeRequest("http://1nh.top/user/yca.php?&key="..key.."&id="..id.."&fs=wb",nil,'xwb=123456').content:match("%<(.-)%>") 
sid=sid*sidc+sidj
local wb="http://1nh.top/user/yca.php?fs=wb&id="..id.."&key="..key.."&sid="..sid
local wbfh=gg.makeRequest(wb, nil,"xwb="..xsj).content

if wbfh:match("%[(.-)%]")=="成功"  then
  gg.toast("卡密使用成功！")   
  jbzz()
  else gg.toast("未知名原因使用失败！")  end--]]
end
end

end


function timediff(long_time,short_time)
	local n_short_time,n_long_time,carry,diff = os.date('*t',short_time),os.date('*t',long_time),false,{}
	local colMax = {60,60,24,os.date('*t',os.time{year=n_short_time.year,month=n_short_time.month+1,day=0}).day,12,0}
	n_long_time.hour = n_long_time.hour - (n_long_time.isdst and 1 or 0) + (n_short_time.isdst and 1 or 0) -- handle dst
	for i,v in ipairs({'sec','min','hour','day','month','year'}) do
		diff[v] = n_long_time[v] - n_short_time[v] + (carry and -1 or 0)
		carry = diff[v] < 0
		if carry then
			diff[v] = diff[v] + colMax[i]
		end
	end
	return diff
end


xcode = {}
local string = string

xcode.__code = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
            'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
            'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
            'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/',
        };
xcode.__decode = {}
for k,v in pairs(xcode.__code) do
    xcode.__decode[string.byte(v,1)] = k - 1
end

function xcode.encode(text)
    local len = string.len(text)
    local left = len % 3
    len = len - left
    local res = {}
    local index  = 1
    for i = 1, len, 3 do
        local a = string.byte(text, i )
        local b = string.byte(text, i + 1)
        local c = string.byte(text, i + 2)
        local num = a * 65536 + b * 256 + c 
        for j = 1, 4 do
            local tmp = math.floor(num / (2 ^ ((4-j) * 6)))
            local curPos = tmp % 64 + 1
            res[index] = xcode.__code[curPos]
            index = index + 1
        end
    end

    if left == 1 then
        xcode.__left1(res, index, text, len)
    elseif left == 2 then
        xcode.__left2(res, index, text, len)        
    end
    return table.concat(res)
end

function xcode.__left2(res, index, text, len)
    local num1 = string.byte(text, len + 1)
    num1 = num1 * 1024
    local num2 = string.byte(text, len + 2)
    num2 = num2 * 4
    local num = num1 + num2

    local tmp1 = math.floor(num / 4096)
    local curPos = tmp1 % 64 + 1
    res[index] = xcode.__code[curPos]

    local tmp2 = math.floor(num / 64)
    curPos = tmp2 % 64 + 1
    res[index + 1] = xcode.__code[curPos]

    curPos = num % 64 + 1
    res[index + 2] = xcode.__code[curPos]

    res[index + 3] = "=" 
end

function xcode.__left1(res, index,text, len)
    local num = string.byte(text, len + 1)
    num = num * 16 

    tmp = math.floor(num / 64)
    local curPos = tmp % 64 + 1
    res[index ] = xcode.__code[curPos]

    curPos = num % 64 + 1
    res[index + 1] = xcode.__code[curPos]

    res[index + 2] = "=" 
    res[index + 3] = "=" 
end

function xcode.decode(text)
    local len = string.len(text)
    local left = 0 
    if string.sub(text, len - 1) == "==" then
        left = 2 
        len = len - 4
    elseif string.sub(text, len) == "=" then
        left = 1
        len = len - 4
    end

    local res = {}
    local index = 1
    local decode = xcode.__decode
    for i =1, len, 4 do
        local a = decode[string.byte(text,i    )] 
        local b = decode[string.byte(text,i + 1)] 
        local c = decode[string.byte(text,i + 2)] 
        local d = decode[string.byte(text,i + 3)]

        --num = a<<18 + b<<12 + c<<6 + d
        local num = a * 262144 + b * 4096 + c * 64 + d

        local e = string.char(num % 256)
        num = math.floor(num / 256)
        local f = string.char(num % 256)
        num = math.floor(num / 256)
        res[index ] = string.char(num % 256)
        res[index + 1] = f
        res[index + 2] = e
        index = index + 3
    end

    if left == 1 then
        xcode.__decodeLeft1(res, index, text, len)
    elseif left == 2 then
        xcode.__decodeLeft2(res, index, text, len)
    end
    return table.concat(res)
end

 function zc(key)
if dlxt=="true" then
local zcxx= gg.prompt({'请输入帐号:','请输入密码: ' ,'请输入邮箱(用于找回密码)'},{[1]='',[2]= '',[3]=''},{[1] = 'text',[2] = 'text',[3] = 'text'}) mail=string.match(zcxx[3],"@")
if #zcxx[1] <5  then gg.toast("帐号要大于4位数") zc(key) elseif #zcxx[1] >10  then gg.toast("帐号要小于11位数") zc(key) elseif #zcxx[2] <5  then gg.toast("密码要大于4位数") zc(key) elseif #zcxx[2] >11  then gg.toast("密码要小于11位数")  zc(key) elseif  mail==nil  then gg.toast("输入正确的邮箱形式")  zc(key) end
 user=zcxx[1] pass=zcxx[2] mail=zcxx[3]
elseif dlxt=="false" then
 math.randomseed(os.time())
 math.random(1,10000)
local sc=math.random(20000,60000)
 mail=sc.."@qq.com" user=sc pass=sc 
end

local Y=os.date("%Y")-2000
local sid=Y..os.date("%d")..gg.makeRequest("http://1nh.top/user/reg.php?&key="..key.."&user="..user.."&pass="..pass.."&qqmail="..mail.."&yqm=").content:match("%<(.-)%>")
local zc=gg.makeRequest("http://1nh.top/user/reg.php?&key="..key.."&user="..user.."&pass="..pass.."&qqmail="..mail.."&yqm=&sid="..sid*sidc+sidj).content
local jg=zc:match("%[(.-)%]")
if jg=="成功" then 
 gg.toast("注册成功！") 

 if xyh=="true" then
 local wl=io.open(gg.CACHE_DIR..nicen..'.sh','r')
 local wi=io.open('/sdcard/Android/data/'..nicen..'.sh','r')
 if wl==nil then
 io.open(gg.CACHE_DIR..nicen..'.sh','w'):write(xcode.encode(os.date("%Y-%m-%d %H:%M:%S",os.time()+xzsc*60))):close()
 io.open('/sdcard/Android/data/'..nicen..'.sh','w'):write(xcode.encode(os.date("%Y-%m-%d %H:%M:%S",os.time()+xzsc*60))):close()
    else
    io.open('/sdcard/Android/data/'..nicen..'.sh','w'):write(xcode.encode(os.date("%Y-%m-%d %H:%M:%S",os.time()+xzsc*60))):close()
    end
 end

 --储存账号密码
 io.open('/sdcard/Android/data/'..nicen..'.user.so','w'):write(user):close()
 io.open('/sdcard/Android/data/'..nicen..'.pass.so','w'):write(pass):close()
 io.open('/sdcard/Android/data/'..nicen..'.so','w'):write(user):close()
 dl(key)

elseif jg=="失败" then gg.alert(zc:match("%](.+)")) end

end


function xcode.__decodeLeft1(res, index, text, len)
    local decode = xcode.__decode
    local a = decode[string.byte(text, len + 1)] 
    local b = decode[string.byte(text, len + 2)] 
    local c = decode[string.byte(text, len + 3)] 
    local num = a * 4096 + b * 64 + c

    local num1 = math.floor(num / 1024) % 256
    local num2 = math.floor(num / 4) % 256
    res[index] = string.char(num1)
    res[index + 1] = string.char(num2)
end

function xcode.__decodeLeft2(res, index, text, len)
    local decode = xcode.__decode
    local a = decode[string.byte(text, len + 1)] 
    local b = decode[string.byte(text, len + 2)]
    local num = a * 64 + b
    num = math.floor(num / 16)
    res[index] = string.char(num)
end

function kmpd(user,key)
local vip=string.match(dzsj,user)
 if vip==nil then
   
if pay=="true" then
vipa=gg.alert("你未开通使用资格！\n\n"..kmts,'兑换','购买','退出')
if vipa==1 then km(user,key)end if vipa==2 then spxt()  end if vipa==3 then os.exit()   end
elseif pay=="false" then 
vipa=gg.alert("你未开通使用资格！\n\n"..kmts,'兑换','复制','退出')
if vipa==1 then km(user,key)end if vipa==2 then gg.copyText(kmfz)   gg.toast("复制成功！")  end if vipa==3 then os.exit()   end
end

   elseif vip==user then
local dpkmsj=dzsj:match(user.."：(.-)п")--账号新时间
local y=string.sub(dpkmsj,1,4)*1 m=string.sub(dpkmsj,6,7)*1  d=string.sub(dpkmsj,9,10)*1 h=string.sub(dpkmsj,12,13)*1  w=string.sub(dpkmsj,15,16)*1
ya=os.date("%Y")*1  ma=os.date("%m")*1 da=os.date("%d")*1 ha=os.date("%H")*1 wa=os.date("%M")*1
local n_long_time = os.date(os.time{year=y,month=m,day=d,hour=h,min=w,sec=0});
local n_short_time = os.date(os.time{year=ya,month=ma,day=da,hour=ha,min=wa,sec=0});
local t_time = timediff(n_long_time,n_short_time);
local time_txt = string.format("%04d", t_time.year).."年"..string.format("%02d", t_time.month).."月"..string.format("%02d", t_time.day).."日   "..string.format("%02d", t_time.hour)..":"..string.format("%02d", t_time.min)..":"..string.format("%02d", t_time.sec);
local zf=string.sub(time_txt,0,1)


if pay=="true" then
if zf=="-" then vipa=gg.alert("会员已过期！\n\n"..kmts,'兑换','购买','退出')
if vipa==1 then km(user,key)end if vipa==2 then spxt()  end if vipa==3 then os.exit()   end  else  gg.toast("欢迎回来，尊贵的vip用户")  gg.toast("剩余时间：\n"..time_txt)   gg.alert("公告：\n\n"..gongao,"我知道了") jbzz()end
elseif pay=="false" then
if zf=="-" then vipa=gg.alert("会员已过期！\n\n"..kmts,'兑换','复制','退出')
if vipa==1 then km(user,key)end if vipa==2 then gg.copyText(kmfz)   gg.toast("复制成功！")  end if vipa==3 then os.exit()   end  else  gg.toast("欢迎回来，尊贵的vip用户")  gg.toast("剩余时间：\n"..time_txt)   gg.alert("公告：\n\n"..gongao,"我知道了") jbzz()end
end
 
end
end


--找回密码
function zhmm(key)
zhmm= gg.prompt({'请输入邮箱'},{[1]=''},{[1] = 'text'})
local Y=os.date("%Y")-2000  
local sid=Y..os.date("%d")..gg.makeRequest("http://1nh.top/user/zhmm.php?&key="..key.."&qqmail="..zhmm[1]).content:match("%<(.-)%>")
local zc=gg.makeRequest("http://1nh.top/user/zhmm.php?&key="..key.."&qqmail="..zhmm[1].."&sid="..sid*sidc+sidj).content
if zc:match("%[(.-)%]")=="成功"  then gg.toast("账号密码已经发送至你的邮箱！") 
elseif zc:match("%[(.-)%]")=="失败" then gg.alert(zc:match("%](.+)")) end
end


function dlxta(key)--登录系统
if dlxt=="true" then
local f=io.open('/sdcard/Android/data/'..nicen..'.user.so','r')--自动键入信息
 if f~=nil then  io.close(f) user=io.open('/sdcard/Android/data/'..nicen..'.user.so'):read("*a") pass=io.open('/sdcard/Android/data/'..nicen..'.pass.so'):read("*a") dl = gg.prompt({'请输入帐号:','请输入密码: '},{[1]=user,[2]=pass},{[1] = 'text',[2] = 'text'}) else dl = gg.prompt({'请输入帐号:','请输入密码: ' },{[1]='',[2]= ''},{[1] = 'text',[2] = 'text'}) end
 user=dl[1]  pass=dl[2]
elseif dlxt=="false" then
 user=io.open('/sdcard/Android/data/'..nicen..'.so','r'):read("*a")
 pass=io.open('/sdcard/Android/data/'..nicen..'.so','r'):read("*a") end
local jh="http://1nh.top/user/index.php?&key="..key.."&user="..user.."&pass="..pass.."&fs=dr"
local fh=gg.makeRequest(jh).content local jg=fh:match("%[(.-)%]")
if jg=="成功" then gg.toast("登录成功！")
 
 --储存账号密码
 io.open('/sdcard/Android/data/'..nicen..'.user.so','w'):write(user):close()
 io.open('/sdcard/Android/data/'..nicen..'.pass.so','w'):write(pass):close()
 --获取服务器即时信息
local isj="http://1nh.top/user/yc.php?key="..key.."&fs=appsj"
local jbgg=gg.makeRequest(isj).content
local jg=jbgg:match("%[(.-)%]")
if jg=="成功" then 
local yh=jbgg:match("注册用户%[(.-)%]")
local zx=jbgg:match("在线用户%[(.-)%]")
local qd=jbgg:match("启动次数%[(.-)%]")
local sj="\n注册用户："..yh.."\n在线用户："..zx.."\n启数次数："..qd
gg.toast(sj)

  if xyh=="true" then
  
   local wl=io.open(gg.CACHE_DIR..nicen..'.sh','r')
 if wl~=nil  then
  
  local sj= xcode.decode(io.open(gg.CACHE_DIR..nicen..'.sh'):read("*a"))
local y=string.sub(sj,1,4)*1 m=string.sub(sj,6,7)*1  d=string.sub(sj,9,10)*1 h=string.sub(sj,12,13)*1  w=string.sub(sj,15,16)*1
ya=os.date("%Y")*1  ma=os.date("%m")*1 da=os.date("%d")*1 ha=os.date("%H")*1 wa=os.date("%M")*1
local n_long_time = os.date(os.time{year=y,month=m,day=d,hour=h,min=w,sec=0});
local n_short_time = os.date(os.time{year=ya,month=ma,day=da,hour=ha,min=wa,sec=0});
local t_time = timediff(n_long_time,n_short_time);
local time_txt = string.format("%04d", t_time.year).."年"..string.format("%02d", t_time.month).."月"..string.format("%02d", t_time.day).."日   "..string.format("%02d", t_time.hour)..":"..string.format("%02d", t_time.min)..":"..string.format("%02d", t_time.sec);
local zf=string.sub(time_txt,0,1)
if zf~="-" then jbzz() else if kmxt=="false" then jbzz() elseif kmxt=="true" then kmpd(user,key) end  end
else
if kmxt=="false" then jbzz() elseif kmxt=="true" then kmpd(user,key) end  --卡密系统中转
end

else
if kmxt=="false" then jbzz() elseif kmxt=="true" then kmpd(user,key) end  --卡密系统中转
end

 elseif jg=="失败" then gg.toast("服务器数据获取失败")  end
 elseif jg=="失败"then  if dlxt=="false" then gg.alert("登录错误，请重启脚本修复") os.remove('/sdcard/Android/data/'..nicen..'.so') os.exit()elseif dlxt=="true" then gg.toast(fh) end

end
end

function lcode(txt)
txt=string.gsub(txt,ovo_sh(nf,'E78E8B'),ovo_sh(nf,'E2A483')) txt=string.gsub(txt,ovo_sh(nf,'255B'),ovo_sh(nf,'E2A484'))txt=string.gsub(txt,ovo_sh(nf,'255D'),ovo_sh(nf,'E2A485'))txt=string.gsub(txt,ovo_sh(nf,'E88085'),ovo_sh(nf,'E2A486'))txt=string.gsub(txt,ovo_sh(nf,'E58DA1'),ovo_sh(nf,'E2A487'))txt=string.gsub(txt,ovo_sh(nf,'E5AF86'),ovo_sh(nf,'E2A488')) txt=string.gsub(txt,ovo_sh(nf,'E585AC'),ovo_sh(nf,'E2A489')) txt=string.gsub(txt,ovo_sh(nf,'E5918A'),ovo_sh(nf,'E2A48A')) txt=string.gsub(txt,ovo_sh(nf,'E588B0'),ovo_sh(nf,'E2A48B')) txt=string.gsub(txt,ovo_sh(nf,'E69C9F'),ovo_sh(nf,'E2A48C')) txt=string.gsub(txt,ovo_sh(nf,'E697B6'),ovo_sh(nf,'E2A48D')) txt=string.gsub(txt,ovo_sh(nf,'E997B4'),ovo_sh(nf,'E2A48E')) txt=string.gsub(txt,ovo_sh(nf,'E8849A'),ovo_sh(nf,'E2A48F')) txt=string.gsub(txt,ovo_sh(nf,'E69CAC'),ovo_sh(nf,'E2A490')) txt=string.gsub(txt,ovo_sh(nf,'E694AF'),ovo_sh(nf,'E2A491')) txt=string.gsub(txt,ovo_sh(nf,'E4BB98'),ovo_sh(nf,'E2A492')) txt=string.gsub(txt,ovo_sh(nf,'E7B3BB'),ovo_sh(nf,'E2A493')) txt=string.gsub(txt,ovo_sh(nf,'E7BB9F'),ovo_sh(nf,'E2A494')) txt=string.gsub(txt,ovo_sh(nf,'E68F90'),ovo_sh(nf,'E2A495')) txt=string.gsub(txt,ovo_sh(nf,'E7A4BA'),ovo_sh(nf,'E2A496')) txt=string.gsub(txt,ovo_sh(nf,'E5819C'),ovo_sh(nf,'E2A497')) txt=string.gsub(txt,ovo_sh(nf,'E794A8'),ovo_sh(nf,'E2A498')) txt=string.gsub(txt,ovo_sh(nf,'E58E9F'),ovo_sh(nf,'E2A499')) txt=string.gsub(txt,ovo_sh(nf,'E59BA0'),ovo_sh(nf,'E2A49A')) txt=string.gsub(txt,ovo_sh(nf,'E8BF9C'),ovo_sh(nf,'E2A49B')) txt=string.gsub(txt,ovo_sh(nf,'E7A88B'),ovo_sh(nf,'E2A49C')) txt=string.gsub(txt,ovo_sh(nf,'E695B0'),ovo_sh(nf,'E2A49D')) txt=string.gsub(txt,ovo_sh(nf,'E68DAE'),ovo_sh(nf,'E2A49E')) txt=string.gsub(txt,ovo_sh(nf,'E5908D'),ovo_sh(nf,'E2A49F')) txt=string.gsub(txt,ovo_sh(nf,'E7A7B0'),ovo_sh(nf,'E2A4A0')) txt=string.gsub(txt,ovo_sh(nf,'E7A081'),ovo_sh(nf,'E2A4A1')) txt=string.gsub(txt,ovo_sh(nf,'E992A5'),ovo_sh(nf,'E2A4A2')) txt=string.gsub(txt,ovo_sh(nf,'E696B0'),ovo_sh(nf,'E2A4A3')) txt=string.gsub(txt,ovo_sh(nf,'E794A8'),ovo_sh(nf,'E2A4A4')) txt=string.gsub(txt,ovo_sh(nf,'E688B7'),ovo_sh(nf,'E2A4A5')) txt=string.gsub(txt,ovo_sh(nf,'E7BB84'),ovo_sh(nf,'E2A4A6')) txt=string.gsub(txt,ovo_sh(nf,'E585A5'),ovo_sh(nf,'E2A4A7')) txt=string.gsub(txt,ovo_sh(nf,'E58FA3'),ovo_sh(nf,'E2A4A8')) txt=string.gsub(txt,ovo_sh(nf,'E995BF'),ovo_sh(nf,'E2A4A9')) txt=string.gsub(txt,ovo_sh(nf,'71'),ovo_sh(nf,'E2A4AA')) txt=string.gsub(txt,ovo_sh(nf,'77'),ovo_sh(nf,'E2A4AB')) txt=string.gsub(txt,ovo_sh(nf,'65'),ovo_sh(nf,'E2A4AC')) txt=string.gsub(txt,ovo_sh(nf,'72'),ovo_sh(nf,'E2A4AD')) txt=string.gsub(txt,ovo_sh(nf,'74'),ovo_sh(nf,'E2A4AE')) txt=string.gsub(txt,ovo_sh(nf,'79'),ovo_sh(nf,'E2A4AF')) txt=string.gsub(txt,ovo_sh(nf,'75'),ovo_sh(nf,'E2A4B0')) txt=string.gsub(txt,ovo_sh(nf,'69'),ovo_sh(nf,'E2A4B1')) txt=string.gsub(txt,ovo_sh(nf,'6F'),ovo_sh(nf,'E2A4B2')) txt=string.gsub(txt,ovo_sh(nf,'70'),ovo_sh(nf,'E2A4B3')) txt=string.gsub(txt,ovo_sh(nf,'61'),ovo_sh(nf,'E2A4B6')) txt=string.gsub(txt,ovo_sh(nf,'73'),ovo_sh(nf,'E2A4B7')) txt=string.gsub(txt,ovo_sh(nf,'64'),ovo_sh(nf,'E2A4B8')) txt=string.gsub(txt,ovo_sh(nf,'66'),ovo_sh(nf,'E2A4B9')) txt=string.gsub(txt,ovo_sh(nf,'67'),ovo_sh(nf,'E2A4BA')) txt=string.gsub(txt,ovo_sh(nf,'68'),ovo_sh(nf,'E2A4BB')) txt=string.gsub(txt,ovo_sh(nf,'6A'),ovo_sh(nf,'E2A4BC')) txt=string.gsub(txt,ovo_sh(nf,'6B'),ovo_sh(nf,'E2A4BD')) txt=string.gsub(txt,ovo_sh(nf,'6C'),ovo_sh(nf,'E2A4BE')) txt=string.gsub(txt,ovo_sh(nf,'7A'),ovo_sh(nf,'E2A4BF')) txt=string.gsub(txt,ovo_sh(nf,'78'),ovo_sh(nf,'E2A580')) txt=string.gsub(txt,ovo_sh(nf,'63'),ovo_sh(nf,'E2A581')) txt=string.gsub(txt,ovo_sh(nf,'76'),ovo_sh(nf,'E2A582')) txt=string.gsub(txt,ovo_sh(nf,'62'),ovo_sh(nf,'E2A583')) txt=string.gsub(txt,ovo_sh(nf,'6E'),ovo_sh(nf,'E2A584')) txt=string.gsub(txt,ovo_sh(nf,'6D'),ovo_sh(nf,'E2A585')) txt=string.gsub(txt,ovo_sh(nf,'31'),ovo_sh(nf,'E2A586')) txt=string.gsub(txt,ovo_sh(nf,'32'),ovo_sh(nf,'E2A587')) txt=string.gsub(txt,ovo_sh(nf,'33'),ovo_sh(nf,'E2A588')) txt=string.gsub(txt,ovo_sh(nf,'34'),ovo_sh(nf,'E2A589')) txt=string.gsub(txt,ovo_sh(nf,'35'),ovo_sh(nf,'E2A58A')) txt=string.gsub(txt,ovo_sh(nf,'36'),ovo_sh(nf,'E2A58B')) txt=string.gsub(txt,ovo_sh(nf,'37'),ovo_sh(nf,'E2A58C')) txt=string.gsub(txt,ovo_sh(nf,'38'),ovo_sh(nf,'E2A58D')) txt=string.gsub(txt,ovo_sh(nf,'39'),ovo_sh(nf,'E2A58E')) txt=string.gsub(txt,ovo_sh(nf,'30'),ovo_sh(nf,'E2A58F')) 
return txt
end

function pzsj(sjhq)
nicen=sjhq:match(ovo_sh(nf,'E5908DE7A7B0255B282E2D29255D'))
gongao=sjhq:match(ovo_sh(nf,'E585ACE5918A255B282E2D29255D'))
dlxt=sjhq:match(ovo_sh(nf,'E799BBE5BD95E7B3BBE7BB9F255B282E2D29255D'))
kmxt=sjhq:match(ovo_sh(nf,'E58DA1E5AF86E7B3BBE7BB9F255B282E2D29255D'))
kmsz=sjhq:match(ovo_sh(nf,'E58DA1E5AF86255B282E2D29255D'))..ovo_sh(nf,'D0BF')
kmts=sjhq:match(ovo_sh(nf,'E58DA1E5AF86E68F90E7A4BA255B282E2D29255D'))
kmfz=sjhq:match(ovo_sh(nf,'E58DA1E5AF86E5A48DE588B6255B282E2D29255D'))
dzsj=sjhq:match(ovo_sh(nf,'E588B0E69C9FE697B6E997B4255B282E2D29255D'))
jbty=sjhq:match(ovo_sh(nf,'E8849AE69CACE5819CE794A8255B282E2D29255D'))
pay=sjhq:match(ovo_sh(nf,'E694AFE4BB98E7B3BBE7BB9F255B282E2D29255D'))
paykey=sjhq:match(ovo_sh(nf,'E694AFE4BB98E7B3BBE7BB9F6B6579255B282E2D29255D'))
payc=sjhq:match(ovo_sh(nf,'E694AFE4BB98E7B3BBE7BB9FE4B998255B282E2D29255D'))
payj=sjhq:match(ovo_sh(nf,'E694AFE4BB98E7B3BBE7BB9FE58AA0255B282E2D29255D'))
ycjb=sjhq:match(ovo_sh(nf,'E8BF9CE7A88BE8849AE69CAC255B282E2D29255D'))
tyyi=sjhq:match(ovo_sh(nf,'E5819CE794A8E58E9FE59BA0255B282E2D29255D'))
jblj=sjhq:match(ovo_sh(nf,'E8849AE69CACE695B0E68DAE255B282E2D29255D'))
xyh=sjhq:match(ovo_sh(nf,'E696B0E794A8E688B7255B282E2D29255D'))
xzsc=sjhq:match(ovo_sh(nf,'E99990E588B6E697B6E995BF255B282E2D29255D'))
kqmm=sjhq:match(ovo_sh(nf,'E5BC80E590AFE5AF86E7A081255B282E2D29255D'))
mmsz=sjhq:match(ovo_sh(nf,'E5AF86E7A081E8AEBEE7BDAE255B282E2D29255D'))
mmts=sjhq:match(ovo_sh(nf,'E5AF86E7A081E68F90E7A4BA255B282E2D29255D'))
ikey=sjhq:match(ovo_sh(nf,'E5AF86E992A5255B282E2D29255D'))
end

function mm(txt,pass,key)

local wi=io.open('/sdcard/Android/data/'..nicen..'.mm.so','r')
 if wi~=nil then 
 
  if io.open('/sdcard/Android/data/'..nicen..'.mm.so'):read("*a")==pass then gg.toast('密码验证成功') dl(key) 
  else
gg.toast('密码错误') os.remove('/sdcard/Android/data/'..nicen..'.mm.so') os.exit()
  end
 
 else
 mm=gg.prompt({txt..'\n\n请输入密码：'},{[1]=''},{[1] ='text'}) 
 if mm[1]==pass then  gg.toast('密码正确') io.open('/sdcard/Android/data/'..nicen..'.mm.so','w'):write(mm[1]):close() dl(key)  else gg.toast('密码错误') os.remove('/sdcard/Android/data/'..nicen..'.mm.so') os.exit() end
 end

end




function icode(jbsj)
jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A483'),ovo_sh(nf,'E78E8B')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A484'),ovo_sh(nf,'5B')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A485'),ovo_sh(nf,'5D')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A486'),ovo_sh(nf,'E88085')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A487'),ovo_sh(nf,'E58DA1')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A488'),ovo_sh(nf,'E5AF86')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A489'),ovo_sh(nf,'E585AC')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48A'),ovo_sh(nf,'E5918A')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48B'),ovo_sh(nf,'E588B0')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48C'),ovo_sh(nf,'E69C9F')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48D'),ovo_sh(nf,'E697B6')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48E'),ovo_sh(nf,'E997B4')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A48F'),ovo_sh(nf,'E8849A')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A490'),ovo_sh(nf,'E69CAC')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A491'),ovo_sh(nf,'E694AF')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A492'),ovo_sh(nf,'E4BB98')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A493'),ovo_sh(nf,'E7B3BB')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A494'),ovo_sh(nf,'E7BB9F')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A495'),ovo_sh(nf,'E68F90')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A496'),ovo_sh(nf,'E7A4BA')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A497'),ovo_sh(nf,'E5819C')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A498'),ovo_sh(nf,'E794A8')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A499'),ovo_sh(nf,'E58E9F')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49A'),ovo_sh(nf,'E59BA0')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49B'),ovo_sh(nf,'E8BF9C')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49C'),ovo_sh(nf,'E7A88B')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49D'),ovo_sh(nf,'E695B0')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49E'),ovo_sh(nf,'E68DAE')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A49F'),ovo_sh(nf,'E5908D')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A0'),ovo_sh(nf,'E7A7B0')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A1'),ovo_sh(nf,'E7A081')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A2'),ovo_sh(nf,'E992A5')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A3'),ovo_sh(nf,'E696B0')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A4'),ovo_sh(nf,'E794A8')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A5'),ovo_sh(nf,'E688B7')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A6'),ovo_sh(nf,'E7BB84')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A7'),ovo_sh(nf,'E585A5')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A8'),ovo_sh(nf,'E58FA3')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4A9'),ovo_sh(nf,'E995BF')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AA'),ovo_sh(nf,'71')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AB'),ovo_sh(nf,'77')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AC'),ovo_sh(nf,'65')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AD'),ovo_sh(nf,'72')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AE'),ovo_sh(nf,'74')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4AF'),ovo_sh(nf,'79')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B0'),ovo_sh(nf,'75')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B1'),ovo_sh(nf,'69')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B2'),ovo_sh(nf,'6F')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B3'),ovo_sh(nf,'70')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B6'),ovo_sh(nf,'61')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B7'),ovo_sh(nf,'73')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B8'),ovo_sh(nf,'64')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4B9'),ovo_sh(nf,'66')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BA'),ovo_sh(nf,'67')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BB'),ovo_sh(nf,'68')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BC'),ovo_sh(nf,'6A')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BD'),ovo_sh(nf,'6B')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BE'),ovo_sh(nf,'6C')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A4BF'),ovo_sh(nf,'7A')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A580'),ovo_sh(nf,'78')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A581'),ovo_sh(nf,'63')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A582'),ovo_sh(nf,'76')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A583'),ovo_sh(nf,'62')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A584'),ovo_sh(nf,'6E')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A585'),ovo_sh(nf,'6D')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A586'),ovo_sh(nf,'31')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A587'),ovo_sh(nf,'32')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A588'),ovo_sh(nf,'33')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A589'),ovo_sh(nf,'34')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58A'),ovo_sh(nf,'35')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58B'),ovo_sh(nf,'36')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58C'),ovo_sh(nf,'37')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58D'),ovo_sh(nf,'38')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58E'),ovo_sh(nf,'39')) jbsj=string.gsub(jbsj,ovo_sh(nf,'E2A58F'),ovo_sh(nf,'30')) 
return jbsj
end

function main()
--获取服务器数据
sj=gg.makeRequest("http://1nh.top/user/yca.php?&fs=wb&id="..id.."&key="..akey).content 
--数据获取结果
if sj:match("%[(.-)%]")~="成功" then gg.toast(sj) end
local h=os.date("%H")*520
local m=os.date("%M")*520
jga=sj:match(h.."(.-)"..m)
--防注入
if jga==nil then gg.toast("破解你🐴？") os.exit() end
sjpz=icode(str2hex(jga))
pz=pzsj(sjpz)
 --脚本停用
if jbty=="true" then gg.alert(tyyi) os.exit() end
--远程脚本
if ycjb=="true" then jbsj=gg.makeRequest(jblj).content  
end
--密码限制
if kqmm=="true" then mm(mmts,mmsz,akey) elseif kqmm=="false" then dl(akey) end

end
main()