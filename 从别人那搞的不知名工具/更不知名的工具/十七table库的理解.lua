--['unpack'] = function: table.unpack
--打印表内的所有参数
function a(...)
arg={...}
 print(table.unpack(arg))
end
a(_ENV)



--[[
['concat'] = function: table.concat

函数作用: 连接value(作用和 .. 类似)

函数参数: 除了指定的list,其他的都是可选参数(依次为:分隔符(默认为空)，开始位置(默认为1)，结束位置(默认为#table))

注意：表的key不要有空的，否则后面的数值都读不出来
]]
BB=gg.prompt({'输入'},{''},{"text"})
CC=table.concat({BB[1]:byte(1, -1)}, ",")
gg.alert("转ascll码为: ".."❤"..CC.."❤")



--[[
['move'] = function: table.move
函数作用: 把表a1中从下标f到e的value移动到表a2中，位置为a2下标从t开始

函数参数: 表a1，a1下标开始位置f，a1下标结束位置e，t选择移动到的开始位置(如果没有a2，默认a1的下标)
]]

a={"1","2","3"}
b={a,b,c}
print(table.move(a,2,3,2,b))



--[[
函数作用: 以多个元素创建一个新的表

函数参数: 任意个数的value

['pack'] = function: table.pack

]]
Y = table.pack(1,2,3,5)
print(table.concat(Y,",")) 



--[[
['remove'] = function: table.remove
函数作用:第一个参数是列表，第二个参数就是位置
table.remove(list[,pos])
]]
A={"A","2"}
print(table.remove(A,1))



--[[
['sort'] = function: table.sort
进行升序或降序的排序，对于新手极不友好🌝

以下我找出了一些链接，table.sort基本使用


菜鸟教程Lua
http://www.runoob.com/lua/lua-tables.html

常见的坑点
https://www.cnblogs.com/tangyongle/p/8119050.html
https://www.cnblogs.com/singledigit/p/6415902.html

常见的使用情况
（下文关于排序的原理是错误的 下边会有文章 非冒泡排序而是快速排序）
https://www.jb51.net/article/55718.htm
https://blog.csdn.net/poda_/article/details/60579639

多条件排序举例
https://blog.csdn.net/wangqing_12345/article/details/50997407

https://blog.csdn.net/chenhittler/article/details/44812499

比较全面的分析
1.排序的方式
2.多个条件的比较
3. 排序与最值
4. 多次排序
5. 随机排序(shuffle)
https://blog.csdn.net/qq_27052743/article/details/70214803

table.sort底层实现（快速排序）
https://www.cnblogs.com/chevin/p/6037631.html
https://blog.csdn.net/yuqangy/article/details/53014712
]]
local A ={
{B=1, C="deng"},
{B=9, C="luo"},
{B=2, C="yang"},
{B=8, C="ma"},
{B=5, C="wu"},
}
table.sort(A,function(a,b) return a.B<b.B end )
for i in pairs(A) do
   print(A[i].B,A[i].C)
end



--[[
['insert'] = function: table.insert
table.insert（table，index，value）
             表     索引    值
在table 表中指定的index位置插入value
index 可以不传入值， 默认为最后一位
]]
A = {"a", "b", "c", "d" }
table.insert(A, "e")
print(unpack(tables))
-- a    b   c   d   e

table.insert(A, 3 ,"f")
print(unpack(A))
-- a    b   f   c   d   e