mode1=false--复选项保存
mode2=false
disDrawAcc()--绘制
local view=newView()
local paint=newPaint()
paint:setColor("#2EFFA4")--文本颜色
paint:setTextSize(0)
local bg=newPaint()
bg:setColor("#AA000000")--背景颜色
local history={}
------------------------------------
function onDraw(canvas)
if #history==0 then return end
local W,H=getWH()["width"],getWH()["height"]--适应不同分辨率
local scale=math.min(W,H)/1080
local x=0--x距离
local y=50*scale--y距离
local w=480*scale--背景x
local line=20*scale--行间距
canvas:drawRect({x,y,x+w,y+line*(#history+1)+20*scale},bg)
paint:setTextSize(20*scale)
canvas:drawText("进制转换记录",x+9*scale,y+20*scale,paint)
for i,v in ipairs(history)do
canvas:drawText(v,x+9*scale,y+20*scale+i*line,paint)end end
view:show(onDraw,1)--每秒刷新1次
--===================================================
local function DecToHex(s)--10进制→16进制算法
s=tostring(s):gsub("^0+","")
if s==""then return"0"end
if not s:match("^%d+$")then return nil end
if #s<=15 then return string.format("0x%X",tonumber(s))end
local hex="0123456789ABCDEF"
local result=""
while s~="0"do
local q=""
local carry=0
for i=1,#s do
local n=carry*10+(string.byte(s,i)-48)
local d=math.floor(n/16)
carry=n-d*16
if d>0 or q~=""then q=q..string.char(d+48)end end
result=hex:sub(carry+1,carry+1)..result
if q==""then s="0"else s=q end end
return"0x"..result end
------------------------------------------------------------------------------------------
local function HexToDec(s)--16进制→10进制算法
s=tostring(s):upper():gsub("^0X",""):gsub("^0+","")
if s==""then return"0"end
if not s:match("^[0-9A-F]+$")then return nil end
local hex="0123456789ABCDEF"
local result="0"
for i=1,#s do
local n=hex:find(s:sub(i,i),1,true)-1
local out=""
local carry=n
for j=#result,1,-1 do
local v=(string.byte(result,j)-48)*16+carry
local d=v%10
out=string.char(d+48)..out carry=math.floor(v/10)end
while carry>0 do
local d=carry%10
out=string.char(d+48)..out carry=math.floor(carry/10)end
result=out:gsub("^0+","")
if result==""then result="0"end end
return result end
--===================================================
function HexDec()--换算
local A=gg.prompt({"退出","输入","10→16","16→10"},{false,"",mode1,mode2},{"checkbox","number","checkbox","checkbox"})
if not A then return end
mode1=A[3]
mode2=A[4]
----------------------------
local function E(s,t)
if not s or s==""then return end
local out={}
for v in s:gmatch("[^,%s;]+")do
local r
if t==16 then r=DecToHex(v)else r=HexToDec(v)end
out[#out+1]=r end
local c=table.concat(out,"\n")--复制结果用换行区分
local draw=table.concat(out,";")--绘制结果用;区分
if c==""then return end
gg.copyText(c)print(c)gg.toast(c)--复制结果并提示
history[#history+1]=s.."→"..draw--用→表示转换
view:invalidate()end
if A[3]then E(A[2],16)elseif A[4]then E(A[2],10)end
if A[1]then view:close()os.exit()end end
while true do
if gg.isVisible(true)then gg.setVisible(false)HexDec()end gg.sleep(300)end--https://github.com/Lua39683512