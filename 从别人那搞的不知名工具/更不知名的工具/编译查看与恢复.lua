function one()
as=gg.prompt({"选择脚本"},{"/sdcard/tencent/QQfile_recv/l.ua"},{"file"})[1]
ass=io.open(as,"r"):read("*a")
bs,b="",{}
    for i=6,12 do
a={
    [6]=0,
    [7]=0,
    [8]=4,
    [9]=4,
    [10]=4,
    [11]=8,
    [12]=0
  }
    if (ass:sub(i,i)):byte()==tostring(a[i]) then
        ik="并非合法的Lua5.2脚本!\n请进行编译操作!"
        bs=bs.."\n第"..i.."位当前是："..(ass:sub(i,i)):byte()..",  无异常"
        b[i]=tonumber((ass:sub(i,i)):byte())
    else
        bs=bs.."\n第"..i.."位当前是："..(ass:sub(i,i)):byte()..", 需要改为："..a[i]
        b[i]=tonumber((ass:sub(i,i)):byte())
    end
    end
    local qw=gg.alert(ik.."\n\n是否修改\n"..bs.."\n\n\n","是","","否")
    if qw==1 then c={("❤内容已输入，请直接点确定❤\n"):rep(4).."\n选择脚本","第6位","第7位","第8位","第9位","第10位","第11位","第12位"} file=as two()
    else
    end
end

function two()
if type(b)~="table" then
c={"选择脚本根据脚本输入现编码","第6位","第7位","第8位","第9位","第10位","第11位","第12位"}
b={
    [6]=0,
    [7]=0,
    [8]=4,
    [9]=4,
    [10]=4,
    [11]=8,
    [12]=0
  }
else
end
if file==nil then 
file="/sdcard/tencent/QQfile_recv/l.ua"
else
end
as=gg.prompt(
  c,
  {
    [1]=file,
    [2]=b[6],
    [3]=b[7],
    [4]=b[8],
    [5]=b[9],
    [6]=b[10],
    [7]=b[11],
    [8]=b[12]
  },
  {
    "file"
  }
  )
if as==nil or as[1]==nil then os.exit() else end
ass=io.open(as[1],"r"):read("*a")
ass=ass:gsub("LuaR"..string.char(as[2],as[3],as[4],as[5],as[6],as[7],as[8]),"LuaR"..string.char(0,0,4,4,4,8,0))
io.open(as[1].."c","w"):write(ass):close()
gg.alert("脚本生成在：\n\n"..as[1].."c")
end
local a=gg.alert("选择功能","查看","","恢复")
if a==nil or a==2 then else
if a==1 then one() end
if a==3 then two() end
end