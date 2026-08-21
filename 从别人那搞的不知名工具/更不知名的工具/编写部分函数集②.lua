欢迎来到十七小课堂

今天讲解的内容很简单

1.print的认识
print的意思在GG函数里是输出
例如:
print("1")
你就会发现
GG界面输出的是1
反正print大概就是这个意思
可以和很多变量连用
例如:
a=1
print(a)
执行下你会发现还是1
注:上节课讲漏一个知识点
变量是汉字的时候必须有引号
例如:a="测试"
print(a)
这样才行
如果是
a=测试
print(a)
会直接报错
print大概讲完了


2.getFile()
这个是获取脚本所在的当前路径
例如:
y=gg.getFile()
print(y)
则会输出你这个文件所在的路径
我觉得这个就这样，差不多了
多用于带有控件的窗口
控件窗口在后面讲解

3.os.exit()
这个的意思就是退出脚本
这个没什么好讲的这个内容随便你放哪都是退出的用处
很多人发明了防止退出
退出可以这样用，也就是循环退出
while true do
os.exit()
end
这就是了


4.getTargetPackage()
这个是获取当前所在进程的包名
例如:
a=gg.getTargetPackage()
print(a)
则会输出当前进程的包名
这个多用于检测当前包名
例如:
if gg.getTargetPackage() == 某游戏包名 ---这里自己随便找个包名测试
then 
---这里就是事件，可以不用填
else
os.exit()--退出
end



5.gg.sleep()
这个就是停止多少毫秒
1000毫秒等于一秒
示例:
gg.toast("1")
gg.sleep(500)
gg.toast("2")
gg.sleep(300)
大概就是这个意思
可以运行试试


6.getLine()
这个是获取文件的行数
简单的来说就是
print(gg.getLine())
这个就是显示你当前文件的有多少行




7.choice
这个就是单选的窗口
gg.choice({"1","2","3"})
这就是简单的窗口
可以执行试试
gg.choice({"1","2","3"},nil,"测试")
这个是单选窗口上加一句提示文字
如果要给窗口加单击事件
则该这样写
a=gg.choice({"1","2","3"},nil,"测试")
if a==1 
then
gg.alert("测试")--第一个事件
end
if a==2
then
gg.alert("测试2")--第二个
if a==3
then
gg.alert("测试3")--第三
end
end
大概意思就是把这个单选窗口写个全局变量
如果点击的是第一个则进行之后的事件
后面的也一样

这样可以测试
所谓的外挂脚本就是这样写的
差不多了


8.multiChoice
这个跟上面那个差不多，这是多选
gg.multiChoice({"1","2","3"})
加一个提示文字是
gg.multiChoice({"1","2","3"},nil,"测试")
这个就不是单机事件了
布尔局
布尔局的意思就是 true 和 false
也就是勾选和没勾选
写一个有事件的
b=gg.multiChoice({"1","2","3"},nil,"测试")
if b[1] == true 
then
gg.alert("测试")
end
if b[2] == true 
then
gg.alert("测试2")
end
if b[3] == true 
then
gg.alert("测试3")
end
大概意思跟上面的差不多
反正这是全局变量b第一个勾选则进行后面的事件
后面一样的


9.prompt
这是带有控件的窗口
简单的gg.prompt({"1","2","3"})
这个是最简单的
你可以执行看
我们加控件试试
gg.prompt({"1","2","3"},{},{"checkbox","checkbox","checkbox"})
控件参数有这些'number',--操作是GG自带的键盘
'text',--操作自己的输入法键盘
'path',--可以选择文件夹
'file',--可以选择文件
'checkbox'---布尔局，上面有介绍布尔局是什么，反正就是勾选和不勾选
我们再给控件加事件
b=gg.prompt({"1","2","3"},{},{"checkbox","checkbox","checkbox"})
if b[1] == true 
then
gg.alert("测试")
end
if b[2] == true 
then
gg.alert("测试2")
end
if b[3] == true 
then
gg.alert("测试3")
end
大概意思跟上面一样



差不多了，下课，我累了