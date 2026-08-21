local data
function hx()
local hxx={}
for i=1,math.random(5,10) do
hxx[i]=string.char(math.random(150,190))
end
return table.concat(hxx)
end
local LOGO=[=[  



                    "ۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨ🌸夜未央§ۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨ落花无常🌸"


    --✨char加密✨
                      
                      
                         🌸[[ 测试 ]]🌸
                         
                         
                         
---反编译教程如下：

---[[1.打开TC反编译软件，进入反编译界面，

---点击右下角红色的加号，点击选择文件，然后选择本脚本。]]

---[[2.点击左上角，再点击设置，关闭全局模式，返回到反编译界面]]

---[[3.点击右上角，开启忽略指令]]

---[[4.点击反编译即可获取脚本源码]]
                
      "注：不开启忽略指令是无法反编译的哦😊"          
        "ۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۣۨ

🌸QQ：323617915🌸


]=]
local FY=[==[


]==]--防御添加。
local dec="\nlocal table=table\nlocal table.insert=table.insert\nlocal concat=table.concat\nlocal dec=function(tab) if tab==nil then else return concat(tab) end end\n"
local localtb={}
local strtb1={}
local strtb2={}
local ljtb={}
for i=1,1000 do
ljtb[i]="for LLX1432262828=1,1 do _ENV[\034"..hx().."\034]=\034\\"..math.random(1,255).."\034end"
end
local dumplj="\nlocal dumplj=(function()\n"..table.concat(ljtb,"\n").."\nend)()\n"
local goto1=1
function enc(data)
local sjtb=hx()
localtb[#localtb+1]="_ENV[\034"..sjtb.."\034]={}"
local txt1=load('return '..data) 
assert(txt1,'加密失败')
local txt1=txt1() 
local bytetab={string.byte(string.reverse(txt1),1,-1)}
for k,v in pairs(bytetab) do
strtb1[#strtb1+1]="::_"..goto1.."::\ntable.insert(_ENV[\034"..sjtb.."\034],1,\034\\"..v.."\034)\ndec(dumplj) goto _"..(goto1+1)
strtb2[#strtb2+1]="dec(dumplj)\ngoto _"..goto1.."\n::_"..(goto1+1).."::"
goto1=goto1+2
end
return "(dec(_ENV[\034"..sjtb.."\034]))"
end
function ppsf(data)  
data=string.gsub(data,"%\091=%\091.-%\093=%\093",enc)  
data=string.gsub(data,"%\091%\091.-%\093%\093",enc)  
local data2={}  
for text in data:gmatch("[^\n]+") do  
local types=string.match(text,"[\039\034]")  
if types=="\039" then  
text=string.gsub(text,"\039[^\n]-\039",enc)  
text=string.gsub(text,'\034[^\n]-\034',enc)  
elseif types=='\034' then  
text=string.gsub(text,'\034[^\n]-\034',enc)  
text=string.gsub(text,"\039[^\n]-\039",enc)  
end  
data2[#data2+1]=text  
end  
data2=table.concat(data2,"\n")  
return data2
end  
function func(data)  
data=string.gsub(data,"\n%s*","\n")
while true do
local hx=hx()
local str1=string.match(data,"function%s+([%w%._]+)%s*%(")
if str1==nil then break end
data=string.gsub(data,"local%s+function([^%w%._%)%(]*)"..str1.."([^%w%._]*)%(",ENV.."["..hx.."]=function(")
data=string.gsub(data,"function([^%w%._%)%(]*)"..str1.."([^%w%._]*)%(",ENV.."["..hx.."]=function(")
data=string.gsub(data,"([^%w_:%.]+)"..str1.."%s*([%(%)])","%1 "..ENV.."["..hx.."]%2")
gg.toast(funcsl.."  "..str1)
funcsl=funcsl+1
end
return data  
end
function strdump(data)  
gg.toast("正在进行编译......")
data=string__dump(load(data),true)  
io.open(path.."🌸编译🌸.lua","w"):write(data)
data=gg.internal2(load(data),path2)
io.input(path2,"r")
data=io.read("*a")
gg.toast("正在进行指令混淆......")
data=string.gsub(data,"maxstacksize [^\n]*","maxstacksize 250")
data=string.gsub(data,"\n%s+","\n")
data=string.gsub(data,"%.line 0","")
gg.toast("泛型FOR......")
data=string.gsub(data,"(%.upval [^\n]+)\n([^%.][^\n]+)",function(p1,p2)
return p1.."\nLOADK v240 1\nLOADK v241 1\nLOADK v242 1\n"..p2
end)
data=string.gsub(data,"JMP :",function()
local zll=math.random(1,2)
local hxzl=(zll==1 and "FORPREP v240 :" or zll==2 and "TFORLOOP v240 :")
return hxzl
end)
gg.toast("GETTABUP......")
data=string.gsub(data,"(GETTABUP[^\n]+)",
function(p1)
return "TESTSET v200 v200 0\n"..p1
end)
gg.toast("LOADK......")
data=string.gsub(data,"(LOADK[^\n]+)",
function(p1)
return "EQ 1 v200 v200\n"..p1
end)
gg.toast("SETTABUP......")
data=string.gsub(data,"(SETTABUP[^\n]+)",
function(p1)
return "EQ 1 v240 v240\nTFORLOOP v245 GOTO[1]\n"..p1
end)
data=string__dump(load(data),true)  
return data  
end  
ios=function(path,data)
local file
if data then
file=io.open(path,'w')
if file then
io.output(file)
io.write(data)
io.close(file)
end
else
file=io.open(path,'r')
if file then
data=file:read('*a')
file:close()
end
return (data or '')
end
end
local g={} last=gg.getFile() YWY=nil dzdz='/storage/emulated/0/Android/ywyji.txt' ddddd=loadfile(dzdz)
if ddddd~=nil then YWY=ddddd() ddddd=nil end
if YWY==nil then YWY={last} end
local YWY=gg.prompt({"🌸夜未央§落花无常🌸",[1]="✨请选择脚本路径✨:",[2]="✨加密函数名✨"},YWY,{[1]="file",[2]="checkbox"})
if not YWY then
return false
end
gg.saveVariable(YWY,dzdz)
gg.setVisible(false)
path=YWY[1]
local jmfunc=YWY[2]
path2=path..'-加密.lua'
time=os.clock()
data=ios(path)
data=FY..data
gg.toast("正在进行字符串加密......")  
data=ppsf(data)
gg.toast("正在整理代码......")  
local bdtb=table.concat(localtb,"\n")
local str1="\ngoto to_end\n"..table.concat(strtb1,"\n").."\n::to_end::\n"
local str2=table.concat(strtb2,"\n")
data=bdtb.."\n"..dec.."\n"..dumplj..str2.."\nfunction llx1432262828()\n"..data.."\nend llx1432262828() \n"..str1
data=" (function(...)for LLX1432262828=1,1 do\n" ..data.." \nend end)(\091===\091\n\n"..LOGO.."\093===\093\n\n)"
io.open(path.."🌸字符串🌸.lua","w"):write(data)
data=strdump(data)
datalen=#data
datalen=datalen/1024
time=os.clock()-time
ios(path2,data..[[


"ۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨ🌸夜未央§ۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨۨ落花无常🌸"]])
gg.alert("✨加密成功啦！\n✨共耗时"..time.."秒✨\n✨输出文件地址:\n"..path.."\n✨文件大小"..datalen.."KB✨")

