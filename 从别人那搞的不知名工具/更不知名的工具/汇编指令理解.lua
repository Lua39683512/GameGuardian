 <test.lua:0,0> (4 instructions, 16 bytes at 006BECA0)
 
function <test.lua:1,4> (3 instructions, 12 bytes at 0206EE10)
 
函数 <源文件名:起始行号,终止行号>(指令数量, 函数地址)
文



0+ params, 2 slots, 0 upvalues, 0 locals, 1 constant, 1 function
参数数量, 寄存器数量, upvalue数量, 局部变量数量, 常量数量, 子函数数量




指令序号, 对应行号, 操作码, 操作数, 注释
1       [4]     CLOSURE         0 0     ; 0206EE10
2       [1]     SETGLOBAL       0 -1    ; foo
3       [4]     RETURN          0 1






 MOVE 寄存器间拷贝值



 LOADK 加载一个常量到寄存器中



 LOADBOOL 加载一个布尔值到寄存器中



 LOADNIL 加载nil值到一定范围内的寄存器中



GETUPVAL读取上值到寄存器中



GETGLOBAL读取全局变量到寄存器中



GETTABLE读取表成员到寄存器中



SETGLOBAL将寄存器中的值写到全局变量中



SETUPVAL将寄存器中的值写到上值中



SETTABLE将寄存器中的值写到表成员中



NEWTABLE创建一个新的表



SELF准备对象的方法供调用



ADD加法操作符



SUB减法操作符



MUL乘法操作符



DIV除法操作符



MOD取模（求余）操作符



POW求幂操作符



UNM取负操作符



NOT逻辑非操作符



LEN取长度操作符



CONCAT连接一定范围的寄存器



JMP无条件跳转



EQ相等测试



LT小于测试



LE小于等于测试



TEST布尔测试，附加条件跳转



TESTSET布尔测试，附加条件跳转和赋值



CALL调用闭合函数



TAILCALL执行尾调用



RETURN从函数调用中返回



FORLOOP迭代数字的for循环



FORPREP初始化数字的for循环



TFORLOOP迭代泛化的for循环



SETLIST设置数组中一定范围内的元素到表中



CLOSE关闭一定范围用作上值的局部变量



CLOSURE创建函数原型的闭包



VARARG分配变参函数的参数到寄存器中