有时使用print破解脚本的时候复制不了怎么办呀?
可以使用写出文件
比如
print(aaa)
可以改成

file=io.open("/storage/emulated/0/tencent/QQfile_recv/北玄专属文件夹/北玄解密文件夹/北玄解密.lua","w")
file:write(data)
file:close()

运行之后就能在你写那个路径那里找到解出的文件啦
是不是很厉害哦
