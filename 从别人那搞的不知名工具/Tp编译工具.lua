function Main0()
q = gg.choice({
"加密脚本",
"选择文件",
"退出工具",
},2,"作者Tp")
if q==1 then
     as1() 
end
if q==2 then
     as2()
end 
if q==3  then 
    print("萌新勿喷") 
    os.exit() 
end
FX1=-1
end



function as2() 
a = gg.prompt({"选择文件",},{"/storage/emulated/0/"},{"file"})

if a==nil then else end
if a ==1 then end
if a ==2 then end
Main0()
end

function as1()
c = loadfile(a[1])

b = string.dump(c, true)--true不会显示
--print()打印
--对准备加密的文件string.dump调用，调用的文件用b来代替
io.open(a[1]..".lua", "w"):write(b)--:write()写入
--创立一个文件在选择脚本的路径名为选择脚本的名字加一个.lua，并写入编译后的文件
gg.toast("加密成功")

print("加密成功,脚本保存到"..a[1]..'.lua')
os.exit()
end





--[[number就是模式
几种常见的模式
text字符串
number数字
file选择文件
path选择文件夹
checkbox选项

]]



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end