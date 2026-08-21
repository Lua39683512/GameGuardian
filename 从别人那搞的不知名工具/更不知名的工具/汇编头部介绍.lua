函数的头描述
linedefined   =    00 00 00 00   ；函数定义开始处的行号
linedefined   =    00 00 00 00     ; 函数定义结束处的行号 ;顶级函数开始和结束行号都是为00
numparams  =    00          ;固定参数的数目 number of fixed parameters 
is_vararg      =    01            ；可变参数标识符
                                            • 1=VARARG_HASARG
                                            • 2=VARARG_ISVARARG
                                             • 4=VARARG_NEEDSARG
maxstacksize  =  03         ；调用函数所需要的堆栈空间指令段
sizecode         =   06 00 00 00  ; 函数中 指令的数目，缓存区的大小 = sizecode * sizeof(Instruction),每四个字节为一条指令
code               =  02 00 00 00 41 00 00 00 87 40 40 00 c1 00 80 00 a0 40 00 01 1e 00 80 00
                    
常量列表 保存着函数中引用的常量的列表 (常量池) 
Constant.sizek    =  02 00 00 00    ；常量列表的大小 ,缓存区的大小  = Constant.sizek * sizeof(TValue) = 2 * 8 = 16,每项为8个字节，
TValue *               =                                                                             03 00 00 .
                                           00 00 00 00 24 40 04 06 00 00 00 70 72 69 6e 74  ....$@.....print
Constant list 数据结构   保存着函数中引用的常量的列表 (常量池) 
Integer 常量列表的大小 (sizek)
[
    1 byte 常量类型 (value in parentheses):  • 0=LUA_TNIL, 1=LUA_TBOOLEAN,• 3=LUA_TNUMBER, 4=LUA_TSTRING
     Const 常量本身： 如果常量类型是0这个域不存在；如果类型是1,这个是0或1；如果类型是3这个域是 Number；如果类型是4 这个域是String。
]
这里的String 是包含"0"为结束的字符串
点击图片以查看大图图片名称: header2.jpg查看次数: 40文件大小: 58.6 KB文件 ID : 88549

为


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



