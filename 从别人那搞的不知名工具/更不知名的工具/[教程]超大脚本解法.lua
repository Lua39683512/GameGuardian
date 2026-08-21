本教程试用于解密几M以上使用注释进行伪加密的脚本
新建一个脚本 将下面的代码粘贴进去 路径自己填好
然后保存 运行后即可在写出路径中找到解密后的脚本
下面是代码


io.input("读入脚本的路径")
str=io.read("*a")
file=io.open("写出脚本的路径","w")
file:write((string.gsub(str,"%-%-[^\n]+\n","")))
file:close()


例子:
file1=io.input("/sdcard/xxx脚本.lua")------括号内为原脚本的全路径
str=io.read("*a")
file=io.open("/sdcard/解密后的脚本.lua","w")------括号内为写出脚本的全路径
file:write((string.gsub(str,"%-%-[^\n]+\n","")))
file:close()