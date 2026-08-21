data=[=[
function Main()
  SN = gg.multiChoice({
  "测试加密",
  "小杰加速",
  "退出脚本"
 }, nil)
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   Exit()
  end
end
  XGCK = -1
end

function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%70")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%70")
end







function Exit()
print("小杰:我最好的年华换来了最深刻的教训.")
os.exit()
end
cs = "小杰:我最好的年华换来了最深刻的教训."



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end










]=]
gg.setVisible(false)
QQW="(function() (function() (function() (function()  end)() end)() end)() end)() "
QQW=QQW:rep(3)
ios = function(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            print('输出一个文件到:\n' .. path)
        end
    else
        file = io.open(path)
        if file then
            -- io.input(file)
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end
function randOperator()
    local Operator = {
        [1] = "~",
        [2] = ">>",
        [3] = "<<",
        [4] = "|",
        [5] = "&",
        [6] = "/",
        [7] = "//"
    }
    local str = "nil " .. Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil"
    return str
end
function randtext()
    local strrr = "hx_" .. math.random(4000, 50000)
    local rand = "hx_" .. math.random(5000, 60000)
    local rand2 = "hx_" .. math.random(6000, 70000)
    txt =
        "\nif(nil)then\nif(true)then\nend\nif(true)then\nelse\nlocal " .. rand2 .. "=" .. randOperator() .. "\ngoto " ..
            strrr .. "\nend\nif " .. rand .. " then\nelse\nlocal " .. rand2 .. "=" .. randOperator() .. "\ngoto " ..
            strrr .. "\nend\n::" .. strrr .. "::\nlocal " .. rand2 .. "=" .. randOperator() .. "\nwhile" ..
            [==[('\r\n\r\n\t(hidden chunk)')do]==] .. "\nbreak\nend\nend " .. 'if(nil)then ' ..
            string.rep('goto S ', math.random(5, 15)) .. ' ::S:: end '
    return txt;
end
binary={}
function binary.enc(text)
return ((text:gsub('.', function(d)
local txt,num='',d:byte();for i=7,0,-1 do txt,num=txt..string.format("%d",math.floor(num/2^i)),num%2^i end; return txt; end):gsub(0,string.char(0))):gsub(1,string.char(2)))
end
--解密调用内容
jiemi=[=[
binary={}
function binary.dec(text)
return (text:gsub(string.char(2),1):gsub(string.char(0),0):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
if #x ~= 8 then return '' end;a=tonumber(x,2);
return string.char(math.floor(a))
end))
end
]=]
fy=[=[
BD={loadfile,gg.alert,load,gg.searchNumber,pcall,table.insert,table.concat,gg.getFile,} if 0>9 then  goto i503  goto i503  goto i503   goto i503   goto i503   goto i503   goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 ::i503:: end   __=__  for i,v in pairs(BD) do   if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]v).func),"/") then if 0>5 then goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 ::i504:: end __=__ _G["gg"]["alert"]("拦截你妈？") if 3>8 then goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 ::i505:: end __=__ _G["os"]["exit"](--[[no]]) gunduzi() end end for i in pairs(os) do if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]os[i]).func),"/") then if 3>8 then goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 ::i506:: end __=__ _G["gg"]["alert"]("ffunc") _G["os"]["exit"](--[[no]]) gunduzi() if 1>8 then goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 ::i507:: end __=__ end end BDtime=_G["os"]["clock"](); function _L3_() _L3_() end goto fist ::endfirst:: print(string.char(table.unpack({34,232,175,183,233,135,141,230,150,176,232,191,144,232,161,140,34}))) _G["os"]["exit"](--[[no]]) _L3_() goto endfirst ::fist:: timeseedmx=_G["os"]["clock"]() throughgg=0 BDnum={} mathnum=2000 kd,kd1=_G["string"]["char"](),1 for i=1,500 do kd1=kd1==255 and 1 or kd1+1 kd=kd.._G["string"]["char"](kd1) end for i=1,12 do kd=kd..kd end for i=1,mathnum do BDnum[i]={address=i,flags=1,value=kd} end time1=_G["os"]["clock"]()+os.time() pcall(function(i) _G["gg"]["searchNumber"](i) end,BDnum) time2=_G["os"]["clock"]()+os.time() xpcall(function(i) _G["gg"]["editAll"](i,4) end, function() Txringt=debug.traceback() end,BDnum) time3=_G["os"]["clock"]()+os.time() BDnum=_G["gg"]["getValues"](BDnum) time4=_G["os"]["clock"]()+os.time() fx=_G["debug"]["getinfo"](--[[no]]gg.getValues) if BDnum[_G["math"]["random"](--[[no]]1,2000)].value==0 and type(fx.func)=="function" and type(fx.func)=="function" then BDnum=nil if not BDnum and time4-time1<3 and time2-time3>-2 and time3-time2<time4-time1 then time1=_G["os"]["clock"]() _G["gg"]["sleep"](_G["math"]["random"](--[[no]]8,15)) time1=_G["os"]["clock"]()-time1 if time1>0.008 and time3>time2 then throughgg=throughgg+1 else goto endfirst end else goto endfirst end else goto endfirst end if throughgg==1 then end if throughgg~=1 then goto endfirst else end local BD2=function(...) do if 1>6 then goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 ::i510:: end __=__ local gsou={...} if 2>7 then goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 ::i511:: end __=__ if gsou[1] then if 0>8 then goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 ::i512:: end __=__ gsou[1]=gsou[1].."" local mixa,mixb=_G["math"]["random"](--[[no]]500,999),_G["math"]["random"](--[[no]]500,999) if 2>7 then goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 ::i513:: end __=__ local xma=_G["string"]["char"](_G["math"]["random"](--[[no]]60,255),_G["math"]["random"](--[[no]]60,255)) if 1>9 then goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 ::i514:: end __=__ gsou[1]=gsou[1]:gsub("[^;]+",function (mm) return string.rep(xma,mixa)..mm..string.rep(xma,mixb) end) if 3>8 then goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 ::i515:: end __=__ _G["gg"]["setVisible"](false) if 3>5 then goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 ::i516:: end __=__ _G["gg"]["searchNumber"](gsou[1],gsou[2],gsou[3],gsou[4],gsou[5],gsou[6]) if 1>9 then goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 ::i517:: end __=__ else local isou={} if 1>6 then goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 ::i518:: end __=__ for i=1,_G["math"]["random"](--[[no]]1,5) do if isou[1] then if 2>6 then goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 ::i519:: end __=__ isou[1]=isou[1]..";".._G["math"]["random"](--[[no]]1,99999999) else if 0>9 then goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 ::i520:: end __=__ isou[1]=_G["math"]["random"](--[[no]]1,99999999) end end if 1>5 then goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 ::i521:: end __=__ local db={1,2,4,8,16,32,64} isou[2]=db[_G["math"]["random"](--[[no]]1,7)] if 3>5 then goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 ::i522:: end __=__ _G["gg"]["searchNumber"](isou[1],isou[2]) for i=1,88 do if 3>6 then goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 ::i523:: end __=__ _G["gg"]["searchNumber"]("QN") end return _G["gg"]["clearResults"]() end if 3>6 then goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 ::i524:: end __=__ end end if 2>9 then goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 ::i525:: end __=__
 ]=]
 T=[[
for i in ipairs({}) do local key = {} if not key then  else key = Plugin local QN = {} QN.d.c = QN.d.c() if QN.d.c ~= QN.d.c then  QN.d.c = QN.d.c()  local QN = {} QN.b = QN.b() if QN.b ~= QN.b then  QN.b = QN.b() QN.a = QN.a() if QN.a ~= QN.a then  QN.a = QN.a() QN.ee = QN.ee() if QN.ee ~= QN.ee then  QN.ee = QN.ee() QN.ff = QN.ff() if QN.ff ~= QN.ff then  QN.ff = QN.ff() end;end;end;end;end;end;end
]]
function GG_GO(data)
function Qnsj(a)
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
local w=""
for i=1,a do
local d=math.random(1,49)
w=w..lmn[d]
end
return w
end
    for i, v in pairs(gg) do
        data=data:gsub("gg."..i, "__________Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(io) do
        data=data:gsub("io."..i, "________Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(os) do
        data=data:gsub("os."..i, "______Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(string) do
        data=data:gsub("string."..i, "____Qn".."["..'"'..i..'"'.."]")
    end
for k,v in pairs(gg) do
data=data:gsub(T..'gg.'..k,'_ENV._G.gg[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--gg库
for k,v in pairs(string) do
data=data:gsub('string.'..k,'_ENV._G.string[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--string库
for k,v in pairs(debug) do
data=data:gsub('debug.'..k,'_ENV._G.debug[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--debug库
for k,v in pairs(io) do
data=data:gsub('io.'..k,'_ENV._G.io[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--io库
for k,v in pairs(os) do
data=data:gsub('os.'..k,'_ENV._G.os[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--os库
for k,v in pairs(math) do
data=data:gsub('math.'..k,'_ENV._G.math[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--math库
for k,v in pairs(table) do
data=data:gsub('table.'..k,'_ENV._G.table[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--table库
local ALL_GG={'print','tostring','tonumber','assert','collectgarbage','dofile','error','getfenv','getmetatable','loadstring','loadfile','next','pcall','rawget','rawequal','xpcall'}
for k,v in ipairs(ALL_GG) do
data=data:gsub(v,'_ENV._G["'..v..'"]')
end--基本库
return data
end
data=GG_GO(data) 
sc="QN=string.char \n"
function encrypt(data)
    data = table.concat({string.byte(data, 1, -1)}, ',')
    data = 'QN(' .. data .. ')'
    return data
end
data = string.gsub(data, '\39(.-)\39', encrypt)
data = string.gsub(data, '\34(.-)\34', encrypt)
data = data:gsub("%[=%[(.-)%]=%]",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)
     data=data:gsub("\"(.-)\"",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)
     data,error=data:gsub("'(.-)'",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)
data = data:gsub("end", "end for i=0,0 do end  ")
data = data:gsub("then","then\n"..T..randtext())
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
    return ss
end
ik=1
HX=Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)
XH=Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+9)..Ffd(ik,ik+7)..Ffd(ik,ik+2)..Ffd(ik,ik+3)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)
HS=Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+3)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)
SH=Ffd(ik,ik+3)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+5)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+2)
HX=HX..XH..HS..SH
Hx=string.char(0,0,0,0,0,0):rep(9)
Hx=string.char(0):rep(9)
hxcode = ' while ""=="RlRlRR" do RlRlRR="RlRlRR" local a=[['..Hx..']] end '
hxcode = string.rep(hxcode, 5)
data = hxcode .. fy ..data
data = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") local a=[['..Hx..']] end '.. data 
hxcode = '(function(...) '
hxcode = string.rep(hxcode, 8)
data = hxcode .. data
hxcode = ' local a=[['..Hx..']] end)()'
hxcode = string.rep(hxcode, 8)
data = HX.. data .. hxcode 
data = '  while ""=="RlRlRR" do RlRlRR=(function(...)end)("lRlRlR") local a=[['..Hx..']] end ' .. HX .. data
data ='if nil then (function(...)end)("lRlRlR") end local _A_=(function(...)\nlocal Qn={} __________Qn=gg ________Qn=io ______Qn=os ____Qn=string local function _______Qn(code)local data ={} for i=1,#code do data[i]=string.char((code[i][1][1]/code[i][1][2])-code[i][2]) end return table.concat(data,\"\") end \n'..jiemi..sc.."\n"..data..QQW..'\nend)()'
path = '/sdcard/lasm.tmp'
ios(path, data)

gg.toast("⚙正在混淆编汇指令%⚙")

func, error = loadfile(path)
if not func then
    if gg.alert('加密失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

dump = string.dump(func, true, true)
  
gg.internal2(load(dump), path)
-- os.exit()
gg.toast("⚙30%⚙")



ym = ios(path)


rl = {}
rl.ASM = {
    ['LOADK'] = 2,
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,

    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,

    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,

    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,

    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,

    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,

    ['CLOSURE'] = 2
}
rl.jmp1 = math.random(9000, 80000)
rl.data2 = {}

gg.toast("正在混淆汇编指令...")
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        rl.txt1 = string.match(text, '%S+')
        if rl.ASM[rl.txt1] then
            rl.jmp2 = rl.jmp1 + math.random(4000, 50000)
            rl.jmp3 = rl.jmp2 + math.random(6000, 70000)
            text = 'JMP :goto_' .. rl.jmp1 .. '\nEQ 3 v27 v42\n:goto_' .. rl.jmp2 .. '\n' .. text .. '\nJMP :goto_' .. rl.jmp3 .. '\n:goto_' .. rl.jmp1 .. '\nJMP :goto_' .. rl.jmp2 .. '\n:goto_' .. rl.jmp3
            rl.jmp1 = rl.jmp3 + 1
        end
        rl.data2[#rl.data2 + 1] = text
    end
end

rl.data2 = table.concat(rl.data2, '\n')

f = io.open(path,"w+")
f:write(rl.data2)
f:close()

ym = ios(path)

Zhiling = {
    ---区域指令块
    ["MOVE"] = 1,
    ["LOADK"] = 1,
    ["LOADKX"] = 1,
    ["LOADBOOL"] = 1,
    ["LOADNIL"] = 1,
    ["GETUPVAL"] = 1,
    ["GETTABUP"] = 1,
    ["GETTABLE"] = 1,
    ["SETTABUP"] = 1,
    ["SETUPVAL"] = 1,
    ["SETTABLE"] = 1,
    ["NEWTABLE"] = 1,
    ["SELF"] = 1,
    ["ADD"] = 1,
    ["SUB"] = 1,
    ["MUL"] = 1,
    ["DIV"] = 1,
    ["MOD"] = 1,
    ["POW"] = 1,
    ["UNM"] = 1,
    ["NOT"] = 1,
    ["LEN"] = 1,
    ["CONCAT"] = 1,
    ["JMP"] = 1,
    ["EQ"] = 1,
    ["LT"] = 1,
    ["LE"] = 1,
    ["TEST"] = 1,
    ["TESTSET"] = 1,
    ["CALL"] = 1,
    ["TAILCALL"] = 1,
    ["FORLOOP"] = 1,
    ["FORPREP"] = 1,
    ["TFORCALL"] = 1,
    ["TFORLOOP"] = 1,
    ["SETLIST"] = 1,
    ["CLOSURE"] = 1,
    ["VARARG"] = 1,
    ["EXTRAARG"] = 1,
    ["IDIV"] = 1,
    ["BNOT"] = 1,
    ["BAND"] = 1,
    ["BOR"] = 1,
    ["BXOR"] = 1,
    ["SHL"] = 1,
    ["SHR"] = 1,
}
Str = {"🇨🇳", "🇭🇰", "🇨🇦", "🇦🇷", "🇧🇧", "🇵🇬", "🇲🇴", "🇦🇮", "🇵🇰",
       "🇦🇴", "🇦🇪", "🇮🇪", "🇪🇪", "🇭🇰", "🇩🇴", "🇰🇷", "🇨🇳", "🇻🇮",
       "🇲🇼", "🇱🇧", "🇱🇾", "🇨🇨", "🇭🇳", "🇩🇯", "🇰🇭", "🇶🇦", "🇰🇳",
       "🇰🇬", "🇵🇦", "🇧🇿", "🇧🇲", "\f\f\f\f\t\f\f\f\f��������", "\fArea block protection"}
num = 1
data = {}
number = 10086110
function Resver(b)
    local tab = {}
    for k, v in pairs(b) do
        table.insert(tab, 1, string.format("%x", v))
    end
    str = table.concat(tab)
    tab = {}
    str = str:gsub("........", function(x)
        table.insert(tab, 1, "OP[83] 0x" .. x .. " ; garbage\n")
    end)
    number = number + 1
    return "JMP :goto_5" .. number .. "; garbage\nGETUPVAL v30 u2\nEQ 3 v27 v42\n" .. table.concat(tab) .. "\nADD v66 v66 v67\nLOADK v0 '青柠'; garbage\nGETUPVAL v30 u2\nADD v30 v30 v31\n:goto_5" .. number  ..               "\n\nMOVE v0 v0 ; garbage\nMOVE v0 v0 ; garbage"
end
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        str_1 = string.match(text, '%S+')
        -- 寻找实体
        if Zhiling[str_1] and text:match("JMP") == nil then
            table.insert(data, Resver(gg.bytes(Str[num])) .. "\n" .. text .. "\n")
            if num + 1 > #Str then
                num = 1
            else
                num = num + 1
            end
        else
            table.insert(data, text .. "\n")
        end
    end
end

ios(path, table.concat(data))

func, error = loadfile(path)
if not func then
    if gg.alert('混淆失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

dump = string.dump(func, true)

gg.internal2(load(dump), path)

gg.toast("⚙80%⚙")

data = ios(path)
os.remove(path)
weizhicuowu=[=[
.upval u54 "" ; u1
.upval u92 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v01 "" ; u5
.upval u31 "" ; u6
.upval u12 "" ; u7
.upval u19 "" ; u8
.upval u14 "" ; u9
.upval u74 "" ; u10
.upval u56 "" ; u11
]=]
weizhicuowu1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
data = data:gsub('upval%s*v0*%s*nil%s*;%s*%w*','upval v0 "" ; u0\n'..weizhicuowu,1)
data=data:gsub('upval%s*u0*%s*nil%s*;%s*%w*','upval u0 "" ; u0\n'..weizhicuowu1,1)
data = string.gsub(data, "%s*\n%s*", "\n")
data = string.gsub(data, "linedefined %d+", "linedefined 0")
data = string.gsub(data, "lastlinedefined %d+", "lastlinedefined 0")
data = string.gsub(data, "numparams %d+", "numparams 250")
data = string.gsub(data, "is_vararg %d+", "is_vararg 250")
data = string.gsub(data, "maxstacksize %d+", "maxstacksize 250\n\n")
ios(path,data)
data = loadfile(path)

data = string.dump(data,true)

data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
           string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
           string.char(0x00, 0x00, 0x00, 0x00), 1)
data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
           string.char(0x04, 0x00, 0x00, 0x00, 0x00))
data = string.gsub(data, string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
           string.rep(string.char(0), 32), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep('\0', 24) ..
               string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
               data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))
              data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
              data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))
sj = os.date("%G_%m_%d_")
path = sj .. '[编译].lua'
ios(path, data)

gg.toast("⚙100%⚙")
local newpath = gg.getFile():gsub(gg.getFile():reverse():match("(.-)/"):reverse(), "[编译]新.lua")
size = #io.open(path):read("*a")
gg.alert("编译完成！\n输出文件为:\n" .. newpath.."\n\n输出大小为"..size.."KB")