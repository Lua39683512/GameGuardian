   lsq=gg.prompt({
   "选择文件:"
   },{
   gg.getFile()
   },{
  "file"
   })

   if not lsq then
   return print("您选择了退出")
end

    wenjian=loadfile(lsq[1])--选择读取文件


    chongxie=io.open
    canshu=function(...)    
    arg={...}
    duqu=chongxie(...)
    if tostring(arg):find("r") then
    puanduan=table.concat(arg,"\nio模式为:→ ")
    gg.alert("当前io文件为:→"..puanduan,"")
    elseif tostring(arg):find("w") then    
    puanduan=table.concat(arg,"\nio模式为:→ ")
    gg.alert("当前io文件为:→"..puanduan,"")
end
    return duqu
end
   io.open=canshu
   
   wenjian()