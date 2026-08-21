--[[
 MOVE Copy a value between registers 在寄存器间拷贝值
 LOADK Load a constant into a register 把一常量载入寄存器
 LOADBOOL Load a boolean into a register 把一布尔值载入寄存器
 LOADNIL Load nil values into a range of registers 把 nil 载入一系列寄存器
 GETUPVAL Read an upvalue into a register 把一 upvalue 读入寄存器
 GETGLOBAL Read a global variable into a register 把一全局变量读入寄存器
 GETTABLE Read a table element into a register 把一表元素读入寄存器
 SETGLOBAL Write a register value into a global variable 把一寄存器值写入全局变量
 SETUPVAL Write a register value into an upvalue 把一寄存器值写入 upvalue
 SETTABLE Write a register value into a table element 把一寄存器值写入表元素
 NEWTABLE Create a new table 创建表
 SELF Prepare an object method for calling 为调用对象方法做准备
 ADD Addition operator 加法操作
 SUB Subtraction operator 减法操作
 MUL Multiplication operator 乘法操作
 DIV Division operator 除法操作
 MOD Modulus (remainder) operator 取模（余数）操作
 POW Exponentiation operator 取幂操作
 UNM Unary minus operator 一元负操作
 NOT Logical NOT operator 逻辑非操作
 LEN Length operator 取长度操作
 CONCAT Concatenate a range of registers 连接一系列寄存器
 JMP Unconditional jump 无条件跳转
 EQ Equality test 相等测试
 LT Less than test 小于测试
 LE Less than or equal to test 小于或等于测试
 TEST Boolean test, with conditional jump 布尔测试，带条件跳转
 TESTSET Boolean test, with conditional jump and assignment 布尔测试，带条件跳转和赋值
 CALL Call a closure 调用闭包
 TAILCALL Perform a tail call 执行尾调用
 RETURN Return from function call 从函数调用返回
 FORLOOP Iterate a numeric for loop 迭代数字 for 循环
 FORPREP Initialization for a numeric for loop 初始化数字 for 循环
 TFORLOOP Iterate a generic for loop 迭代一般形式的 for 循环"
 SETLIST Set a range of array elements for a table 设置表的一系列数组元素
 CLOSE Close a range of locals being used as upvalues 关闭被用作 upvalue 的一系列局部变量
 CLOSURE Create a closure of a function prototype 创建一函数原型的闭包
 VARARG Assign vararg function arguments to registers 把可变数量参数赋给寄存器
]]
--全局变量—引用math模板sin函数
a = os.clock()--获取运行时间
for i=,00 do
local x=math.sin(i)
end
b=os.clock()
print(b-a)
--局部变量
a = os.clock()--获取运行时间
local sin=math.sin
for i=,00 do
local x=sin(i)
end
b=os.clock()
print(b-a)
--创建表[table]
--测试代码
local a={}
--对应的是OPCODE
--表结构
--测试代码
local t={}
t[1] = ;
--测试代码
local qn={"1";"2";"3";}
local qn={,2}--简单空表
local qn={["hi"]=}--散列表部分
--一键变量
local a="b"
local h={[a]=}
--[[
上面完成了表相关于3个指令
OP_NEWTABLE
OP_SETTABLE
OP_SETLTSL
的分析
]]
--查询表
--关于OP_GETTABLE
local a={["a"]=}
local b=a["a"]
--将待查询的字符串变量赋值到栈上的一个位置中
--[[
相关数据结构
]]
--父类FuncState指针
--例如:
function nnn()
local a=2
function mmm()
local a=
 end
end
--[[
函数的定义
]]
--最简单的函数定义:
function a()
end
--定义一个无参数函数a
--[[
body函数
]]
local g=2
function b()
local a=
function n()
a=g
 end
end
--以上代码一共引用2个变量
--[[
函数的调用与返回值处理
]]
--函数也是一种变量
--来个最简单的函数调用代码
print("")
--[[
getglobal指令用于加载全局函数print
LOADK指令用于加载常量"1"
]]
--[[
调用成员函数
]]
--例如:
foo:bar("bar")
foo.bar(foo,"baz")
--其他教程
--[[计算器
a = ""
b = ""
c = ""
d = ""
e = ""
f = ""
function question()
QN=gg.prompt({'青柠计算器\n|1.加法|2.减法|3.乘法|4.除法|5.幂|6.一元运算|',"","","",},{"请输入序号","","","结果:"..a..b..c..d..e..f},{'number','number','number','text'})
if QN[1] then 
if QN[1]=="1" then
a = "\n\n:"..QN[2]+QN[3] end
if QN[1]=="2" then
a = "\n\n:"..QN[2]-QN[3] end
if QN[1]=="3" then
a = "\n\n:"..QN[2]*QN[3] end
if QN[1]=="4" then
a = "\n\n:"..QN[2]/QN[3] end 
if QN[1]=="5" then
a = "\n\n:"..QN[2]^QN[3] end 
if QN[1]=="6" then
a = "\n\n:"..QN[2]-QN[3] end end
end
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
question()
end
end
]]
--[[
Lua小客服

a = ''
b = ''
c = ''
--由于之前只有一个回复，所以会重叠
--接下来写一个对话框
--这里用的是gg.prompt
qua=gg.prompt({'你好！
--问题——为了方便换行了（自己解决）
1.asd
2.zxc
3.jdn
'..a..b..c..""——这里对应上面
},{'输入序号'},{'number'})
--判断
if qua[1] then 
if qua[1]=="1" then
a = "\n\n回复:" end
if qua[1]=="2" then
b = "\n\n回复:" end
if qua[1]=="3" then
c = "\n\n回复:" end
--结束
end
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
question()
end
end
]]