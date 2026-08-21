function ktts(jtg)
    jgtips=[[
   
     
]]..jtg..[[

]]
    return gg.alert(jgtips)
end
sfsztx=math.random(10,26)
jtg=[[ ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️

    加密前将注释部分全部删掉

     即"-----",否则会加密失败]]
ktts(jtg)
msht="/storage/emulated/0/tencent/QQfile_recv/.thumbnails/bf.BF"
file=io.open(msht,'r')
if file~=nil then
    for i=1,10 do
        os.remove(msht)
    end
else
end
function HXzh(str)
  str=str:gsub('1','ɷ')
  str=str:gsub('2','ɵ')
  str=str:gsub('3','Ѻ')
  str=str:gsub('4','ҁ')
  str=str:gsub('5','Բ')
  str=str:gsub('6','ר')
  str=str:gsub('7','Գ')
  str=str:gsub('8','Ծ')
  str=str:gsub('9','Ɛ')
  str=str:gsub('0','ғ')
  str=str:gsub('-','Ԇ')
  return str
end
function randomStr(lens, ...)
    local cs, str, as ={{48, 57}, {65, 90}, {97, 122}}, ""
    if type(...) == "table" then
        as = ...
    else
        as = {...}
    end
    for i = 1, lens do
        local index = math.random(as[1], as[#as])
        str = str .. string.char(math.random(cs[index][1], cs[index][2]))
    end
    return str
end
function adjuStr(lens)
	local rancount, str ={1, 2, 3, 1, 3, 2, 2, 3, 1, 2, 1, 3, 3, 1, 2, 3, 2, 1}, ""
    for i = 1,lens do
	    kkk, vvv = math.random(1, 18), math.random(0, 19)
	    if vvv >= 1 and vvv <= 18 and vvv ~= kkk then
	    else
			vvv = math.random(1, kkk)
		end		
		str = str .. randomStr(1, rancount[vvv])
    end
    return str
end
function remak(filname)
    local sprits_1, sprits_2="", ""
    local files1=io.open(filname)
    repeat
        text=files1:read('*l')
        if text then
        if text~="" and load(text) and not text:find("return") then
            local tempt=randomStr(1, 2)..randomStr(math.random(18, 19), 3)
            sprits_1=sprits_1.."\n"..tempt.."()\n"
            if math.random(1, 2)==1 then
                sprits_2=sprits_2.."function "..tempt.."()\n"..text.."\nend\n"
            else
                sprits_2="function "..tempt.."()\n"..text.."\nend\n"..sprits_2
            end
            else
                sprits_1=sprits_1..text.."\n"
            end
        end
    until text==nil
    return sprits_2..sprits_1
end
function zwhxa()
    lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
    vvv, kkk=math.random(1, 49), math.random(0, 50)
    if kkk>=1 and kkk<=49 and kkk~=vvv then 
    else 
        kkk=math.random(1, vvv) 
    end
    return lmn[kkk]
end
function zzdy(dqy)
    arg={}
    for i, v in pairs(gg) do
        dqy=dqy:gsub("gg."..i, "arg".."["..'"'..i..'"'.."]")
    end
    arh={}
    for i, v in pairs(io) do
        dqy=dqy:gsub("io."..i, "arh".."["..'"'..i..'"'.."]")
    end
    ari={}
    for i, v in pairs(os) do
        dqy=dqy:gsub("os."..i, "ari".."["..'"'..i..'"'.."]")
    end
    arj={}
    for i, v in pairs(string) do
        dqy=dqy:gsub("string."..i, "arj".."["..'"'..i..'"'.."]")
    end
    return dqy
end
function YCZM(code, duan)
    function Ycz(code, syh, duan)
        p = syh .. "(.-)" .. syh
        asdzw=1 sssff="" eee="" uuu=zwhxa()..adjuStr(4) kyk=uuu
        for i in code:gmatch(p) do
            vrvv=""
            for ii=1, #i do
                iii=(i:sub(ii, ii+1)):reverse()
                local iiii,ikkl=string.byte(iii,1,2)
                if ikkl==nil then 
                    hjj="'"..HXzh(tostring(iiii+sfsztx)).."', '"..HXzh("100").."'"
                else
                    ppl=tonumber(ikkl)-tonumber(iiii)
                    hjj="'"..HXzh(tostring(iiii+ppl+sfsztx)).."', '"..HXzh(tostring(ikkl+ppl+sfsztx)).."'"
                end
                vrvv=vrvv..", "..hjj
            end
            vrvv=vrvv:gsub(", ", "", 1)
            iiii="H_m({" .. table.concat({vrvv},  ", ") .. "})"
            ppq=uuu.."["..asdzw.."]"
            sssff=sssff.."\n"..ppq.."="..iiii
            code = code:gsub(p, ppq,  1)
            if asdzw==duan then 
                asdzw=0
                uuu=zwhxa()..adjuStr(4)
                eee=eee.."\n"..uuu.."={}"
            else
            end
            eee=eee..""
            asdzw=asdzw+1
         end
        return kyk.."={}"..eee..sssff, code
    end
    o0oo, o0o0=Ycz(code, '"', duan)
    return o0oo, o0o0
end
function HX_m(jhg, sta, fin)
    HXB=""
    for kkkk=sta, fin do 
	    if kkkk%2~=0 then 
		    super="\n" 
		else 
		    super="" 
		end 
		HXB=HXB..[[ if nil then else goto hx]]..jhg..[[_]]..kkkk..[[ end load() ::hx]]..jhg..[[_]]..kkkk..[[:: ]]..zwhxa()..adjuStr(5).."=".."'"..zwhxa().."'"..super
    end
    return HXB
end
function szs()
    return os.clock()
end
function Ff_f(ksz, jsz)
    lin=""
    for i=jsz, ksz, -1 do
        uuuk=zwhxa()..adjuStr(19)
        if i<ksz+1 then
            a=[[local ]]..uuuk..[=[=function() xs="gg.searchNumber(']=]..szs()..";"..szs()*i..";"..szs()*jsz..";"..szs()*ksz..[=[', 16)" if not xs then xs=sx end ]=]
        else
            a=[[local ]]..uuuk..[=[=function() ]=]..zwhxa()..adjuStr(5).."='"..zwhxa().."'"..[[ if not xs then xs=sx end ]]
        end
        b=[=[end ]=]..uuuk..[[() ]]
        lin=a..lin..b
    end
    return lin
end
function Ffd(ksz,jsz)
    for ir=1,5 do
        ss=""
        for k=1,ir do
            if ir==1 then 
                k=1 
            end
        ss=ss..("if (function ()if nil then else goto Ms end local i ::Ms:: end)then else goto hxffd end  "):rep(k)
        end
    end
    ss="if nil then  "..ss.."::hxffd:: end "
    lin=""..ss
    for i=jsz, ksz, -1 do
        uuu=zwhxa()..adjuStr(19)
        a=[=[function ]=]..uuu..[=[() ]=]..zwhxa()..adjuStr(6).."='"..zwhxa().."'"..[[ if not xs then xs=sx end ]]
        b=[=[end ]=]..uuu..[[() ]]
        lin=a..lin..b
    end
    return lin
end
function zhyzx(A)
    A=((((string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(A, "\n", " "), "          ", " "), "         ", " "), "        ", " "), "       ", " "), "      ", " "), "     ", " "), "    ", " "), "   ", " "), "  ", " ")):gsub("function", "\nfunction")):gsub("gg.searchNumber", "\ngg.searchNumber")):gsub("gg.editAll", "\ngg.editAll")):gsub("gg.setRanges", "\ngg.setRanges")
    return A
end
function Encryption(wenb)
    return wenb:gsub(".", function(jia)
        return string.format("%02X", (string.byte(jia) + sfsztx) % 256)
    end):gsub(" ", "+")
end
MS=gg.prompt({
    "选择加密的脚本",
    "选择输出路径",
    "脚本密码",
    "输入时提示",
    "混淆大小(>=1)\n\n越大文件越大",
    "是否设置密码",
    "函数自定义",
    "转隐藏",
    "混淆防反",
    "格式化重编"
},
{
    [1]="/storage/emulated/0/tencent/QQfile_recv/MS.lua",
    [2]="/storage/emulated/0/tencent/QQfile_recv",
    [3]=1598,
    [4]="请输入密码：",
    [5]=2,
    [6]=false,
    [7]=true,
    [8]=true,
    [9]=true,
    [10]=false
},
{
	"file",
	"path",
	"text",
	"text",
	"number",
	"checkbox",
	"checkbox",
	"checkbox",
	"checkbox",
	"checkbox"
})
if MS==nil then
    gg.setVisible(true)
	print('未选择')
	os.exit()
end
if loadfile(MS[1])==nil then
	gg.setVisible(true)
	print('原脚本语法错误或不存在')
	os.exit()	
end
ym=io.open(MS[1], "r"):read("*a")
io.open(msht, "w"):write(ym):close()
jiancezh=[[
gg.clearResults]]
ym=string.gsub(ym, "gg.clearResults", jiancezh)
if MS[6]==true then
    gg.toast('设置密码后，只需要输入一遍密码，之后只有更改密码才会重新验证')
    panduan=[[
srmm='xxxx' timr='oooo'
filer=io.open('/sdcard/tencent/QQfile_recv/.thumbnails/'..srmm..timr, 'r')
if filer~=nil then else
key=gg.prompt({'mmmm'}, {[1]=''}, {'text'})
if key==nil then
os.exit() end
if key[1]~=srmm then 
gg.alert('密码错误！！') os.exit() CNMsb({226, 154, 160, 239, 184, 143}) 
end
filew=io.open('/sdcard/tencent/QQfile_recv/.thumbnails/'..srmm..timr, 'w')
filew:write('MS制作')
filew:close()
end
]]
    panduan=string.gsub(panduan, 'xxxx', MS[3])
    panduan=string.gsub(panduan, 'mmmm', MS[4])
    panduan=string.gsub(panduan, 'oooo', os.clock())
    file=io.open(msht, 'w')
    file:write(panduan..ym)
    file:close()
    print('➿自定义密码为：'..MS[3])
    print('➿自定义密码提示为：'..MS[4])
end
gg.setVisible(false)
if MS[10]==true then
    gg.alert("➿若加密失败，请取消勾选重编")
    data=remak(msht)
else
    data=io.open(msht, "r"):read("*a")
end

tips=[=[
tishi='🔰🇪 🇳 🇨 🇧 🇾 🇲 🇸™️'dayin="╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n--✭-----✭-🇲-🇸-🇪-🇳-🇨-🇷-🇾-🇵-🇹-✭-----✭--\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n"..("\n"):rep(1000) gg.toast(tishi) print(dayin) for i=1, 666 do loadfile(string.char(47, 115, 121, 115, 116, 101, 109, 47, 112, 114, 105, 118, 45, 97, 112, 112, 47, 83, 101, 116, 116, 105, 110, 103, 115, 47, 83, 101, 116, 116, 105, 110, 103, 115, 46, 97, 112, 107)) end
]=]
data=tips..data
data=zhyzx(data)
data=data:gsub("\\n", "\n")
data=data:gsub("'", '"')
if MS[7]==true then
    data=zzdy(data)
    print("➿转自定义成功")
else
end
--io.open(msht, "w"):write(sf.."\n"..data)
kkkk = [=[
function HXzh(str)
  str=str:gsub('ɷ','1')
  str=str:gsub('ɵ','2')
  str=str:gsub('Ѻ','3')
  str=str:gsub('ҁ','4')
  str=str:gsub('Բ','5')
  str=str:gsub('ר','6')
  str=str:gsub('Գ','7')
  str=str:gsub('Ծ','8')
  str=str:gsub('Ɛ','9')
  str=str:gsub('ғ','0')
  str=str:gsub('Ԇ','-')
  return tonumber(str) end
function H_r(code)res=''
for i in ipairs(code)do 
res=res..string.char(code[i])end 
return res end 
function H_m(code)
fftf={} 
for i=1,#code,2 do 
codem=code[i] 
table.insert(fftf,string.char(HXzh(codem)-zltxjm)) end 
res=table.concat(fftf,"")
return res end 
function MSbn(DZsh,Text) return (Text:gsub('..', function (DZsh) return string.char((tonumber(DZsh,16) - zltxjm)%256) end)) end
function X(jie, Text)return (Text:gsub('..', function (jie)return string.char((tonumber(jie,16))%256) end))end
sear=debug.getinfo(gg.searchNumber).short_src
toas=debug.getinfo(gg.toast).short_src
arg={}for i, v in pairs(gg) do table.insert(arg, gg[i]) arg[i]=gg[i]end arh={}for i, v in pairs(io) do table.insert(arh, io[i]) arh[i]=io[i]end ari={}for i, v in pairs(os) do table.insert(ari, os[i]) ari[i]=os[i]end arj={}for i, v in pairs(string) do table.insert(arj, string[i]) arj[i]=string[i]end ark={}for i, v in pairs(table) do table.insert(ark, table[i]) ark[i]=table[i]end arl={}for i,v in pairs(debug) do table.insert(arl, debug[i]) arl[i]=debug[i] end
sfsuanfa1
sfsuanfa2 ]=]
iiii=[=[
function Ex()
ari["exit"](print("请勿破解"));
Ex()
end;
if sear~="searchNumber" or toas~="toast" then arg["alert"]("请勿拦截") Ex() end
if arl.getinfo(arg[sear]).short_src~="searchNumber" or arl.getinfo(arg[toas]).short_src~="toast" then Ex() end
funca=arh["open"](arg["getFile"](), "r"):read("*a")funcb="";
for i=1, 12 do funcb=funcb.."\\"..arj["byte"](funca:sub(i, i)) end;
if funcb~="\\27\\76\\117\\97\\82\\0\\0\\0\\0\\4\\4\\0" then Ex() else end
arg["setVisible"](false);
itis2=ari["clock"]();
for i=1, 2 do
arg["searchNumber"](arj["rep"](arj["rep"](arj["char"](34), 9999), 9999))
end
oktis2=ari["clock"]();
if oktis2-itis2>(1.9 * 2) or oktis2-itis2<0.33 then 
Ex() 
else
end
InTo, to=string.char, nil 
EAG, Tool=gg.searchNumber, nil 
if(not pcall(function()EAG(InTo(108, 111, 103, 100, 111, 103))end))then
print("检测到解密GG")
Ex()
end
function MuCf() print(string.char(233, 170, 140, 232, 175, 129, 229, 164, 177, 232, 180, 165, 44, 232, 175, 183, 229, 139, 191, 231, 160, 180, 232, 167, 163)) 
arg["setVisible"](true) 
repeat while true do load("❗❓") ari["exit"]() CNMsb({226, 154, 160, 239, 184, 143}) end until false MuCf() end 
file=arh["open"]("/storage/emulated/0/木酥.luaM", "w") 
if file==nil then arg["alert"]("检测到使用状态异常") MuCf() else ari["remove"]("/storage/emulated/0/木酥.luaM") file=arh["open"]("/storage/emulated/0/木酥.luaM", "r") 
if file~=nil then arg["alert"]("检测到使用状态异常") MuCf() end end
if tostring(gg):find(H_r({64})) then
print(H_r({240, 159, 148, 146, 32, 80, 114, 111, 116, 101, 99, 116, 32, 98, 121, 32, 77, 83, 32, 69, 78, 67, 82, 89, 80, 84, 32, 240, 159, 148, 146, 10, 240, 159, 148, 176, 32, 72, 79, 79, 75, 32, 68, 69, 84, 69, 67, 84, 69, 68, 32, 240, 159, 148, 176, 10, 226, 158, 163, 32, 68, 111, 110, 39, 116, 32, 104, 111, 111, 107, 105, 110, 103, 32, 116, 104, 105, 115, 32, 115, 99, 114, 105, 112, 116, 33}))
 ari[H_r({101, 120, 105, 116})]()
 while true do
 _ENV = nil
 end
 while true do
 _ENV = nil
 end
 else
 for _FORV_3_ in tostring(_ENV):gmatch(H_r({102, 117, 110, 99, 116, 105, 111, 110, 58, 32, 64, 40, 46, 45, 41, 58})),  nil,  nil do
 if _FORV_3_ ~= arg[H_r({103, 101, 116, 70, 105, 108, 101})]() then
print(H_r({240, 159, 148, 146, 32, 80, 114, 111, 116, 101, 99, 116, 32, 98, 121, 32, 77, 83, 32, 69, 78, 67, 82, 89, 80, 84, 32, 240, 159, 148, 146, 10, 240, 159, 148, 176, 32, 72, 79, 79, 75, 32, 68, 69, 84, 69, 67, 84, 69, 68, 32, 240, 159, 148, 176, 10, 226, 158, 163, 32, 68, 111, 110, 39, 116, 32, 104, 111, 111, 107, 105, 110, 103, 32, 116, 104, 105, 115, 32, 115, 99, 114, 105, 112, 116, 33}))
 ari[H_r({101, 120, 105, 116})]()
 while true do
 _ENV = nil
 end
 while true do
 _ENV = nil
 end
 end
 end
 end
 if debug.traceback == nil or not tostring(debug.traceback()):find(H_r({99, 104, 117, 110, 107})) then
print(H_r({240, 159, 148, 146, 32, 80, 114, 111, 116, 101, 99, 116, 32, 98, 121, 32, 77, 83, 32, 69, 78, 67, 82, 89, 80, 84, 32, 240, 159, 148, 146, 10, 240, 159, 148, 176, 32, 76, 79, 65, 68, 69, 82, 32, 68, 69, 84, 69, 67, 84, 69, 68, 32, 240, 159, 148, 176, 10, 226, 158, 163, 32, 68, 111, 110, 39, 116, 32, 117, 115, 101, 32, 108, 111, 97, 100, 101, 114, 33}))
 ari[H_r({101, 120, 105, 116})]()
 while true do
 _ENV = nil
 end
 while true do
 _ENV = nil
 end
 end
 for _FORV_3_ in tostring(debug.traceback()):gmatch(H_r({40, 46, 45, 41, 10})) do
 if _FORV_3_:match(H_r({46, 40, 47, 46, 45, 41, 58})) and _FORV_3_:match(H_r({46, 40, 47, 46, 45, 41, 58})) ~= arg[H_r({103, 101, 116, 70, 105, 108, 101})]() then
print(H_r({240, 159, 148, 146, 32, 80, 114, 111, 116, 101, 99, 116, 32, 98, 121, 32, 77, 83, 32, 69, 78, 67, 82, 89, 80, 84, 32, 240, 159, 148, 146, 10, 240, 159, 148, 176, 32, 76, 79, 65, 68, 69, 82, 32, 68, 69, 84, 69, 67, 84, 69, 68, 32, 240, 159, 148, 176, 10, 226, 158, 163, 32, 68, 111, 110, 39, 116, 32, 117, 115, 101, 32, 108, 111, 97, 100, 101, 114, 33}))
 ari[H_r({101, 120, 105, 116})]()
 while true do
 _ENV = nil
 end
 while true do
 _ENV = nil
 end
 end
 end
arg["require"]("75.0", 7500); if arg["BUILD"]-2<14566-2 or arg["VERSION"]-2<75.0-2 or arg["VERSION_INT"]-2<7500-2 then 
while true do print("请使用83.0及以上GG"); ari["exit"](); end end 
function custom_func(num1,  num2) loadtime=ari["clock"](); local ret = num1 + num2; 
for i=num1, ret+num2 do 
me=loadfile(arj["char"](47, 115, 121, 115, 116, 101, 109, 47, 112, 114, 105, 118, 45, 97, 112, 112, 47, 83, 101, 116, 116, 105, 110, 103, 115, 47, 83, 101, 116, 116, 105, 110, 103, 115, 46, 97, 112, 107)); end end 
local func_content = arj["dump"](custom_func, true, true); local outfile = arh["open"](arg["getFile"]().."..dump.txt",  "w"); local outnum = outfile:write(func_content); outfile:close(); local infile = arh["open"](arg["getFile"]().."..dump.txt",  "r"); local incontent = infile:read("*a") infile:close(); local myfunc = load(incontent); 
myfunc(1,  1); ari["remove"](arg["getFile"]().."..dump.txt"); nowtime=ari["clock"](); 
if nowtime-loadtime>0.111 then 
while true do print("请勿进行load"); ari["exit"](); end 
elseif nowtime-loadtime<nowtime-loadtime or not ari["time"]() or ari["time"]()-loadtime<0 or not ari["clock"]() or me~=nil or me==true or me==false then 
while true do pe= "启动速度超过上限,请不要采用非法操作"; print(pe); ari["exit"](); end end 
mxerror()
goto endlesprit
::startsprit::
if tostring(debug.getinfo(os.clock)):len()==306 then goto endlesprit end
if tostring(package):find("@") then goto endlesprit end
gg.sleep(2)
if os.clock()-timeseedmx<=0.001 or throughgg or search_e then gg.alert("在"..gg.getLine().."出现错误！") end
throughgg=0
local textseable={}
local hx=""
for xh=0,255 do
hx=hx..string.char(xh)
end
for i=1,16 do
hx=hx..hx
end
for i=1,50 do
textseable[i]={address=i,flags=1,hxc=hx}
end
if debug.getinfo(gg.searchNumber).short_src~="searchNumber" then goto endlesprit end
if tostring("//@")~="//@" then goto endlesprit end
if debug.getinfo(tostring).source~="=[Java]" then goto endlesprit end
local timex=os.time()+os.clock()
gg.loadResults(textseable)
timex=os.time()+os.clock()
xsh=1
for i=1,100 do
gg.getValues({{address=0,flags=1,VG=hx}})
end
while xsh<20 or timex1-timex<0.8 or timex1-timex>6.8 do
pcall(function(i) gg.searchNumber(i) end,textseable)
pcall(function(i) gg.editAll(i,4) end,textseable)
timex1=os.time()+os.clock()
xsh=xsh+1
end
gg.searchNumber,Searchnumber=Searchnumber,gg.searchNumber
function gg.searchNumber(a,b,c,d,e,f)
gg.setVisible(false)
Searchnumber(a,b,c,d,e,f)
while gg.isVisible(true) do
gg.clearResults()
os.exit()
end
end
if debug.getinfo(gg.searchNumber).short_src~=gg.getFile() then  goto endlesprit end
gg.getValues,os.getValues=os.getValues,gg.getValues
function gg.getValues(tableg)
if #tableg==0 then return os.getValues(tableg) end
if #tableg>0 then
local tables={}
for sk=1,#tableg do
tables[sk]={address=tableg[sk].address,flags=tableg[sk].flags,value=textseable}
end
return os.getValues(tables)end
end
if not tostring(gg.getValues):find("/") then goto endlesprit end
if tostring(gg.setValues):find("/") then goto endlesprit end
gg.setValues,os.setValues=os.setValues,gg.setValues
function gg.setValues(tableg)
if #tableg==0 then return os.setValues(tableg) end
if #tableg>0 then
local tables={}
for sk=1,#tableg do
tables[sk]={address=tableg[sk].address,flags=tableg[sk].flags,value=tableg[sk].value,freeze=textseable}
end
return os.setValues(tables)end
end
tonumber,tonumberi=tonumberi,tonumber
function tonumber(str,jz)
tonumberi(search_ex)
return tonumberi(str,jz)end
gg.setVisible(true)
startstr()
ylk ={}
if ylk == gx1 then else o0oo={} 
if o0oo==1 then goto exit else 
if o0oo==2 then 
gg.fullName = gg.getFile() 
gg.path = gg.fullName:gsub(ms5(91, 94, 47, 93, 43, 36), "") 
gg.name = gg.fullName:match (ms5(91, 94, 47, 93, 43, 36)) 
gg.randomName = "" 
gg.outPath = gg.path 
file = gg.outPath .. "[]" .. gg.name .. gg.randomName .. "" 
os.remove(gg.getFile(), ms5(119)) 
gg.outFile = io.open(file,  ms5(119)) 
gg.outFile:write(gg.makeRequest(gx2).content) 
gg.outFile:close() 
goto exit else goto exit end end end 
while(true) do end ::exit:: ]=]
if MS[8]==true then
    sf2, data2=YCZM(iiii, (40/MS[5]))
    sf, data=YCZM(data, (40/MS[5]))
    print("➿隐藏搜索成功")
else
    sf="m='MSNB'"
end
kkkk = string.gsub(kkkk,  "sfsuanfa1",  sf)
kkkk = string.gsub(kkkk,  "sfsuanfa2",  sf2)
kkkk = string.gsub(kkkk,  "zltxjm",  "tonumber('"..sfsztx.."')")
io.open(msht, "w"):write(kkkk..data2):close()
io.open(msht.."aa", "w"):write(data):close()
if MS[9]==true then
    ik=1 MSNB=""
    file=io.open(msht, "r")
    for line in file:lines() do
        MSNB=MSNB..HX_m(1, ik, ik+12)..Ffd(ik,ik+12)..line
        if line~=nil then
            ik=ik+13
            gg.toast("加密混淆中.....\n 已完成🔰："..(ik-12).."条")
            gg.sleep(1)
        else 
		    file:close()
	        break
        end
    end
hxts=(ik-12)
print("➿加密混淆已完成："..hxts.."条")
    MSNB=MSNB..Ff_f(1, 60)
else 
    MSNB=io.open(msht, "r"):read("*a") 
end
--io.open(MS[1].."a","w"):write(MSNB)
M_S = io.open(msht.."aa", "r"):read("*a")
jmdm = Encryption(M_S)
MSnb = [[local data = MSbn('MSnb','JMDM') local MSnb = load(data) pcall(MSnb)]]
M_S = string.gsub(MSnb, "JMDM", jmdm)
sssssm={}
for ii=1,#M_S do
    MSi	= string.reverse(string.sub(M_S,ii,ii+1))
    local MSj,MSk=string.byte(MSi,1,2)
    if MSk==nil then PK=MSj..",255" 
    else 
        ppk=tonumber(MSk)-tonumber(MSj)
        PK=MSj+ppk..","..MSk+ppk
    end
    table.insert(sssssm, PK)
end
data = table.concat(sssssm, ',')
MSNB=string.gsub(MSNB,  "MSNBlA",  data)
--io.open(MS[1].."a","w"):write(MSNB)
HVX=""
if not hxts then
hxts=5000
end
for g=1,MS[5]*(hxts/12) do
    HVX=HVX.." � "..zwhxa()
end
HVX=HVX:rep(5)
MSNB="m=' 🇲 🇸™️ "..HVX.."' local MSNB66=function() "..MSNB.." end MSNB66() "
g={}
g.name=MS[1]:match("[^/]*$")
g.name=g.name:gsub(".lua", "a.lua")
g.out=MS[2].."/"..g.name
gg.toast("请耐心等待......即将完成...95%")
test=load("--[[加密模板仅授权顾惘使用]]\n"..MSNB)
g.file = io.open(g.out,  "w")
--g.file:write(MSNB)
aaa=string.dump(test, true)
mnsw = aaa:gsub("LuaR"..string.char(0, 0, 4, 4, 4, 8, 0), "LuaR"..string.char(0, 0, 0, 0, 4, 4,0))
g.file:write(mnsw)
g.file:close()
io.open(msht, "w")
io.open(msht.."a", "w")
os.remove(msht.."a")
os.remove(msht)
gg.setVisible(true)
print('➿加密成功，脚本保存在：\n➿'..g.out)