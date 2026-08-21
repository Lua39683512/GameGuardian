data=[=[
function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end

-----------------------------------------------------------------------------------------




function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
     
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                  
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                 
               end
           end
           gg.setValues(t)
       
        else
            gg.toast("搜索失败", false)
            return false
        end
    else
        gg.toast("搜索失败")
        return false
    end
end





function Main()
  SN = gg.multiChoice({
  "为完成",
  "小杰加速",
  "关闭加速",
  "全枪瞬击",
  "未Z 未 Z",
  "午后自瞄",
  "头部范围",
  "无视人头",
  "趴下路飞",
  "人物变大",
  "人物天线",
  "上帝视角",
  "除草除树",
  "加速防拉",
  "一秒落地",
  "全枪伤害",
  "二倍加速️",
  "二倍关闭",
  "过检测️",
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
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   k()
  end
  if SN[12] == true then
   l()
  end
  if SN[13] == true then
   m()
  end
  if SN[14] == true then
   n()
  end
  if SN[15] == true then
   o()
  end
  if SN[16] == true then
   p()
  end
  if SN[17] == true then
   q()
  end
  if SN[18] == true then
   r()
  end
  if SN[19] == true then
   s()
  end
  if SN[20] == true then
   Exit()
  end
end
  XGCK = -1
end

function a()
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





function c()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速部署关闭➤%100")
end


function d()
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('436,208,133;-293,741,873', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-293,741,873', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("小杰:CD瞬击开启成功")
gg.clearResults()   
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.toast("小杰:全枪瞬击开启成功")
gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30000", gg.TYPE_FLOAT)
  gg.toast("小杰:上万瞬击开启成功")
end



function e()

end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功🌴")

end



function g()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("172", gg.TYPE_FLOAT)
gg.toast("范围还有一半哦")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3613598e-38;0.0001;0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("65", gg.TYPE_FLOAT)
gg.toast("头部范围开启成功")
qmnb = {
{["memory"] = 32},
{["name"] = "范围部署➤%50"},
{["value"] = 9.201618194580078, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 28, ["type"] = 16},
{["lv"] = 28.0, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = 16},
{["value"] = 180, ["offset"] = 28, ["type"] = 16},
{["value"] = 180, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围部署➤%100"},
{["value"] = 35, ["type"] = 16},
{["lv"] = 33, ["offset"] = 4, ["type"] = 16},
{["lv"] = 62, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 145, ["offset"] = 0, ["type"] = 16},
{["value"] = 145, ["offset"] = 4, ["type"] = 16},
{["value"] = 145, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,954,047,316;1,970,037,078;7,562,578;1,633,906,508", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1633906508", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("小杰:无视人头开启成功")
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("小杰:人物踏空开启成功")
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614273071;0.53446769714;-3.42663764954;1.7763571e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.53446769714", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("小杰:趴下路飞")
end



function j()
qmnb = {
{["memory"] = 32},
{["name"] = "小杰:人物变大"},
{["value"] = 2121728, ["type"] = 4},
{["lv"] = -1028653056, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 1.2, ["offset"] = 192, ["type"] = 16},
{["value"] = 1.2, ["offset"] = 196, ["type"] = 16},
{["value"] = 1.2, ["offset"] = 200, ["type"] = 16},}
xqmnb(qmnb)
end



function k()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("小杰:头发天X开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("0.02066046", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("小杰:人物天X开启成功")
end



function l()
gg.clearResults()    
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("550", gg.TYPE_FLOAT)
gg.toast("小杰:上D视角开启成功")
end



function m()
qmnb = {
{["memory"] = 32},
{["name"] = "小杰:全图除草"},
{["value"] = 4.999999873689376E-6, ["type"] = 16},
{["lv"] = 2.5223372357846707E-43, ["offset"] = 20, ["type"] = 16},
{["lv"] = 2.5223372357846707E-43, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 4, ["type"] = 16},

}
xqmnb(qmnb)
end



function n()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-10",gg.TYPE_FLOAT)
gg.toast("防拉回开启成功")
end



function o()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=999999
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=999999
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=999999
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=999999
gg.setValues(setvalues)
gg.toast("小杰:一秒落地")
end
end
end
end

end




function p()
gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~120000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.toast("小杰:全枪伤害开启成功")


end



function q()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("小杰:人物二倍加速开启成功")
end

function r()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.123;1.123;1.123;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("小杰:人物二倍加速关闭成功")
end

function s()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 1179403647, ["type"] = 4},
{["lv"] = 2621443, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1685382481, ["offset"] = 308, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = 308, ["type"] = 4},}
xqmnb(qmnb)
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
QQW=QQW:rep(11)
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


function encrypt(Code)
	local Tab = {}
	Code = Code:gsub("'",'"')
	code,len = Code:gsub('"(.-)"',"")
	Code = Code:gsub('"(.-)"',function (str) 
		local num = math.random(1,88)
		local num_1 = math.random(1,len*2+111)
		while Tab[num_1] ~= nil do
			num_1 = math.random(1,len*2+111)
		end
		local numb = math.random(1,99999)
		Tab[num_1] = tostring(num~numb).."~"..numb
		local t = {}
		for i = 1,#str do 
			local str_1 = str:sub(i,i):byte()
			table.insert(t,string.char(str_1~num))
		end
		num_3 = math.random(1,999999)
		return 'Dec([=['..table.concat(t)..']=],(function (_) return '..(num_1~num_3)..'~'..num_3..' end)())'
	end)
	for i = 1,len*2+111 do
		if Tab[i] == nil then
			local numb = math.random(1,99999)
			Tab[i] = tonumber(math.random(1,255)~numb).."~"..numb
		end
	end
	local str_2 = string.char(math.random(65,90))..string.char(math.random(65,90))..string.char(math.random(65,90))
	return "local "..str_2.."={"..table.concat(Tab,",").."}\nfunction Dec(Code,key)	Code = Code:gsub('.',function (str)	return string.char(str:byte()~"..str_2.."[key])	end)	return Code end\n"..Code
end

data = encrypt(data)

f = io.open('/sdcard/lasm.tmpcs',"w+")
f:write(data)
f:close()

data = data:gsub("%[=%[(.-)%]=%]",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)
     data=data:gsub("\"(.-)\"",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)
     data,error=data:gsub("'(.-)'",function(h)
     return "binary.dec([=["..binary.enc(h).."]=])"
end)

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
Hx=string.char(0,0,0,0,0,0):rep(9999)
Hx=string.char(0):rep(999)
Hx=string.char(0x00, 0x00, 0x00, 0x00)
hxcode = ' while ""=="RlRlRR" do RlRlRR="RlRlRR" local a=[['..Hx..']] end '
hxcode = string.rep(hxcode, 5)
data = hxcode .. fy ..data
data = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") local a=[['..Hx..']] end '.. data 
hxcode = '(function(...) '
hxcode = string.rep(hxcode, 80)
data = hxcode .. data
hxcode = ' local a=[['..Hx..']] end)()'
hxcode = string.rep(hxcode, 80)
data = HX.. data .. hxcode 
data = '  while ""=="RlRlRR" do RlRlRR=(function(...)end)("lRlRlR") local a=[['..Hx..']] end ' .. HX .. data
data ='if nil then (function(...)end)("lRlRlR") end local _A_=(function(...)\nlocal Qn={} __________Qn=gg ________Qn=io ______Qn=os ____Qn=string local function _______Qn(code)local data ={} for i=1,#code do data[i]=string.char((code[i][1][1]/code[i][1][2])-code[i][2]) end return table.concat(data,\"\") end \n'..jiemi.."\n"..data..QQW..'\nend)()'
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
rl.jmp1 = 1000000
rl.data2 = {}

gg.toast("正在混淆汇编指令...")
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        rl.txt1 = string.match(text, '%S+')
        if rl.ASM[rl.txt1] then
            rl.jmp2 = rl.jmp1 + 1
            rl.jmp3 = rl.jmp2 + 1
            text = 'JMP :goto_' .. rl.jmp1 .. '\n:goto_' .. rl.jmp2 .. '\n' .. text .. '\nJMP :goto_' .. rl.jmp3 .. '\n:goto_' .. rl.jmp1 .. '\nJMP :goto_' .. rl.jmp2 .. '\n:goto_' .. rl.jmp3
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
    return "JMP :goto_5" .. number .. "; garbage\nGETUPVAL v30 u2\nEQ 3 v27 v42\n" .. table.concat(tab) .. "\nLOADK v0 '青柠'; garbage\nGETUPVAL v30 u2\nADD v30 v30 v31\n LOADBOOL v40 20  \nLOADK v4 '\x02\x02\x02\x00\x00\x02\x00\x02\x02\x00\x02\x02\x02\x02\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x02\x02\x02\x00\x00\x02\x00\x02\x02\x00\x00\x02\x00\x00\x00\x00\x02\x00\x02\x00\x02\x02\x02\x02\x02\x02\x02\x00\x00\x02\x00\x02\x02\x00\x02\x00\x00\x02\x00\x00\x02\x00\x02\x02\x00\x00\x00\x02\x02\x02\x02\x00\x02\x00\x00\x00\x02\x00\x02\x02\x00\x02\x00\x00\x02\x00\x02\x00\x00\x02\x00\x02'\n:goto_5" .. number  ..               "\n\nMOVE v0 v0 ; garbage\nMOVE v0 v0 ; garbage"
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