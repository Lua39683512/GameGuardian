--[[
作者千然
当前版本:v0.96测试版本
v0.1→v0.3更新内容:
1.支持类型数量2个→全部
2.特征码数量上限20个→40个
3.保存列表上限5个→10个
4.无法自定义内存→支持自定义6个内存

v0.3→v0.5更新内容:
1.支持自定义6个内存→支持自定义13个内存
2.修复恶性bug若干

v0.5→v0.51更新内容:
1.修复导出异常问题

v0.51→v0.55更新内容:
1.支持自定义13个内存→支持自定义全部内存

v0.55→v0.7更新内容:
1.特征码数量上限40个→100个
2.保存列表上限10个→30个
3.新增特征码对比工具，仅支持D类型
4.修复特征码显示异常问题

v0.7→v0.75更新内容:
1.支持保存，复制对比结果
2.支持对比特征码时，不对比值为0的特征码
3.支持二次对比
4.支持更多类型的对比数据

v0.75→v0.8更新内容:
1.修复对比工具上50个特征码显示异常问题
2.对比工具优化，支持无限次数对比

v0.8→v0.96更新内容:
1.支持分页模板[算是巨大的工作量了]
2.对比特征码数量100个→200个
3.特征码数量100个→200个
4.修复下方特征码显示异常问题

v0.96→v0.97更新内容:
1.支持对比特征码多选类型
2.极致优化非分页模板手感!更加方便对比

v0.97→v0.99更新内容:
1.修复无法冻结的问题
2.极致优化分页模板手感!更加方便对比
3.支持自定义特征码数量--修改第70行内容即可

注意:新旧版本的脚本模板可能无法通用
交流，反馈群871531289
仅供反馈，交流！
]]

local pzxx=[[gg.clearResults()  sj={}  xgz={} gg.toast("千然偏移v1.1")  function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("搜索到 "..sl.." 个结果")  gg.clearResults()  else  gg.toast("未搜索到结果")  end  else  gg.toast("无搜索值类型")  end  else  gg.toast("无需搜索值")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("无数据")  end  end  --!!!以上为偏移配置 不懂勿动!!!
]]
local lj="/storage/emulated/0/"
function pd(dz,lx)
l={}
l[1]={}
l[1].address=dz
l[1].flags=lx
l=gg.getValues(l)
return l[1].value
end

local tzmsl=100--此处乘以2为特征码数量

zt=1
function Main()
xz=gg.choice({
"选择脚本模板",
"创建脚本模板",
"导出脚本模板",
"工具使用教程",
"🗝️对比工具🗝️",
"🚫退出工具🚫",
},nil,"")
if xz==nil then
elseif xz==1 then
xzjbmb()
elseif xz==2 then
cjjbmb()
elseif xz==3 then
dcjbmb()
elseif xz==4 then
jc=[[
进群问群友
群号871531289
当前版本v0.99
更新时间2021.6.26
]]
fz=gg.alert(jc,"复制群号","确认")
if fz==1 then gg.copyText("871531289")
end
elseif xz==5 then
dbgj()
zt=3
--elseif xz==6 then





elseif xz==6 then
os.exit(print(os.date("%H:%M:%S",os.time())..":退出"))
end
end

function xzjbmb()
xz=gg.prompt({"路径:"},{lj},{"file"})
if xz==nil then
elseif xz[1]=="" then
gg.toast("信息不能为空") Main()
else
lj=xz[1]
zt=2 Bj()
end
end

function cjjbmb()
xz=gg.prompt({"名称:","路径:","启用分页"},{"",lj,false},{"text","file","checkbox"})
if xz==nil then
elseif xz[1]=="" then
gg.toast("信息不能为空") Main()
elseif xz[2]=="" then
gg.toast("信息不能为空") Main()
else
local cjxx=[[
1级页面>Main<1级页面
]]
if xz[3]==true then cjxx=cjxx.."@启用@" end
file = io.open(xz[2]..xz[1], "w")
io.output(file)
io.write(cjxx)
io.close(file)
gg.toast("创建完成")
end
end
function Bj1()
xz=gg.choice({
"添加功能",
"返回主页",
},nil,"当前为无分页模板")
if xz==nil then
elseif xz==1 then
a=1
while(true) do
y="功能"..a
gn=nr:match(y.."(.-)"..y)
if gn==nil then break end
a=a+1
end
z=gg.getListItems()
if #z==0 then
gg.alert("请先保存需要修改的值")
elseif #z>30 then
gg.alert("保存的值数量不能超过30个")
else
sfdj="false"
mc=gg.prompt({"功能名称","修改数值","是否冻结"},{"","999",false},{"text","number","checkbox"})
if mc==nil then
elseif mc[1]=="" then
gg.toast("信息不能为空") Bj1()
elseif mc[2]=="" then
gg.toast("信息不能为空") Bj1()
else
if mc[3]==true then sfdj="true" end
zz={}
dz={}
for i=1,#z do
zz1=z[i].value
zz2=z[i].flags
zz3=z[i]
zz[i]=i..". 数值:"..zz1.."  类型:"..zz2
end
sz=gg.choice(zz,nil,"选择需要修改的数值")
if sz==nil then
else
xglx=z[sz].flags
ncfw=gg.choice({"A内存","Ca内存","Jh内存","Ch内存","Cd内存","Ps内存","J内存","S内存","As内存","V内存","O内存","B内存","Cb内存","Xa内存","Xs内存"},nil,"选择内存，点击空白处默认为A内存")
if ncfw==2 then ncfw=4
elseif ncfw==3 then ncfw=2
elseif ncfw==4 then ncfw=1
elseif ncfw==5 then ncfw=8
elseif ncfw==6 then ncfw=262144
elseif ncfw==7 then ncfw=65536
elseif ncfw==8 then ncfw=64
elseif ncfw==9 then ncfw=524288
elseif ncfw==10 then ncfw=1048576
elseif ncfw==11 then ncfw=-2080896
elseif ncfw==12 then ncfw=131072
elseif ncfw==13 then ncfw=16
elseif ncfw==19 then ncfw=16384
elseif ncfw==20 then ncfw=32768
else ncfw=32
end
lx=gg.choice({"F类","D类","E类","W类","B类","Q类","X类"},nil,"选择类型，点击空白处则为A类")
if lx==1 then lx=16 
elseif lx==2 then lx=4 
elseif lx==3 then lx=64
elseif lx==4 then lx=2
elseif lx==5 then lx=1
elseif lx==6 then lx=32
elseif lx==7 then lx=8
else lx=127
end

tzm={} --tzmlx={} 
pyl={} qbxx={} jltzm={}
for i=1,tzmsl do
zssl=tzmsl*4+4
pd(z[sz].address-(zssl-i*4),lx)
pyl[i]="-"..zssl-i*4
tzm[i]=l[1].value
qbxx[i]=i..". 特征码:"..tzm[i].."  偏移量:"..pyl[i]
end

for i=1,tzmsl do
pd(z[sz].address+i*4,lx)
pyl[tzmsl+i]=""..i*4
tzm[tzmsl+i]=l[1].value
qbxx[tzmsl+i]=tzmsl+i..". 特征码:"..tzm[tzmsl+i].."  偏移量:"..pyl[tzmsl+i]
end
zt=4 xzz()
end
end
end
elseif xz==2 then
zt=1 Main()
end 
end

function xzzz()
xztzm=gg.multiChoice(qbxx,nil,"选择副特征码，点击空白处，可选择返回或隐藏")
if xztzm~=nil then
for i=1,#qbxx do
zsj=os.clock()
if xztzm[i]==true then
jltzm[#jltzm+1]={}
jltzm[#jltzm].z=tzm[i]
jltzm[#jltzm].py=pyl[i]
jltzm[#jltzm].lx=lx
end
end
for i=1,#jltzm do
zspyl=jltzm[i].py-pyl[ztzm]
xj=xj.."  特征码"..i..">"..jltzm[i].z.."<特征码"..i.."  偏移"..i..">"..zspyl.."<偏移"..i--.."  主类型>"..jltzm[i].lx.."<主类型"
end
xxx="\n"..y.."  名称>"..mc[1].."<名称  "..xj.."  冻结>"..sfdj.."<冻结  修改>"..mc[2].."<修改  "..y
file = io.open(lj, "a")
io.output(file)
io.write(xxx)
io.close(file)
gg.toast("已添加")
a=a+1
file = io.open(lj,"r")
nr=file:read("*a")
io.close(file)
zt=2
else--选择副
dqdxz=gg.alert("","隐藏","返回上页")
if dqdxz==2 then zt=4 xzz() end
end
end

function xzz()
ztzm=gg.choice(qbxx,nil,"选择主特征码，点击空白处，可选择返回或隐藏")
if ztzm~=nil then
js=os.clock()
gg.clearResults()
gg.searchNumber(tzm[ztzm],lx,false,gg.SIGN_EQUAL,dz1,dz2)
sl=gg.getResultCount()
sfmy=gg.alert("当前主特征码:"..tzm[ztzm].."\n搜索耗时:"..os.clock()-js.."秒\n结果数量:"..sl.."\n[结果数量必须少于300，建议少于50]\n是否采用当前为主特征码，点击空白处可返回","是")
if sfmy==1 then
zpyz=0-pyl[ztzm]
xj="内存>"..ncfw.."<内存  修改类型>"..xglx.."<修改类型  主特征码>"..tzm[ztzm].."<主特征码  主偏移>"..zpyz.."<主偏移  主类型>"..lx.."<主类型  "
zt=5 xzzz()
else xzz() end
else--选择主
dqdxz=gg.alert("","隐藏","返回上页")
if dqdxz==2 then zt=2 Bj() end
end--主
end

function dcjbmb()
xz=gg.prompt({"路径:"},{lj},{"file"})
if xz==nil then
elseif xz[1]=="" then
gg.toast("信息不能为空") Main()
else
file = io.open(xz[1],"r")
nr=file:read("*a")
io.close(file)
lj=xz[1]
qy=nr:match("@(.-)@")
if qy=="启用" then
dcjbmb2()
else
dcjbmb1()
end
end
end

function dcjbmb1()
ym=nr:match("1级页面>(.-)<1级页面")
gnlb={}
if ym~=nil then--1
b=1
bx={}
while(true) do
y="功能"..b
y=nr:match(y.."(.-)"..y)
if y==nil then break else
gnlb[#gnlb+1]=y:match("名称>(.-)<名称")
ztzm=y:match("主特征码>(.-)<主特征码")
lx=y:match("主类型>(.-)<主类型")
zpy=y:match("主偏移>(.-)<主偏移")
xglx=y:match("修改类型>(.-)<修改类型")
xgz=y:match("修改>(.-)<修改")
djz=y:match("冻结>(.-)<冻结")
ncfw=y:match("内存>(.-)<内存")
if ztzm==nil then
gg.toast("文件损坏")
break
else

bx[#bx+1]="function gn"..b.."()\nsearch("..ztzm..","..lx..","..ncfw..")"
b=b+1
x=1
xtzm={}
while(true) do
lsm="特征码"..x
lsml=y:match(lsm..">(.-)<"..lsm)
if lsml~=nil then
xtzm[#xtzm+1]={}
xtzm[#xtzm].m=lsml
xtzm[#xtzm].py=y:match("偏移"..x..">(.-)<偏移"..x)
x=x+1
else
for i=1,#xtzm do
bx[#bx]=bx[#bx].."\npy1("..xtzm[i].m..","..lx..","..xtzm[i].py..")"
end

bx[#bx]=bx[#bx].."\nxg1("..xgz..","..xglx..","..zpy..","..djz..")\nend"
break
end

end
end
lscs=""
pdgn=""
gnzt=""
for i=1,#gnlb do
lscs=lscs.."'"..gnlb[i].."',\n"
pdgn=pdgn.."if xz=="..i.." then gn"..i.."() end\n"
gnzt=gnzt.."\n"..bx[i].."\n\n"
end
xs=#gnlb+1
pdgn=pdgn.."if xz=="..xs.." then gn"..xs.."() end\n"
gnzt=gnzt.."\nfunction gn"..xs.."()\nos.exit(print('偏移模板作者qq3296680833'))\nend\n\n"
dcnr=pzxx.."\nfunction "..ym.."()\nxz=gg.choice({"..lscs.."'退出'},nil,'选择功能')\nif xz==nil then else\n"..pdgn.."end end"..gnzt.."while(true) do\nif gg.isVisible(true) then\ngg.setVisible(false)\n"..ym.."()\nend end"
file = io.open(xz[1].."<千然偏移工具>", "w")
io.output(file)
io.write(dcnr)
io.close(file)
gg.toast("导出完成")
end end
else--1
gg.toast("错误")
end--1
end




function dcjbmb2()
ym=nr:match("1级页面>(.-)<1级页面")
gnlb={}
if ym~=nil then--1
b=1
fy=1
bx={}
fylb={}
ysgn={}
dygn={}
while(true)do
fylb[#fylb+1]=nr:match("{"..fy.."}(.-){"..fy.."}")
if fylb[fy]==nil then fy=fy-1 break else fy=fy+1 end
end
for i=1,fy do
ysgn[i]={} dygn[i]={}
end


while(true) do
y="功能"..b
y=nr:match(y.."(.-)"..y)

if y==nil then break else
gnlb[#gnlb+1]=y:match("名称>(.-)<名称")
ztzm=y:match("主特征码>(.-)<主特征码")
ssfl=y:match("分页>(.-)<分页")
lx=y:match("主类型>(.-)<主类型")
zpy=y:match("主偏移>(.-)<主偏移")
xglx=y:match("修改类型>(.-)<修改类型")
xgz=y:match("修改>(.-)<修改")
djz=y:match("冻结>(.-)<冻结")
ncfw=y:match("内存>(.-)<内存")
if ztzm==nil then
gg.toast("文件损坏")
break
else

ssfl=tonumber(ssfl)
ysgn[ssfl][#ysgn[ssfl]+1]=gnlb[#gnlb]
--print(ysgn[ssfl][#ysgn[ssfl]])
dygn[ssfl][#dygn[ssfl]+1]="gn"..b
bx[#bx+1]="function gn"..b.."()\nsearch("..ztzm..","..lx..","..ncfw..")"
b=b+1
x=1
xtzm={}
while(true) do
lsm="特征码"..x
lsml=y:match(lsm..">(.-)<"..lsm)
if lsml~=nil then
xtzm[#xtzm+1]={}
xtzm[#xtzm].m=lsml
xtzm[#xtzm].py=y:match("偏移"..x..">(.-)<偏移"..x)
x=x+1 else
for i=1,#xtzm do
bx[#bx]=bx[#bx].."\npy1("..xtzm[i].m..","..lx..","..xtzm[i].py..")"
end
bx[#bx]=bx[#bx].."\nxg1("..xgz..","..xglx..","..zpy..","..djz..")\nend"
break
end
end
end
lscs=""
pdgn=""
gnzt=""
for i=1,#fylb do
lscs=lscs.."'"..fylb[i].."',\n"
pdgn=pdgn.."if xz=="..i.." then ym"..i.."() end\n"
end
xs=#fylb+1
pdgn=pdgn.."if xz=="..xs.." then os.exit(print('偏移模板作者qq3296680833'))\nend\n"
for i=1,#gnlb do
gnzt=gnzt.."\n"..bx[i].."\n\n"
end
lll=""

for i=1,fy do
gnnnr="" pdz=""
for x=1,#ysgn[i] do
--zsd=ysgn[1][1]
--print(zsd)
gnnnr=gnnnr.."'"..ysgn[i][x].."',"
pdz=pdz.."if xz=="..x.." then "..dygn[i][x].."() end\n"
end
lll=lll.."\nfunction ym"..i.."()\nxz=gg.choice({"..gnnnr.."},nil,'点击空白处取消')\n"..pdz.."end\n"

end



dcnr=pzxx.."\nfunction "..ym.."()\nxz=gg.choice({"..lscs.."'退出'},nil,'选择列表')\nif xz==nil then else\n"..pdgn.."end end"..lll..gnzt.."\nwhile(true) do\nif gg.isVisible(true) then\ngg.setVisible(false)\n"..ym.."()\nend end"


file = io.open(xz[1].."<千然偏移工具>", "w")
io.output(file)
io.write(dcnr)
io.close(file)
gg.toast("导出完成")
end end
else--1
gg.toast("错误")
end--1
end

function dbgj()
xz=gg.choice({
"获取特征码",
"对比特征码",
"返回主页",
},nil,"")

if xz==nil then
elseif xz==1 then

z=gg.getListItems()
if #z==0 then
gg.alert("请先保存需要修改的值")
elseif #z>30 then
gg.alert("保存的值数量不能超过30个")
else
zz={}
for i=1,#z do
zz1=z[i].value
zz2=z[i].flags
zz3=z[i]
zz[i]=i..". 数值:"..zz1.."  类型:"..zz2
end
sz=gg.choice(zz,nil,"选择需要修改的数值")
if sz==nil then
else
lx=gg.multiChoice({"F类","D类","E类","W类","B类","Q类","X类"},nil,"选择特征码类型，点击处取消")

time=os.date("%Y.%m.%d-%H:%M:%S",os.time())
for kkk=1,7 do

if lx[kkk]==true then

if kkk==1 then tzlx=16 dqlx="F类"
elseif kkk==2 then tzlx=4 dqlx="D类"
elseif kkk==3 then tzlx=64 dqlx="E类"
elseif kkk==4 then tzlx=2 dqlx="W类"
elseif kkk==5 then tzlx=1 dqlx="B类"
elseif kkk==6 then tzlx=32 dqlx="Q类"
elseif kkk==7 then tzlx=8 dqlx="X类"
end
tzm={} 
qbxx={}
for i=1,tzmsl do
pd(z[sz].address-(tzmsl*4+4-4*i),tzlx)
tzm[i]=l[1].value
qbxx[i]="序号"..i..">"..tzm[i].."<"
end

for i=1,tzmsl do
pd(z[sz].address+i*4,tzlx)
tzm[tzmsl+i]=l[1].value
qbxx[tzmsl+i]="序号"..tzmsl+i..">"..tzm[tzmsl+i].."<"
end
dbm=""
for i=1,tzmsl*2 do
dbm=dbm..qbxx[i].."\n"
end
dz="/storage/emulated/0/"..time.."特征码对比["..dqlx.."]"
file = io.open(dz, "w")
io.output(file)
io.write(dbm)
io.close(file)
gg.alert("保存完成，路径:\n"..dz)
end
end

end
end


elseif xz==2 then

xz=gg.prompt({"对比文件路径1:","对比文件路径2:","去除0值"},{lj,lj,true},{"file","file","checkbox"})
if xz==nil or xz[1]=="" or xz[2]=="" then

else


file = io.open(xz[1],"r")
db1=file:read("*a")
io.close(file)
file = io.open(xz[2],"r")
db2=file:read("*a")
io.close(file)
zzjg=""
bcjg=""
for i=1,tzmsl*2 do
xx1=db1:match("序号"..i..">(.-)<")
xx2=db2:match("序号"..i..">(.-)<")
if xx1==xx2 and xx1~=nil then
if xz[3]==true then 
if xx1~="0" and xx1~="0.0" then
zzjg=zzjg.."序号:"..i.."  特征码:"..xx1.."\n"
bcjg=bcjg.."序号"..i..">"..xx1.."<\n" end
else
zzjg=zzjg.."序号:"..i.."  特征码:"..xx1.."\n"
bcjg=bcjg.."序号"..i..">"..xx1.."<\n"
end
end
end

xz=gg.alert("最终结果如下:\n"..zzjg,"复制","保存","确认")

if xz==1 then gg.copyText(zzjg) elseif xz==2 then
time=os.date("%Y.%m.%d-%H:%M:%S",os.time())
dz="/storage/emulated/0/"..time.."特征码对比"
file = io.open(dz, "w")
io.output(file)
io.write(bcjg)
io.close(file)
gg.alert("保存完成，路径:\n"..dz)
end
end
else
zt=1 Main()
end
end


function Bj2()
xz=gg.choice({
"添加分页",
"添加功能",
"返回主页",
},nil,"当前为分页模板")
if xz==nil then
elseif xz==1 then
fy=gg.prompt({"分页名称:",},{""},{"text"})
if fy~=nil and fy[1]~="" then
file = io.open(lj, "a")
io.output(file)
jjj=#fys+1
io.write("\n{"..jjj.."}"..fy[1].."{"..jjj.."}")
io.close(file)
gg.toast("已添加")
end
elseif xz==2 then
if #fys>0 then
a=1
while(true) do
y="功能"..a
gn=nr:match(y.."(.-)"..y)
if gn==nil then break end
a=a+1
end
z=gg.getListItems()
if #z==0 then
gg.alert("请先保存需要修改的值")
elseif #z>30 then
gg.alert("保存的值数量不能超过30个")
else
sfdj="false"
mc=gg.prompt({"功能名称","修改数值","是否冻结"},{"","999",false},{"text","number","checkbox"})
if mc==nil then
elseif mc[1]=="" then
gg.toast("信息不能为空") Bj()
elseif mc[2]=="" then
gg.toast("信息不能为空") Bj()
if mc[3]==true then sfdj="true" end
else

fynr=gg.choice(fys,nil,"选择分页")
if fynr==nil then else end
zz={}
dz={}
for i=1,#z do
zz1=z[i].value
zz2=z[i].flags
zz3=z[i]
zz[i]=i..". 数值:"..zz1.."  类型:"..zz2
end
sz=gg.choice(zz,nil,"选择需要修改的数值")
if sz==nil then
else
xglx=z[sz].flags
ncfw=gg.choice({"A内存","Ca内存","Jh内存","Ch内存","Cd内存","Ps内存","J内存","S内存","As内存","V内存","O内存","B内存","Cb内存","Xa内存","Xs内存"},nil,"选择内存，点击空白处默认为A内存")
if ncfw==2 then ncfw=4
elseif ncfw==3 then ncfw=2
elseif ncfw==4 then ncfw=1
elseif ncfw==5 then ncfw=8
elseif ncfw==6 then ncfw=262144
elseif ncfw==7 then ncfw=65536
elseif ncfw==8 then ncfw=64
elseif ncfw==9 then ncfw=524288
elseif ncfw==10 then ncfw=1048576
elseif ncfw==11 then ncfw=-2080896
elseif ncfw==12 then ncfw=131072
elseif ncfw==13 then ncfw=16
elseif ncfw==19 then ncfw=16384
elseif ncfw==20 then ncfw=32768
else ncfw=32
end
lx=gg.choice({"F类","D类","E类","W类","B类","Q类","X类"},nil,"选择类型，点击空白处则为A类")
if lx==1 then lx=16 
elseif lx==2 then lx=4 
elseif lx==3 then lx=64
elseif lx==4 then lx=2
elseif lx==5 then lx=1
elseif lx==6 then lx=32
elseif lx==7 then lx=8
else lx=127
end

tzm={} --tzmlx={} 
pyl={} qbxx={} jltzm={}
for i=1,tzmsl do
zssl=tzmsl*4+4
pd(z[sz].address-(zssl-i*4),lx)
pyl[i]="-"..zssl-i*4
tzm[i]=l[1].value
--tzmlx[i]=l[1].flags
qbxx[i]=i..". 特征码:"..tzm[i].."  偏移量:"..pyl[i]
end

for i=1,tzmsl do
pd(z[sz].address+i*4,lx)
pyl[tzmsl+i]=""..i*4
tzm[tzmsl+i]=l[1].value
qbxx[tzmsl+i]=tzmsl+i..". 特征码:"..tzm[tzmsl+i].."  偏移量:"..pyl[tzmsl+i]
end
zt=6 xxz()
end
end
end else gg.alert("请先添加分页") end
elseif xz==3 then
zt=1 Main()
end end

function xxz()
ztzm=gg.choice(qbxx,nil,"选择副特征码，点击空白处，可选择返回或隐藏")
if ztzm~=nil then

js=os.clock()
gg.clearResults()
gg.searchNumber(tzm[ztzm],lx,false,gg.SIGN_EQUAL,dz1,dz2)
sl=gg.getResultCount()
sfmy=gg.alert("当前主特征码:"..tzm[ztzm].."\n搜索耗时:"..os.clock()-js.."秒\n结果数量:"..sl.."\n[结果数量必须少于300，建议少于50]\n是否采用当前为主特征码？点击空白处取消","是")
if sfmy==1 then
zpyz=0-pyl[ztzm]
xj="分页>"..fynr.."<分页  内存>"..ncfw.."<内存  修改类型>"..xglx.."<修改类型  主特征码>"..tzm[ztzm].."<主特征码  主偏移>"..zpyz.."<主偏移  主类型>"..lx.."<主类型  "
zt=7 xxzz()
end
else
dqdxz=gg.alert("","隐藏","返回上页")
if dqdxz==2 then zt=2 Bj() end
end
end


function xxzz()
xztzm=gg.multiChoice(qbxx,nil,"选择副特征码，点击空白处，可选择返回或隐藏")
if xztzm~=nil then
for i=1,#qbxx do
zsj=os.clock()
if xztzm[i]==true then
jltzm[#jltzm+1]={}
jltzm[#jltzm].z=tzm[i]
jltzm[#jltzm].py=pyl[i]
jltzm[#jltzm].lx=lx
end
end
for i=1,#jltzm do
zspyl=jltzm[i].py-pyl[ztzm]
xj=xj.."  特征码"..i..">"..jltzm[i].z.."<特征码"..i.."  偏移"..i..">"..zspyl.."<偏移"..i--.."  主类型>"..jltzm[i].lx.."<主类型"
end
xxx="\n"..y.."  名称>"..mc[1].."<名称  "..xj.."  冻结>"..sfdj.."<冻结  修改>"..mc[2].."<修改  "..y
file = io.open(lj, "a")
io.output(file)
io.write(xxx)
io.close(file)
gg.toast("已添加")
a=a+1
file = io.open(lj,"r")
nr=file:read("*a")
io.close(file)
zt=2
else
dqdxz=gg.alert("","隐藏","返回上页")
if dqdxz==2 then zt=6 xxz() end
end
end




function Bj()
file = io.open(lj,"r")
nr=file:read("*a")
io.close(file)
sfqy=nr:match("@(.-)@")
if sfqy=="启用" then 
fysl=1
fys={}
while(true)do
fys[fysl]=nr:match("{"..fysl.."}(.-){"..fysl.."}")
if fys[fysl]==nil then break else fysl=fysl+1 end
end
Bj2()
else
Bj1()
end
end


while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
if zt==1 then
Main()
elseif zt==2 then
Bj()
elseif zt==3 then
dbgj()
elseif zt==4 then
xzz()
elseif zt==5 then
xzzz()
elseif zt==6 then
xxz()
elseif zt==7 then
xxzz()
end end end