•bit.bnot(a) - 返回一个a的补充 
•bit.band(w1,...) - 返回w的位与 
•bit.bor(w1,...) - 返回w的位或 
•bit.bxor(w1,...) - 返回w的位异或 
•bit.lshift(a,b) - 返回a向左偏移到b位 
•bit.rshift(a,b) - 返回a逻辑右偏移到b位 
•bit.arshift(a,b) - 返回a算术偏移到b位 
•bit.mod(a,b) - 返回a除以b的整数余数 



function bits.bnot(num1,num2)
    local ret=bit32.bnot(num1,num2);--取反
    return ret;
end


--bits.bxor 异或
function Q(num1,num2)
    local ret=bit32.bxor(num1,num2)
    return ret
end
print(Q(3,6))


--bits.bor 或
function L(num1,num2)
    local ret=bit32.bor(num1,num2)
    return ret
end
print(L(2,4))


function bits.rshift(num,shiftbitnum)
    local ret=bit32.rshift(num,shiftbitnum)--右移
    return ret
end



function bits.lshift(num,shiftbitnum)
    local ret=bit32.lshift(num,shiftbitnum)--左移
    return ret
end



function bits.band(num1,num2)
    local ret=bit32.band(num1,num2)--与
    return ret
end


-------介绍-------

位运算库

lua中的位运算由于数值类型是浮点型，所以支持效果不太好。

lua中利用一些位运算实现一些算法。如：左移相当于乘以2，右移相当于除以2.而对于按位与和按位或这两个概念则需要额外讨论了,这也是由于浮点型数值所带来的影响。

lua5.2中通过位库提供了位运算来修正这些影响，而不是lua中的预定义操作。这种接口设计表明lua中实现位运算不是直接针对lua的numbers，而是通过对lua的number执行特殊的操作(对位运算提供特殊的解释)来实现的。不仅如此，这种操作方式也支持使用其他的库来对位运算进行“解释”。

作者在这一章节的操作使用十六进制数据作为示例数据进行讲解，使用MAX代表0xFFFFFFFF，使用一些辅助函数：
function prints(x)  
     print(string.format("0x%X",x))  
end  
主要是用来打印出十六机制的数值。


Lua5.2版本中的位库名为：bit32，这也表明了其在32位数上运行。位运算的按位与、按位或、取反分别为：band，bor，bnot，而按异位或为：bxor。
lua的位运算运算的是无符整数，这些操作符会将参数转换为0-MAX之间的整数，而超过了这个界限的值将会首先执行取模运算：假如n超过了界限，则执行n%2^32 .而通常情况下，所有的位运算结果也都是在这个范围内。而也需要注意的是，在不同的平台上，或者由于外部库的差异，其运算结果可能会是不同的数值类型。一个技巧是在做对比运算的时候用lua的位库来定义某个常量：
e.g.  
if bit32.or(a,b) == bit32.or(-1) then  

Lua中的位移运算：左移(lshift),右移(rshift)(算术移位 arithmetic shift),左旋转(lrotate),右旋转(rrotate).而除了左移的算术移位的情况，其余的位移操作都会将空位以0补齐,左移的算术移位空位补的值是复制一个该数的最后一位(符号位)

在lua的位运算中，如果位移(旋转)值为一个负值，那么lua会执行一个相反的操作。如对2执行左移-1，相当于将2右移1个单位:
e.g.  
print(bit32.lshift(2,-1))          --1  
print(bit32.rshift(2,1))           --1  

bit32.btest运算功能与band类似，不过其返回值为boolean型，用来将结果和0做对比。结果为1返回值为true，结果为0返回值则为false.

bit32.extract运算,提取函数。该运算实际上结合一个掩码执行了一个位移运算。如：bit32.extract(x,f,w)，该运算返回的结果是从x的f位开始w位数。(returns w bits from x,starting at bit f)接网友给的解释：从x中抽取f位至f+w-1位的值，组成的整数。
ps.后来再理解一番就差不多懂了，这里提取的位数是从f位开始的，假如执行：bit32.extract(11,1,3)，运算过程是从11的二进制表示的1011第一位开始(整数部分的最右边指的是第0位)，至包含自身的3位，即101组成的整数，为5.

而extract运算的反运算是replace，对一个数的某些位执行替换操作。该运算有4个参数：第一个参数指的是我们要执行运算的数；第二个参数指的是要替换进去的数；后两个参数与extract的后两个参数意思一致：从f位开始共w位，即f至f+w-1位。
e.g.  
print(bit32.replace(11,6,1,3))          --13  

注意以下的运算结果
print(bit32.replace(11,bit32.extract(11,1,3),1,3))          --11  