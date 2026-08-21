mu4=gg.prompt({"选择转换dump文件"},{"/sdcard/tencent/QQfile_recv/1.lua"},{"file"})[1]
file=io.open(mu4,"r")
os.remove(mu4..".lua")
os.remove(mu4..".LOAD.Lua")
a={}
for line in file:lines() do
  table.insert(a,line)
end
ft='} char={} for i=1,#FGCFYGFDGGD do XEY=FGCFYGFDGGD[i] table.insert(char,string.char(XEY-16)) end local heyuanlll=table.concat(char,\"\") function DDFXD(h,Text) return (Text:gsub(\"..\", function (h)   return string.char((tonumber(h,16))%256) end)) end local data = DDFXD(FGCFYGFDGGD,heyuanlll) if string.find(data,\"function\") then ts=gg.alert(\"脚本解密成功,内容如下:\\n\"..data,\"写入本地(建议)\",\"复制(内容较少可以选择\") if ts==1 then io.open(\"'..mu4..'.源.lua\",\"w\"):write(data):close() gg.alert(\"已生成在:\\n'..mu4..'.源.lua\") end if ts==2 then gg.copyText(data) gg.alert(\"已复制脚本内容\") end end'
io.open(mu4..".LOAD.Lua","a"):write("FGCFYGFDGGD={")
for i=1,#a do
  if a[i]:find("LOADK") and a[i+1]:find("NEWTABLE") then
      v=i+2
      while (not a[v+1]:find("SETTABUP")) do
        if a[v]:find("LOADK") and tonumber(a[v]:match("; (.+)")) then
          io.open(mu4..".LOAD.Lua","a"):write(a[v]:match("; (.+)")..",")
        else
        end
        v=v+1
      end
    io.open(mu4..".LOAD.Lua","a"):write(ft)
  end
end
gg.alert("模板table解析完毕")