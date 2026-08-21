mu4=gg.prompt({"选择转换dump文件"},{"/sdcard/tencent/QQfile_recv/1.lua"},{"file"})[1]
jss=gg.prompt({"计算数"},{0},{"number"})[1]
file=io.open(mu4,"r")
os.remove(mu4..".lua")
os.remove(mu4..".LOAD.Lua")
a={}
for line in file:lines() do
  table.insert(a,line)
end
for i=1,#a do
  if a[i]:match("; \"(.+)\"") and a[i+1]:find("GETTABUP") and tonumber(a[i+2]:match("; (.+)")) and (a[i+3]:find("H_m")) and a[i+4]:find("GETTABUP") and (a[i+5]:find("NEWTABLE")) then
    if #(a[i]:match("; \"(.+)\""))==5 then
      if tonumber(a[i+2]:match("; (.+)"))==1 then
        io.open(mu4..".lua","a"):write(a[i]:match("; \"(.+)\"").."={}\n"..(a[i]:match("; \"(.+)\"").."["..(a[i+2]:match("; (.+)")).."]=H_m({"))
      else
        io.open(mu4..".lua","a"):write(a[i]:match("; \"(.+)\"").."["..(a[i+2]:match("; (.+)")).."]=H_m({")
      end
      if tonumber(a[i+5]:match("NEWTABLE%s*%d*%s*(%d*)%s*"))==0 then
      else
        v=i+6
        while (not a[v+1]:find("CALL")) do
          if a[v]:find("LOADK") then
            io.open(mu4..".lua","a"):write((a[v]:match("; (.+)"))..",")
          else
          end
          v=v+1
        end
      end
      io.open(mu4..".lua","a"):write("})\n")
    end
  end
end
gg.alert("字节table解析完毕")
DY=[==[function MSbn(DZsh,Text) return (Text:gsub('..', function (DZsh) return string.char((tonumber(DZsh,16) - ]==]..jss..[==[)%256) end)) end]==]
io.open(mu4..".LOAD.Lua","a"):write("MSjM={")
for i=1,#a do
  if a[i]:find("GETTABUP") and a[i]:match("null \"(.+)\"") and a[i+1]:find("CALL") and a[i+2]:find("NEWTABLE") and tonumber(a[i+3]:match("; (.+)")) then
    if #(a[i]:match("null \"(.+)\""))<15 then
    else
      v=i+3
      while (not a[v+1]:find("SETTABUP")) do
        if a[v]:find("LOADK") then
          io.open(mu4..".LOAD.Lua","a"):write(a[v]:match("; (.+)")..",")
        else
        end
        v=v+1
      end
    end
    io.open(mu4..".LOAD.Lua","a"):write("}\nfff={} \nfor i=1,#MSjM,2 do MsJm=MSjM[i] table.insert(fff,string.char(MsJm)) end\njiami=table.concat(fff,\"\")")
  end
end
ZZDY='function H_m(code)\nfftf={} \nfor i=1,#code do \ncodem=code[i] \ntable.insert(fftf,string.char(codem-'..jss..')) end \nres=table.concat(fftf,"")\nreturn res end '
ZHT=[===[
p="H_m%(%{(.-)%}%)"
for i in code:gmatch(p) do
  pcall(load("H_m({"..i.."})"))
  res=res:gsub("\n","\\n")
  code=code:gsub(p,'"'..(res):gsub("%%","%%%%")..'"',1)
  code=code:gsub("%%%%","%%")
end
]===]
TFG=[===[
p="([%w][%w][%w][%w][%w])%[(%d*)%]"
for i,v in code:gmatch(p) do
  if load("return type("..i..")")() =="table" then
    res=load("return "..i.."["..v.."]")()
    res=res:gsub("%%","%%%%")
    res=res:gsub("\n","\\n")
    code=code:gsub(i.."[[]"..v.."[]]","\""..res.."\"",1)
    code=code:gsub("%%%%","%%")
  else
  end
end
]===]
gg.alert("模板table解析完毕")
loadfile(mu4..".LOAD.Lua")()
io.open(mu4..".LOAD.Lua","w+"):write(DY.."\n"..jiami:gsub("local",""))
loadfile(mu4..".LOAD.Lua")()
datao=io.open(mu4..".lua","r"):read("*a")
os.remove(mu4..".lua")
os.remove(mu4..".LOAD.Lua")
io.open(mu4..".[字节源未转码].Lua","w"):write(ZZDY..[====[code=[===[]====]..datao..[====[ ]===]]====]..ZHT.."\n")
--io.open(mu4..".[源未转码].Lua","w"):write(ZZDY..[====[code=[===[]====]..datao.."\n"..data..[====[ ]===]]====]..ZHT.."\n")
loadfile(mu4..".[字节源未转码].Lua")()
io.open(mu4..".[源未转码].Lua","w"):write(code.."\n"..[====[code=[===[]====]..data..[====[ ]===]]====]..TFG.."\n")
loadfile(mu4..".[源未转码].Lua")()
code=(((((code:gsub("arg","gg")):gsub("arh","io")):gsub("ari","os")):gsub("ark","table")):gsub("arl","debug")):gsub("arj","string")
io.open(mu4..".[源].Lua","w"):write(code)
os.remove(mu4..".[字节源未转码].Lua")
os.remove(mu4..".[源未转码].Lua")
gg.alert("源码已写入"..mu4..".[源].Lua")