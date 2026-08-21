---下面是几个函数代码
1.gg.alert()
这个是警告框
例如:
gg.alert("测试")
如果不懂，上面这个复制一个文本里面可以直接执行，然后你就懂了

2.gg.toast()
这个是提示语
比如脚本里面的:
gg.toast("开启成功")
反正就是显示一个提示语
如果不懂执行一下你就懂了


3.file=io.open()
这个是在指定路径创立一个文件
例如:
file=io.open("sdcard/1.txt")
不懂就执行一下
这个就是在手机储存页创立一个名字叫1.txt的文件
如果你的手机上有这个文件，就等于打开文件


4.file:write()
这个必须连用上面那个file=io.open()
也就是创立一个脚本后写入括号里面的内容
例如:
file=io.open("sdcard/1.txt","w+")
file:write("1")
这个大概意思就是创立一个文件在文件里面写入1


5.file:read()
这个也跟上面那个大概意思差不多
反正要连用file=io.open()
这个意思就是读取文本内容
例如
file=io.open("sdcard/1.txt","r")
file:read("*a")
这个的意思就是打开或创立一个文件，读取里面的内容


6.file:seek("end")
这是一个GG代码
固定的
意思就是检测文件的内存大小
用法:
file=io.open("sdcard/1.txt","a+")
file:seek("end")
意思就是打开这个文件然后检测他的内存 1B相当于1
这个你们可能看不懂
我换个写法
file=io.open("sdcard/1.txt","a+")
y=file:seek("end")
gg.alert(y)
这里面的y就等于检测他的内存大小
然后alert警告框弹出这个文件的大小
比如这个文件现在大小是1b就是1
1kb就是1000   1mb就是1000000 反正往后推
进制是1000  也就是1GB=1000MB=1000x1000KB=1000x1000x1000B


---下面是几个变量代码
1.全局变量
示例:
a=1
这个意思就是a在整个脚本都代表着1
换一种
a=1
gg.alert(a)
这个alert警告框就会显示的1
反正不会可以操作一下



2.局部变量
跟全局变量大概意思差不多
就是前面多了一个local
示例:
local a=1
gg.alert(a)
很多人会说这个跟上面的没什么区别
其实区别在于全局变量是永远都是那个值
局部变量是可以改变的
换一种写法
local a=1
gg.alert(a)
while true do
a=a+1
y=gg.alert(a)
if a==3 then break end
end
你执行上面那串代码就会看到a一直在+1
a一直在变，就说明他只是暂时是那个值
如果没有local就是全局都是这个值
一直到3就停止
至于停止，我们在下面一个教


3.break 解释
大概意思就是停止
第二个里面写到一个
if a==3 then break end
跟上面那个对应
a会一直+1
如果a等于3的时候则停止
这个一般用于while循环
至于循环是什么
下一个讲解


4.循环的解释
循环分几种，我们只需要掌握while循环和for循环
①while循环
用法:
while true do
这就是一个循环
这个代码下面写事件
示例:
local b=1
while true do
b=b+1
gg.toast(b)
end
这就是一个简单的循环
我们调用上面的break写一个可以停止的循环
如果不写就会一直循环下去，只有强制退出
示例:
local b=1
while true do
gg.alert(b)
b=b+1
if b==50 then break end
end
大概就是这个样子，可以执行试试
②for循环
for i=1,10 do
这是大概代码1,10的意思就是从1开始循环十次
示例代码:
local a=1
for i=1,10 do
gg.alert(a)
a=a+1
end
大概就是这样
可以运行试试




-----下面就是简单的脚本诠释


function Main()--功能主页
  SN = gg.choice({--脚本ui界面为单选，SN和下面11-33排对应
  "功能名称1",--第一个功能[废话]
---下面不想解释
  "功能名称2",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
"退出脚本"
 }, nil, "这里可以填写你的QQ")---nil代表无，顶部显示文字
  if SN == 1 then--如果点击第一个SN[也就是第一个功能]则进行a事件[也就是function a()]
    a()---a事件
  end--结束
-----以下同上
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
   Exit()
  end
  XGCK = -1--默认-1
end



function a()--a事件
gg.clearResults()--清空搜索列表(不是恢复，只是把代码清空，不会对代码造成任何问题)
gg.setRanges(gg.REGION_BAD)--内存
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)--搜索代码，后面的gg.TYPE_FLOAT是类型，后面false是是否冻结，再后面至今未懂，反正没卵用
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)--搜索代码，后面的gg.TYPE_FLOAT是类型，后面false是是否冻结，再后面至今未懂，反正没卵用
gg.getResults(10)--修改范围，即你需要改几个数值，如果改完全部值，则填大都没问题，假如你改善完了有100个数值，你只想改10个值就填10就行
gg.editAll("修改数值",gg.TYPE_FLOAT)--修改数值，后面是类型
gg.toast("开启成功")--提示框
end---结束

-----以下原理同上

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
-----------------


function Exit()
print("这里是退出脚本后的提示文字")--脚本结束后打印出来的文字
os.exit()--退出脚本
end--结束
cs = "这里可以改成你的QQ"---没用



while true do
  if gg.isVisible(true) then---如果ui为真则
    XGCK = 1--上面说过默认-1，改成1则相当于点击脚本的取消不会退出脚本，如果不是则点击取消会退出脚本
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then--如果为1值时再点击，则显示Main事件(这脚本也就是功能主页)
    Main()
  end
end









