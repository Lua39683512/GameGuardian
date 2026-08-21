
--用字符串截取字符串
function sj(str,str1,str2)
  str1=str1:gsub("%p",function(s) return("%"..s) end)
  return(str:match(str1 .. "(.-)"..str2))
end

--替换
function sr(str,str1,str2)
  str1=str1:gsub("%p",function(s) return("%"..s) end)
  str2=str2:gsub("%%","%%%%")
  return(str:gsub(str1,str2))
end

--字符串取长
function slg(str)
  return(utf8.len(str))
end

--按位置截取字符,-2表示倒数第二个
function sgg(s,i,j)
  i,j=tonumber(i),tonumber(j)
  i=utf8.offset(s,i)
  j=((j or -1)==-1 and -1) or utf8.offset(s,j+1)-1
  return string.sub(s,i,j)
end

--文件操作,自动创建文件夹
function fw(logfile,linshi)
  a=string.gmatch(logfile,".-%/")
  local file="/sdcard/"
  for i in a do
    file=file..i
    os.execute('mkdir '..file)
  end
  local c=io.open("/sdcard/"..logfile,"w")
  c:write(linshi)
  c:close()

end

function fr(file)--sd卡开始
  local c=io.open("/sdcard/"..file,"r")--打开文件
  if not c then
    return(nil)
  else
    local r=c:read("*a")
    c:close()
    return(r)
  end
end

function fe(file)--判断文件存在否
  local c=io.open("/sdcard/"..file,"r")
  if not c then
    return false
  else
    c:close()
    return true
  end
end

--sd开始,返回排序后的表 目录+文件,目录,文件
function fl(file)
  local tt={}
  local t1={}
  local t2={}
  local f=File("/sdcard/"..file)
  local fs=f.listFiles()
  fs=fs or String[0]
  Arrays.sort(fs) 
  for n=0,#fs-1 do
    if fs[n].isDirectory() then
      table.insert(t1,tostring(fs[n]))
    else
      table.insert(t2,tostring(fs[n]))
    end
  end

  for i,v in pairs(t1) do
    table.insert(tt,v)
  end
  for i,v in pairs(t2) do
    table.insert(tt,v)
  end 
  return tt,t1,t2
end

function fd(file)--删除文件或文件夹
  os.execute("rm -r /sdcard/"..file)
end

function fc(file,file1)--复制文件/文件夹  自动创建文件夹
  local a=string.gmatch(file1,".-%/")
  local file2="/sdcard/"
  for i in a do
    file2=file2..i
    os.execute('mkdir '..file2)
  end
  os.execute("cp -r /sdcard/"..file.." /sdcard/"..file1)
end

--移动文件/文件夹或重命名文件 自动创建文件夹
function ft(file,file1)
  local a=string.gmatch(file1,".-%/")
  local file2="/sdcard/"
  for i in a do
    file2=file2..i
    os.execute('mkdir '..file2)
  end
  os.execute("mv /sdcard/"..file.." /sdcard/"..file1)
end

--使用这些函数时必须先执行前面的定义函数

--以上所有对文件操作的函数均不需写 /sdcard/
--如读取 sd卡 Android文件夹下的1.txt 
--只需要写成print(fr("Android/1.txt"))

--部分函数使用方法
print(sgg("你122好4",2,-2)) --输出 122好
print(sgg("你122好4",-3,-2)) --输出 2好

print(fr(1.txt)) 输出sd卡下1.txt的文本内容

fw("UC/1.txt","你好")  --在前面路径中写入 你好

a=sgg(字符串,数字,数字)
a=sr(字符串,字符串,字符串)
a=sj(字符串,字符串,字符串)
a=slg(字符串)
a=fr(路径)
a=fe(路径)
fw(路径,字符串)
fc(路径,路径)--文件或文件夹
ft(路径,路径)--文件或文件夹
fd(路径)--文件或文件夹
a,b,c=fl(路径)--返回三个表



--原创
星辰


