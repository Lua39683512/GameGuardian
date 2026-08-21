----------------------------_↓下面是易如意配置请勿乱改↓_------------------------------

--开发者应用ID

--请改动对应提示的，别的配置请勿改动

app="10002"---填写你的后台项目id

function Main()
KS = gg.choice({
      "[单码登录]",
      "[退出脚本]"}, nil)
if KS == nil then
else
if KS == 1 then
danma()
end
end
if KS == 2 then
os.exit()
end
FX1 = -1
end
local user,kmfile="http://yegenb.btdns.tk"--[[后台对接链接勿动]],gg.EXT_STORAGE..'/.km'
function Cx_(co)res=''for i in ipairs(co)do res=res..string.char(co[i]) end return res end function danma(km)
reg=gg.prompt({
    Cx_({229,141,161,229,175,134}),
  }, {
    '',
  }, {
    Cx_({116,101,120,116}),
  })
XGCK=-1
if reg==nil then
gg.alert(Cx_({231,187,136,230,173,162,231,168,139,229,186,143}))
os.exit()
end

local userreg=gg.makeRequest(user..Cx_({47,97,112,105,46,112,104,112,63,97,99,116,61,107,109,95,108,111,103,111,110,38,97,112,112,61})..app..Cx_({38,107,97,109,105,61})..reg[1]).content
if userreg then
local userreg,code=gg.makeRequest(user).content,userreg:match(Cx_({99,111,100,101,34,58,40,37,100,43,41}))
if code==Cx_({49,52,57})then
gg.alert(Cx_({229,141,161,229,175,134,228,184,141,229,173,152,229,156,168}))
	io.open(kmfile, Cx_({119}))
	io.open(kmfile,Cx_({119})):write(reg[1]):close()
while(code)do
if gg.isVisible() then gg.setVisible(false) XGCK=1 end
if XGCK==1 then
danma()
end
end
end
if code==Cx_({49,48,49})then
gg.alert(Cx_({231,148,168,230,136,183,228,184,141,229,173,152,229,156,168}))
	io.open(kmfile, Cx_({119}))
	io.open(kmfile,Cx_({119})):write(reg[1]):close()
while(code)do
if gg.isVisible() then gg.setVisible(false) XGCK=1 end
if XGCK==1 then
danma()
end
end
end
if code==Cx_({52,48,51})then
gg.alert(Cx_({117,117,105,100,230,156,170,229,161,171,229,134,153,47,228,184,141,230,173,163,231,161,174}))
	io.open(kmfile, Cx_({119}))
	io.open(kmfile,Cx_({119})):write(reg[1]):close()
while(code)do
if gg.isVisible() then gg.setVisible(false) XGCK=1 end
if XGCK==1 then
danma()
end
end
end
if code==Cx_({50,48,48})then
gg.alert(Cx_({230,191,128,230,180,187,230,136,144,229,138,159}))
	io.open(kmfile, Cx_({119}))
	io.open(kmfile,Cx_({119})):write(reg[1]):close()
while(code)do
if gg.isVisible() then gg.setVisible(false) XGCK=1 end
if XGCK==1 then
Main0()
end
end
end
end
end

function Main0()
SN = gg.choice({
	 "进入功能",
	 "退出脚本",
}, nil, "这里是你的公告")
if SN==1 then
	 Main10()
end
if SN==2 then
	 HS8()
end
FX1=0
end
---------------------------上面配置不要动-------------------
------------------支持所有写法-----------______
------------------------下面你改别的脚本后启动代码一定要改成function Main10()不然直接跳过卡密--------------
  function Main10()
  SN = gg.choice({
  "功能名称1",
  "功能名称2",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
  "功能名称7",
  "功能名称8",
  "功能名称9",
  "退出脚本"
 }, 2018, "这里可以填写你的QQ")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   h()
  end
  if SN == 9 then
   i()
  end
  if SN == 10 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function g()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end















-------------以下不要动我让不会弄到时候，你只需要把脚本代码按我的操作来就行了这个结束语是连带的---------
--------------这里的意思就是你改进来的脚本把你那个结束语删了用这个，用那个的话也可以我怕你改来改去不会---------
function HS8()
	 os.exit()
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








----------------XYYG_野格------------------