
file=io.open('/storage/emulated/0/Tencent/1.txt','a+') --不同的脚本路径自己改
    file:write('1') 
    yxnb = file:seek('end')  
    gg.alert("你当前打开此脚本"..yxnb.."次","")