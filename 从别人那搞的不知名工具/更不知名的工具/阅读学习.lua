VermillionTear阅读数：19642016-01-版权声明：本文为博主原创文章，未经博主允许不得转载。 https://blog.csdn.net/VermillionTear/article/details/Q：load()，loadfile()与dofile()？

A： 
1、

-- "a.lua"文件中的内容。--
print("Hello Lua!")
------------------------

-- load()编译指定字符串中的代码，并将代码以一个函数的形式返回。
f = load("print(\"Hello Lua!\")")
f()    --> Hello Lua!

-- loadfile()编译指定文件中的代码，并将代码以一个函数的形式返回。
f = loadfile("a.lua")
f()    --> Hello Lua!

-- dofile()编译指定文件中的代码并执行。
dofile("a.lua")    --> Hello Lua!
实际上dofile()只是个辅助函数，它在内部调用了loadfile()，

function dofile (filename)
  local f = assert(loadfile(filename))
  return f()
end
2、当指定的代码有语法错误时，load()和loadfile()都不会报错，而只是返回错误码以及错误描述，而dofile()会报错。所以load()和loadfile()使用更灵活，我们可以自己处理错误，而dofile()使用更方便，一次调用完成所有任务，错误处理也可以托管给Lua。

Q：当load()，loadfile()以及dofile()加载一个函数时，与普通的函数创建的区别？

A：load()，loadfile()以及dofile()不关心”lexical scoping”，他们总是将自己放在全局环境下。

-- "a.lua"文件中的内容。--
i = i + ------------------------

i = 0    -- global i.

function print_global_i()
    io.write(string.format("Global i is %d\t", i))
end

do
    local i = 
    f = function () i = i + 1 end
    f_load = load("i = i + 1")
    f_loadfile = loadfile("a.lua")

    f(); print_global_i(); print(string.format("Local i is %d.", i))
    f(); print_global_i(); print(string.format("Local i is %d.", i))
    f_load(); print_global_i(); print(string.format("Local i is %d.", i))
    f_load(); print_global_i(); print(string.format("Local i is %d.", i))
    f_loadfile(); print_global_i(); print(string.format("Local i is %d.", i))
    f_loadfile(); print_global_i(); print(string.format("Local i is %d.", i))
    dofile("a.lua"); print_global_i(); print(string.format("Local i is %d.", i))
    dofile("a.lua"); print_global_i(); print(string.format("Local i is %d.", i))
end
Global i is 0 Local i is 1. 
Global i is 0 Local i is 2. 
Global i is 1 Local i is 2. 
Global i is 2 Local i is 2. 
Global i is 3 Local i is 2. 
Global i is 4 Local i is 2. 
Global i is 5 Local i is 2. 
Global i is 6 Local i is 2.
Q：require()是如何工作的？

A：require()与dofile()的功能类似，他们之间的区别在于， 
1、require()会在指定的路径（类似于”linux”的”PATH”）中搜索文件。 
2、require()会自动识别文件是否被加载过，以防止重复加载。 
所以，require()更适合加载库文件（或者说叫“模块”，”modname”）。 
require()查找文件所使用的路径类似于如下形式， 
?;?.lua;c:\windows\?;/usr/local/lua/?/?.lua 
其中;分割每个路径，?代表在查找过程中将被替换为文件名的部分。路径中也可以不加问号，比如： 
?;?.lua;/usr/local/default.lua 
当require()找不到要找的文件时，就会加载这个指定的文件（default.lua）。

require "lili"    -- 如此调用，将尝试打开如下文件（或者说叫“模块”，"modname"）。
lili 
lili.lua 
c:\windows\lili 
/usr/local/lua/lili/lili.lua
require()使用package.loaded表存储已加载过的文件，保证同一个文件不会被重复加载，

-- "a.lua"文件中的内容。--
a = ------------------------

require "a"    -- 加载"a.lua"。

for i, v in pairs(package.loaded) do
    print(i, v)
end

-- result
bit32   table: 0xdebug   table: 0x1335dio  table: 0x13353aos  table: 0xa   true    <-- "a.lua"已经被加载了
_G  table: 0x13329fcoroutine   table: 0xpackage table: 0xtable   table: 0x13350dutf8    table: 0x1337bmath    table: 0x1334estring  table: 0x1332dfQ：如何触发异常？

A：使用error()，第一个参数指定错误信息。

print "enter a number:"
n = io.read("*number")    -- 规定输入的是一个数字。
if not n then error("invalid input") end
Lua提供一种更优雅的方式，assert()，

print "enter a number:"
n = assert(io.read("*number"), "invalid input")    -- 如果io.read()的结果为假，则报错，错误信息为指定的信息。
error()第二个参数指定错误信息中报告的出错位置。1代表出错位置指向error()被调用的位置，2代表出错位置指向调用error()的函数被调用的位置。

function foo (str)
  if type(str) ~= "string" then    -- 你的函数中有个检查，规定输入参数一定是字符串。
    error("string expected")
  end
end

-- call
--[[ 如果有这样的调用，
     Lua会将出错的地方指向你的判断部分（即foo()中调用error()的部分），
     因为error()第二个参数默认值为1。]]
foo({x = 1})
这看起来有些不妥，因为并不是函数中对类型判断有问题，实际上是调用的地方出了问题。那么我们可以将error()的第二个参数指定为2，

error("string expected", 2)    -- 此时错误信息将指向foo()的部分。
Q：如何控制报错的方式？

A：如果你不想让程序受到异常的影响而中断，即使是一些Lua当错误发生时默认会抛出异常的情况（比如字符串与数字比较大小），那么你可以使用pcall()。pcall()在安全模式下调用你指定的函数，这意味着被调函数中所有的异常都会被pcall()捕获。pcall()接收被调函数以及被调函数的参数，如果被调函数在执行过程中没有触发异常，则它返回true以及被调函数所有的返回值，否则它返回false以及错误信息。

function foo(var1, var2)
    return (var1 > var2)
            and var1 .. " is larger than " .. var            or var1 .. " is smaller than " .. varend

r, s = pcall(foo, 1, 0)
print(r, s)    --> true 1 larger than r, s = pcall(foo, -1, 0)
print(r, s)    --> true -1 smaller than r, s = pcall(foo, "1", 0)
print(r, s)    --> false attempt to compare number with string
同时pcall()也接受匿名函数，还是上面的例子，改成如下亦可，

r, s = pcall(function (var1, var2)
                return (var1 > var2)
                and var1 .. " is larger than " .. var                or var1 .. " is smaller than " .. var            end, "1", 0)
错误信息不仅可以是字符串，其他任何lua的值均可，

local status, err = pcall(function () error({code=121}) end)
print(err.code)    --> 附加：

1、Lua虽然是解释型语言（就像”shell”一样），但是它也会将源码编译。这并不奇怪，因为许多解释型语言都是这么做的。解释型语言与编译型语言的差异在于，解释型语言的编译过程是在运行过程中完成的，并且在运行过程中无处不在。 
2、注意，对于使用loadfile()加载一个存储函数的文件时，loadfile()只是将创建函数的代码进行了编译，并没有执行创建函数的过程（即没有声明函数），

-- "a.lua"文件中的内容。--
function foo(var)
    print(var)
end
------------------------

f = loadfile("a.lua")
foo(5)    --> attempt to call a nil value (global 'foo')
f()    -- 执行创建函数的过程，即声明函数。 -- 其实这里就是在执行"a.lua"中的代码。
foo(5)    --> 3、如果我们想多次使用同一个文件，那么调用一次loadfile()然后多次使用他的结果，这样比多次调用dofile()要好（这样会多次读取文件，因为其内部多次loadfile()）。 
4、”Q & A”中提到的load()，loadfile()以及dofile()的使用方法均是使用他们加载语句（加载的结果不能赋值给其他变量或函数），而如果你想加载表达式（加载的结果可以赋值给其他变量或函数），需要在代码前面加上一个return，

print "enter function to be plotted (with variable 'x'):"
local l = io.read()
local f = assert(load("return " .. l))    -- 返回表达式。
for i = 1, 10 do
    x = i   -- global 'x' (to be visible from the chunk)
    print(string.rep("*", f()))    -- "f()"将被替换为用户输入的代码。
end

-- result
> 2*x
**
****
******
********
**********
************
**************
****************
******************
********************
5、当一个函数出现异常时，它有两种方式可以选择： 
(1) 返回错误码（经典的情况是返回nil）。 
(2) 报错。 
没有固定的规则说明当错误发生时该选择哪一种方式，但是有一条指导方针：如果一个错误很容易被避免（而且是没有合理的理由证明它应该出现的），那么当这种错误发生时就报错；否则，将会返回错误码。 
举个例子，当math.sin()的参数是一个”table”时我们该怎么做？假设我们返回一个错误码，那么如果我们想判断是否出错也许应该这么写，

local res = math.sin(x)
if not res then     -- error
  ...
或者更简单的，我们可以在调用math.sin()之前检查参数，

if not tonumber(x) then     -- error: x is not a number
  ...
但是通常我们既不检查参数，也不检查函数返回结果。如果参数不是数字，说明我们的程序在哪里出了问题。如果是那样的话，触发异常是最简单，最直接的方法，这类错误属于很容易被避免的，而且是没有合理的理由证明它应该出现的。 
接下来再考虑io.open()打开一个不存在文件的情况。在调用io.open()之前没有简单的方法可以检测出文件是否存在，并且在很多系统上，判断一个文件是否存在的方法就是去尝试打开它。所以当io.open()无法打开文件时，它返回一个nil加上一段错误描述，这样你就可以合理的处理这些错误。 
6、当错误发生的时候，我们常常希望了解更详细的信息（比如函数调用栈信息），而不仅是错误发生的位置。但pcall()返回错误信息时，已经释放了保存错误发生情况的栈信息。所以如果我们想获取，需要在pcall()被调用之前获取。然而，Lua提供了xpcall()，它比pcall()多接收一个错误处理函数。当错误发生时，在函数调用栈信息被释放之前，Lua会调用指定的错误处理函数，这样就可以在该错误处理函数中使用debug库获得更多的信息。debug库中两个常用的函数，

debug.debug()    -- 进入交互模式（类似于Lua的交互模式）。输入命令查看信息。
-- lua交互模式报错时也是通过此函数打印的函数调用栈信息。
debug.traceback()    -- 打印函数调用栈信息。
7、Lua在package.loadlib()中提供了所有的动态连接的功能。这个函数有两个参数：库的绝对路径和初始化函数。所以典型的调用的例子如下：

local path = "/usr/local/lua/lib/libluasocket.so"
local f = package.loadlib(path, "luaopen_socket")
package.loadlib()加载指定的库并且连接到Lua，然而它并不打开库（也就是说没有调用初始化函数）。他返回初始化函数作为Lua的一个函数，这样我们就可以直接在Lua中调用他。如果加载动态库或者查找初始化函数时出错，package.loadlib()将返回nil和错误信息。


