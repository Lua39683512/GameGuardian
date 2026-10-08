--[[
青Basil666
官方群聊:897380426]]

 --下面是获取基址的算法，可更换成你自己的
if not disDrawAcc then
    gg.alert("错误✘\n 当前修改器不支持本脚本, 请加入群聊 897380426, 从群聊里面下载专属修改器.")
    os.exit()
end
function readPointer(name, offset)
	local addr = gg.getRangesList(name)[1].start + offset[1]
	for i = 2, #offset do
		addr = gg.getValues({{address = addr, flags = 4}})
		addr = addr[1].value + offset[i] & 0xFFFFFFFF
	end
	return addr
end

--绘制数据
JuZhen = readPointer("libunity.so:bss",{0xC0D0, 0x8, 0x10, 0x2BC})+0x4 --矩阵
ShuZu = readPointer("libil2cpp.so:bss", {17528, 92, 8, 460, 0}) --数组
BaoCunShuJu = true --保存数据至保存列表
CanShuM = 2.1 --方框大小
prompt = {50,0,0,0,0} --方框位置调整
OFFON = true --显示调整方框选项
x64 = true --是否64位[false 或 true]
ShuZuShuJu = { --数组配置
false, --判断数量
0, --等于
0xC, --数量
0x10, --起始点
0x4, --间隔
false, --结构体多层跳转
	{
	
	}, --结构体多层跳转数据
}
JieGouTi = { --结构体
false, --坐标多层跳转
	{
	
	}, --坐标多层跳转
0xEC, --X
0xF0, --Z
0xF4, --Y
true, --绘制血量
false, --血量多层跳转
	{
	
	}, --血量多层跳转
0xC, --血量
4, --血量类型[F:16, D:4]
100, --满血
}

--绘制服务
disDrawAcc()
HuaBi,HuaBi2,HuaBi3,AA,FPS1,FPS2 = newPaint(),newPaint(),newPaint(),getWH(),{0,0},{0,0}
X,Y = AA.width,AA.height
X2,Y2 = X/2.0,Y/2.0
X3,Y3 = X/10,Y/10
HuaBi:setColor("#FFFF6B6B")
HuaBi:setWidth(2)
HuaBi:setStyle(0)
HuaBi2:setColor("#FFFF6B6B")
HuaBi2:setStyle(1)
HuaBi3:setColor("#FFFF6B6B")
HuaBi3:setStyle(1)
HuaBi3:setTextSize(60*math.min((X > Y and Y or X) / 1440.01, (Y < X and X or Y) / 720.01))
function AAA()
	local AA,AB = 0,0
	newView():show(function(canvas)
		if AB<60 then r=255;g=math.floor(AB*255/60);b=0
		elseif AB<120 then r=math.floor((120-AB)*255/60);g=255;b=0
		elseif AB<180 then r=0;g=255;b=math.floor((AB-120)*255/60)
		elseif AB<240 then r=0;g=math.floor((240-AB)*255/60);b=255
		elseif AB<300 then r=math.floor((AB-240)*255/60);g=0;b=255
		else r=255;g=0;b=math.floor((360-AB)*255/60)end
		HuaBi:setColor(string.format("#FF%02X%02X%02X",r,g,b))
		local a = HuiZhiShuJu
		canvas:save()
		if a then
			for i, v in pairs(a) do
				i = v[2]
				if v[3] < 1 then
					i, v[1] = Y2*-1, v[1]*-1
				end
				canvas:drawRect({v[1],i,v[1]+v[3],i+v[4]},HuaBi)
				canvas:drawLine(X/2,Y3/2,v[1]+(v[3]/2),i,HuaBi)
				if JieGouTi[6] then
					canvas:drawRect({v[1]+v[3]+(v[3]/10),i+v[4],v[1]+v[3],(i+v[4])-((((i+v[4])-i)/JieGouTi[11])*((v[6] < 0) and 0 or v[6]))},HuaBi2)
					canvas:drawRect({v[1]+v[3]+(v[3]/10),i+v[4],v[1]+v[3],i},HuaBi)
				end
			end
		end
		canvas:restore()
		canvas:drawText("绘制服务FPS:"..FPS1[1].."  更新服务FPS:"..FPS2[1].."  总数量:"..(a and #a or 0).."  矩阵:"..(JuZhen or "未获取").." 数组:"..(ShuZu or "未获取"),0,X3/2,HuaBi3)
		local a = os.clock()
		AA,AB = AA+1,AB+2
		if AB == 358 then
			AB = 0
		end
		if a > FPS1[2] then
			FPS1 = {AA,a + 1}
			AA = 0
		end
	end,25)
end

AAA()
if BaoCunShuJu then
	gg.addListItems({{address = JuZhen, flags = 16, name = "矩阵"}, {address = ShuZu, flags = 4, name = "数组"}})
end
if OFFON then
	gg.showUiButton()
end
--数据更新服务
local AA = 0
while true do
	if gg.isClickedUiButton() then
		alert = gg.prompt({"X[-400;400]","Y[-400;400]","X[-400;400]","Y[-400;400]","M[-400;400]"},prompt,{"number","number","number","number","number"})
		if alert then
			prompt = alert
		end
	end
	local b,HuanCun = {},{}
	JuZhenShuJu = {}
	for i, v in pairs(gg.getValues({{address = JuZhen, flags = 16},{address = JuZhen+4, flags = 16},{address = JuZhen+8, flags = 16},{address = JuZhen+12, flags = 16},{address = JuZhen+16, flags = 16},{address = JuZhen+20, flags = 16},{address = JuZhen+24, flags = 16},{address = JuZhen+28, flags = 16},{address = JuZhen+32, flags = 16},{address = JuZhen+36, flags = 16},{address = JuZhen+40, flags = 16},{address = JuZhen+44, flags = 16},{address = JuZhen+48, flags = 16},{address = JuZhen+52, flags = 16},{address = JuZhen+56, flags = 16},{address = JuZhen+60, flags = 16},{address = ShuZu+ShuZuShuJu[3], flags = 4}})) do
		JuZhenShuJu[#JuZhenShuJu+1] = v.value
	end
	for i=0, ShuZuShuJu[1] and ShuZuShuJu[3] or JuZhenShuJu[17]-1 do
		b[#b+1] = {address = ShuZu+ShuZuShuJu[4]+(ShuZuShuJu[5]*i), flags = x64 and 32 or 4}
	end
	for i, v in pairs(gg.getValues(b)) do
		if ShuZuShuJu[1] and v.value == ShuZuShuJu[2] then
			break
		end
		i,a,b,c = v.value & 0xFFFFFFFF,{}
		if ShuZuShuJu[6] then
			for _, v in pairs(ShuZuShuJu[7]) do
				i = gg.getValues({{address = i+v, flags = x64 and 32 or 4}})[1].value & 0xFFFFFFFF
			end
		end
		b,c = i,i
		if JieGouTi[1] then
			for _, v in pairs(JieGouTi[2]) do
				b = gg.getValues({{address = b+v, flags = x64 and 32 or 4}})[1].value & 0xFFFFFFFF
			end
		end
		if JieGouTi[7] then
			for _, v in pairs(JieGouTi[8]) do
				c = gg.getValues({{address = c+v, flags = x64 and 32 or 4}})[1].value & 0xFFFFFFFF
			end
		end
		for i, v in pairs(gg.getValues({{address = b+JieGouTi[3], flags = 16},{address = b+JieGouTi[4], flags = 16},{address = b+JieGouTi[5], flags = 16},{address = c+JieGouTi[9], flags = JieGouTi[10]}})) do
			a[#a+1] = v.value
		end
		JuLi = JuZhenShuJu[4] * a[1] + JuZhenShuJu[8] * a[2] + JuZhenShuJu[12] * a[3] + JuZhenShuJu[16] --相机Z, 距离 算法
		ShiJiaoX = X2 + (JuZhenShuJu[1] * a[1] + JuZhenShuJu[5] *a[2]+ JuZhenShuJu[9] * a[3] + JuZhenShuJu[13]) / JuLi * X2  --视角高
		ShiJiaoY = Y2 -  (JuZhenShuJu[2] * a[1] + JuZhenShuJu[6] * (a[2]-0.3) + JuZhenShuJu[10] * a[3] + JuZhenShuJu[14]) / JuLi * Y2 --视角宽
		ShiJiaoW = Y2 - (JuZhenShuJu[2] * a[1] + JuZhenShuJu[6] * (a[2] + CanShuM) + JuZhenShuJu[10] * a[3] + JuZhenShuJu[14]) / JuLi * Y2
		HuanCun[#HuanCun+1] = {(ShiJiaoX - (ShiJiaoY - ShiJiaoW) / (4+prompt[3]/100)) + prompt[1], ((ShiJiaoY) - (ShiJiaoY- ShiJiaoW) / (1.98+prompt[4]/100)) + prompt[2], (ShiJiaoY- ShiJiaoW) / 2, (ShiJiaoY- ShiJiaoW),JuLi,a[4]}
	end
	HuiZhiShuJu = HuanCun
	local a = os.clock()
	AA = AA + 1
	if a > FPS2[2] then
		FPS2 = {AA,a + 1}
		AA = 0
	end
end