mode1=false mode2=false--复选项保存
disDrawAcc()--绘制
local view=newView()
local paint=newPaint()
paint:setColor("#2EFFA4")--文本颜色
paint:setTextSize(25)--文本大小
local bg=newPaint()
bg:setColor("#AA000000")--背景颜色
local history={}
function onDraw(canvas)
if #history==0 then return end
local W=getWH()["width"]--适应不同分辨率
local scale=W/1080
local x=0*scale
local y=40*scale
local w=450*scale
local line=20*scale--行间距
canvas:drawRect({x,y,x+w,y+line*(#history+1)+20*scale},bg)
paint:setTextSize(20*scale)
canvas:drawText("进制转换记录",x+15*scale,y+30*scale,paint)
for i,v in ipairs(history)do
canvas:drawText(v,x+15*scale,y+30*scale+i*line,paint)end end
view:show(onDraw,1)--每秒刷新1次
function HexDec()--换算部分
local A=gg.prompt({"退出","输入","10→16","16→10"},{false,"",mode1,mode2},{"checkbox","number","checkbox","checkbox"})
if not A then return end
mode1=A[3]mode2=A[4]--保存3和4
local function E(s,t)
if s==""then return end
local out={}
for v in s:gmatch("[^,%s;]+")do--支持标点符号
out[#out+1]=t==16 and string.format("0x%X",tonumber(v))or tonumber(v,16)end
local r=table.concat(out,"\n")
gg.copyText(r)print(r)gg.toast(r)--提示
r=tostring(r):gsub("%s+",";")--绘制时把空格转化为;
history[#history+1]=s.."→"..r
view:invalidate()end
if A[3]then E(A[2],16)elseif A[4]then E(A[2],10)end--16进制和10进制转换
if A[1]then view:close()os.exit()end end
while true do--循环
if gg.isVisible(true)then gg.setVisible(false)HexDec()end gg.sleep(300)end--https://github.com/Lua39683512