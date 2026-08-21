vpn=gg.makeRequest("https://weather.mp.qq.com/?_nav_alpha=0&_nav_txtclr=ffffff&_nav_titleclr=ffffff&_nav_anim=true&asyncMode=1&adtag=h5page.ark_expose&city=%E4%B8%AD%E5%B1%B1-%E4%B8%AD%E5%B1%B1&adcode=101281701").content
bb,xh=vpn:match("%(Linux; U; (.-); (.-)%)")
print("您当前安卓版本为："..bb.."\n手机型号为："..xh)



function Main()
menu = gg.choice({
'墨辞功能',
'防封功能',
'退出脚本'},
2018,'暂未更新')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end


BYBL = {
[1] = "墨辞内置脚本2.1\n支持360版本"
}
HGNB = os.date("墨辞制作支持360")
function A()
end
BL = gg.prompt({
"🧧墨辞脚本🧧 " .. HGNB,--1
'[启动脚本]',--2
}, BYBL, {
"text",--1
"checkbox",--2
})--1代表2-2代表3-3代表4
if BL ~= nil then

if BL[2] then
-------请勿添加脚本
end





if BL[3] then
lw=1
Main()
end
end






function A()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end


function a1()

gg.toast("开启成功")
end



function a2()

gg.toast("开启成功")
end



function a3()

gg.toast("开启成功")
end



function a4()

gg.toast("开启成功")
end



function a5()

gg.toast("开启成功")
end



function a6()

gg.toast("开启成功")
end



function a7()

gg.toast("开启成功")
end



function a8()

gg.toast("开启成功")
end



function a9()

gg.toast("开启成功")
end



function a10()

gg.toast("开启成功")
end





function B()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end




function b1()

gg.toast("开启成功")
end



function b2()

gg.toast("开启成功")
end



function b3()

gg.toast("开启成功")
end



function b4()

gg.toast("开启成功")
end



function b5()

gg.toast("开启成功")
end



function b6()

gg.toast("开启成功")
end



function b7()

gg.toast("开启成功")
end



function b8()

gg.toast("开启成功")
end



function b9()

gg.toast("开启成功")
end



function b10()

gg.toast("开启成功")
end



function Exit()
print("墨辞交流群1399434368")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '墨辞'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
