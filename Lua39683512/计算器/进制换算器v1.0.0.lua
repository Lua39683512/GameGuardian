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
local x=20*scale
local y=20*scale
local w=400*scale
local line=35*scale
canvas:drawRect({x,y,x+w,y+line*(#history+1)+20*scale},bg)
paint:setTextSize(25*scale)
canvas:drawText("进制转换记录",x+15*scale,y+30*scale,paint)
for i,v in ipairs(history)do
canvas:drawText(v,x+15*scale,y+30*scale+i*line,paint)end
end
view:show(onDraw,20)
function HexDec()--换算部分
local A=gg.prompt({"换算完成后退出脚本","10进制","16进制"},{false,"",""},{"checkbox","number","number"})
if not A then return end
local function E(s,t)
if s==""then return end
local out={}
for v in s:gmatch("[^;]+")do--支持标点符号
out[#out+1]=t==16 and string.format("0x%X",tonumber(v))or tonumber(v,16)end
local r=table.concat(out,"\n")
gg.copyText(r)--提示
print(r)
gg.toast(r)
r=tostring(r):gsub("%s+",";")--绘制时把空格转化为;
history[#history+1]=s.."→"..r
view:invalidate()end
E(A[2],16)E(A[3],10)--第二个输入框的转化为16进制,第三个输入框转化为10进制
if A[1]then view:close()os.exit()end
end
while true do--循环
if gg.isVisible(true)then gg.setVisible(false)HexDec()end
gg.sleep(300)end--https://github.com/Lua39683512