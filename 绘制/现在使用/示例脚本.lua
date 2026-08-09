--强制禁用Android12以上的绘制申请无障碍权限
disDrawAcc()

--创建画笔0
local paint = newPaint()
--画笔红色
paint:setColor("#FF0000")
--画笔笔触宽度5像素
paint:setWidth(5)
paint:setStyle("描边")
paint:setAntiAlias(true)
--创建画笔1
local paint1 = newPaint()
--画笔红色
paint1:setColor("#FF0000")
paint1:setTextSize(60)
paint1:setStyle("填充")

--创建绘制载体视图
local view = newView()

y = 0
width = getWH()["width"]
fps=0
temp=50
startTime = os.clock()

--绘制进度条的方法
function drawProgress(canvas, x, y, progress)
    canvas:drawRect({x, y, x+250, y+60}, paint)
    canvas:drawRect({x, y, x + 250.0 * progress, y+60}, paint1)
end

--绘制方法，画布函数需要写在这里面
function onDraw(canvas)
--移动画布原点
canvas:drawLine(width/2, 0, 200, 100+y, paint)
canvas:drawLine(width/2, 0, 500, 100+y, paint)
canvas:drawLine(width/2, 0, 800, 100+y, paint)

--计算出放大缩小的圆的半径
if (temp > 150) then
    temp=30
else
    temp=temp+0.5
end

--绘制帧率
canvas:drawText("FPS: "..math.ceil(fps / (os.clock()-startTime)), width/3, 300, paint1)
--绘制当前时间
canvas:drawText("当前时间: "..os.date("%Y-%m-%d %H:%M:%S"), 100, 500, paint1)
--移动画布原点
canvas:translate(200, y)
--画圆
canvas:drawCircle(0, 100, temp, paint)

canvas:save()
--旋转画布
canvas:rotate(y, 300, 100)
--画圆弧
canvas:drawArc({100, 100, 500, 500}, 45, 90, true, paint1)
--画矩形
canvas:drawRect({200, 0, 400, 200}, paint)
canvas:restore()
--计算进度条进度值
progress = temp / 1.3
if progress > 100 then
    progress = 100
end
--画进度条
drawProgress(canvas, 480, 80, progress / 100)

y = y+1
fps = fps+1
end

--以24帧刷新率显示绘制
view:show(onDraw,24)
gg.sleep(10000)
view:close()
print("FPS:"..math.ceil(fps / (os.clock()-startTime)))