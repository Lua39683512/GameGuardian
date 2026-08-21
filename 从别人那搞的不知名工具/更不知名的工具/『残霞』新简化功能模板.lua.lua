----------内存简化配置参考区----------
Jh=gg.REGION_JAVA_HEAP--Jh 内存
Ch=gg.REGION_C_HEAP--Ch 内存
Ca=gg.REGION_C_ALLOC--Ca 内存
Cd=gg.REGION_C_DATA--Cd 内存
Cb=gg.REGION_C_BSS--Cb 内存
PS=gg.REGION_PPSSPP--PS 内存
A=gg.REGION_ANONYMOUS--A 内存
J=gg.REGION_JAVA--J 内存
S=gg.REGION_STACK--S 内存
As=gg.REGION_ASHMEM--As 内存
V=gg.REGION_VIDEO--V 内存
O=gg.REGION_OTHER--O 内存
B=gg.REGION_BAD--B 内存
Xa=gg.REGION_CODE_APP--Xa 内存
Xs=gg.REGION_CODE_APP--Xs 内存
----------类型简化配置参考区----------
AU=gg.TYPE_AUTO--A类型搜索
D=gg.TYPE_DWORD--D类型搜索
F=gg.TYPE_FLOAT--F类型搜索
E=gg.TYPE_DOUBLE--E类型搜索
W=gg.TYPE_WORD--W类型搜索
B=gg.TYPE_BYTE--B类型搜索
Q=gg.TYPE_QWORD--Q类型搜索
X=TYPE_XOR--X类型搜索
-----------------------------------
Qk=gg.clearResults--清空搜索列表
Nc=gg.setRanges
So=gg.searchNumber
Fw=gg.getResults
Xg=gg.editAll
Ts=gg.toast
-----------------------------------
Qk=gg.clearResults--清空搜索列表
Nc=gg.setRanges--内存
So=gg.searchNumber--搜索/改善
Fw=gg.getResults--修改范围
Xg=gg.editAll--修改值
Ts=gg.toast--修改后的提示
function CXNB()
CX=gg.prompt({
"功能1",
"功能2",
"功能3",
"功能4",
"功能5",
"功能6",
"功能7",
"功能8",
"功能9",
"功能10",
"退出脚本",
"作者信息保留区",
},{
false,
false,
false,
false,
false,
false,
false,
false,
false,
false,
false,
"作者信息保留区",
},{
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"number",
})
if CX==nil then print("未选择功能退出脚本") os.exit() end
if CX[1]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[2]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[3]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[4]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[5]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[6]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[7]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[8]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[9]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[10]==true then
Qk()
Nc(填写你要的内存)
So('搜索的数据',搜索类型,false,gg.SIGN_EQUAL,0, -1)
So('改善的数据',改善类型,false,gg.SIGN_EQUAL,0, -1)
Fw(100)
cx=Xg('修改的数据',修改类型)
Ts("开启成功\n共修改"..cx.."条数据")
end
if CX[11]==true then
   Exit()
end
  XGCK = -1
end
function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    CXNB()
  end
end