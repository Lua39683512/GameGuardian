file="/sdcard/Android/data/.Fxs"

if not loadfile(file) then
pz={gg.getFile(),"/sdcard/数据输出.lua"}
else
pz=dofile(file)
end
GT=gg.prompt({
   "作者：INK.\n高速偏移写法完美捕捉\n以下是拦截功能,括号内为函数名\n拦截失败可能是函数名被更换\n本工具完全免费,请勿上当受骗\nQQ:2280409893\n使用本脚本本人不负责任后果自负\n选择要拦截的脚本",
   "数据输出目录",
   "仿Xs(xqmnb)",
   "原版指针(SearchWrite)",
   "龙套版指针(LongTao)",
   "木酥版指针(readWrite)",
   },pz,{"file","file","checkbox","checkbox","checkbox","checkbox",})
if GT == nil then os.exit() end
gg.saveVariable(GT,file)
HSISNOA=gg.choice
jInsoana=gg.multiChoice
_ENV.gg["choice"]=function(...)
if GT[3] then
function xqmnb(nn)
Xs="qmnb = {\n{[\"memory\"] = "..nn[1].memory.."},\n{[\"name\"] = \""..nn[2].name.."\"},\n{[\"value\"] = "..nn[3].value..", [\"type\"] = "..nn[3].type.."},\n"
for i=4,#nn do
Xs=Xs.."{[\"lv\"] = "..nn[i].lv..", [\"offset\"] = "..nn[i].offset..", [\"type\"] = "..nn[i].type.."},\n"
end
Xs=Xs.."}\nqmxg={\n"
for i,v in ipairs(qmxg) do
Xs=Xs.."{[\"value\"] = "..v.value..", [\"offset\"] = "..v.offset..", [\"type\"] = "..v.type.."},\n"
end
Xs=Xs.."}\nxqmnb(qmnb)\n"
io.open(GT[2],"a"):write(Xs)
gg.toast(nn[2].name.."捕捉成功")
end
end
if GT[4] then
function SearchWrite(a,b,c)
t="{"..a[1][1]..","..a[1][2].."},"
for i=2,#a do
t=t.."{"..a[i][1]..","..a[i][2].."},"
end
t="  local tp1={"..t.."}\n"
t1=""
for i,v in ipairs(b) do
if v[3]==true then v[3]="true" else v[3]="" end
t1=t1.."{"..v[1]..","..v[2]..","..v[3].."},"
end
t1="  local tp2={"..t1.."}\n"
tp=t..t1.."  local dataType="..c.."\n  SearchWrite(tp1,tp2,dataType)\n"
io.open(GT[2],"a"):write(tp)
gg.toast("原版指针捕捉成功")
end
end
if GT[5] then
function LongTao(a,b)
t=""
t1="{[\"类型\"]="..a[1]["类型"]..",[\"主特征码\"]="..a[1]["主特征码"].."},"
for i=2,#a do
v=a[i]
if not v["类型"] then v["类型"]=a[1]["类型"] end
t1=t1.."\n{[\"类型\"]="..v["类型"]..",[\"偏移\"]="..v["偏移"]..",[\"副特征码\"]="..v["副特征码"].."},"
end
t2=""
for i,v in ipairs(b) do
v["冻结"]=v["冻结"] and "true" or "false"
v["类型"]=v["类型"] and v["类型"] or a[1]["类型"]
t2=t2.."{[\"类型\"]="..v["类型"]..",[\"偏移\"]="..v["偏移"]..",[\"冻结\"]="..v["冻结"]..",[\"修改\"]="..v["修改"].."},\n"
end
t="local tp1={\n"..t1.."\n}\nlocal tp2={\n"..t2.."\n}\nLongTao(tb1,tb2)\n"
io.open(GT[2],"a"):write(t)
gg.toast("龙套版指针捕捉成功")
end
end
if GT[6] then
function readWrite(ss,Get,lx,nc,name)
t="{"..(ss[1][1] and "\""..ss[1][1].."\"" or "false")..","..ss[1][2]..","..ss[1][3]..","..ss[1][4]..","..(ss[1][5] and ss[1][5] or "nil")..","..(ss[1][6] and ss[1][6] or "nil").."},"
for i=2,#ss do
t=t.."{"..ss[i][1]..","..ss[i][2]..","..ss[i][3].."},"
end
t=t.."},{"
for i,v in ipairs(Get)do
if not v[1] then v[1]="false" end
v[4]=v[4]==nil and "" or ","..tostring(v[4])
t=t.."{"..v[1]..","..v[2]..","..v[3]..""..v[4].."},"
end
t="readWrite({"..t.."},"..lx..","..nc..",\""..name.."\")\n"
io.open(GT[2],"a"):write(t)
gg.toast(name.."捕捉成功")
end
end
return HSISNOA(...)
end

gg["multiChoice"]=function(...)
if GT[3] then
function xqmnb(nn)
Xs="qmnb = {\n{[\"memory\"] = "..nn[1].memory.."},\n{[\"name\"] = \""..nn[2].name.."\"},\n{[\"value\"] = "..nn[3].value..", [\"type\"] = "..nn[3].type.."},\n"
for i=4,#nn do
Xs=Xs.."{[\"lv\"] = "..nn[i].lv..", [\"offset\"] = "..nn[i].offset..", [\"type\"] = "..nn[i].type.."},\n"
end
Xs=Xs.."}\nqmxg={\n"
for i,v in ipairs(qmxg) do
Xs=Xs.."{[\"value\"] = "..v.value..", [\"offset\"] = "..v.offset..", [\"type\"] = "..v.type.."},\n"
end
Xs=Xs.."}\nxqmnb(qmnb)\n"
io.open(GT[2],"a"):write(Xs)
gg.toast(nn[2].name.."捕捉成功")
end
end
if GT[4] then
function SearchWrite(a,b,c)
t="{"..a[1][1]..","..a[1][2].."},"
for i=2,#a do
t=t.."{"..a[i][1]..","..a[i][2].."},"
end
t="  local tp1={"..t.."}\n"
t1=""
for i,v in ipairs(b) do
if v[3]==true then v[3]="true" else v[3]="" end
t1=t1.."{"..v[1]..","..v[2]..","..v[3].."},"
end
t1="  local tp2={"..t1.."}\n"
tp=t..t1.."  local dataType="..c.."\n  SearchWrite(tp1,tp2,dataType)\n"
io.open(GT[2],"a"):write(tp)
gg.toast("原版指针捕捉成功")
end
end
if GT[5] then
function LongTao(a,b)
t=""
t1="{[\"类型\"]="..a[1]["类型"]..",[\"主特征码\"]="..a[1]["主特征码"].."},"
for i=2,#a do
v=a[i]
if not v["类型"] then v["类型"]=a[1]["类型"] end
t1=t1.."\n{[\"类型\"]="..v["类型"]..",[\"偏移\"]="..v["偏移"]..",[\"副特征码\"]="..v["副特征码"].."},"
end
t2=""
for i,v in ipairs(b) do
v["冻结"]=v["冻结"] and "true" or "false"
v["类型"]=v["类型"] and v["类型"] or a[1]["类型"]
t2=t2.."{[\"类型\"]="..v["类型"]..",[\"偏移\"]="..v["偏移"]..",[\"冻结\"]="..v["冻结"]..",[\"修改\"]="..v["修改"].."},\n"
end
t="local tp1={\n"..t1.."\n}\nlocal tp2={\n"..t2.."\n}\nLongTao(tb1,tb2)"
io.open(GT[2],"a"):write(t)
gg.toast("龙套版指针捕捉成功")
end
end
if GT[6] then
function readWrite(ss,Get,lx,nc,name)
t="{"..(ss[1][1] and "\""..ss[1][1].."\"" or "false")..","..ss[1][2]..","..ss[1][3]..","..ss[1][4]..","..(ss[1][5] and ss[1][5] or "nil")..","..(ss[1][6] and ss[1][6] or "nil").."},"
for i=2,#ss do
t=t.."{"..ss[i][1]..","..ss[i][2]..","..ss[i][3].."},"
end
t=t.."},{"
for i,v in ipairs(Get)do
if not v[1] then v[1]="false" end
v[4]=v[4]==nil and "" or ","..tostring(v[4])
t=t.."{"..v[1]..","..v[2]..","..v[3]..""..v[4].."},"
end
t="readWrite({"..t.."},"..lx..","..nc..",\""..name.."\")\n"
io.open(GT[2],"a"):write(t)
gg.toast(name.."捕捉成功")
end
end
return jInsoana(...)
end


loadfile(GT[1])()
