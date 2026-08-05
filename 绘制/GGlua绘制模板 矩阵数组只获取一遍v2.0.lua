--[[
青Basil666
官方群聊:897380426]]

CanShuM = 2.1 --方框大小
JuZhen = {"libunity.so",{0x71940, 0x70, 0xC0, 0x0, 0x2E4}} --矩阵
ShuZu = {"libil2cpp.so", {0x584e80, 0xB8, 0x20, 0x28, 0x18, 0x28}} --数组
prompt = {50,0} --方框位置调整
OFFON = false --显示调整方框选项
FPS = 40 --绘制帧率[过高可能会导致卡顿]
Basil = { --敌人结构体
0x30C, --X
0x310, --Z
0x314, --Y
0x1D0, 0x28, 0x48  --血量
}

disDrawAcc()
HuaBi,HuaBi2,HuaBi3,AA,FPS1,FPS2 = newPaint(),newPaint(),newPaint(),getWH(),{0,0},{0,0}
X,Y = AA.width,AA.height
X2,Y2 = X/2.0,Y/2.0
X3,Y3 = X/10,Y/10
HuaBi:setColor("#FFFF6B6B")
HuaBi:setWidth(4)
HuaBi:setStyle(0)
HuaBi2:setColor("#FFFF6B6B")
HuaBi2:setWidth(25)
HuaBi2:setStyle(1)
HuaBi3:setColor("#FFFF6B6B")
HuaBi3:setWidth(4)
HuaBi3:setStyle(1)
HuaBi3:setTextSize(60*math.min((X > Y and Y or X) / 1440.01, (Y < X and X or Y) / 720.01))
pcall(function()
	local AA = 0
	newView():show(function(canvas)
		local a = HuiZhiShuJu
		canvas:save()
		if a then
			for i, v in pairs(a) do
				i = (v[4] < 0) and v[2]*-1 or v[2]
				canvas:drawRect({v[1],i,v[1]+v[3],i+v[4]},HuaBi)
				canvas:drawRect({v[1]+v[3]+(v[3]/6),i+v[4],v[1]+v[3],i-(v[4]/7)},HuaBi)
				canvas:drawRect({v[1]+v[3]+(v[3]/6),i+v[4],v[1]+v[3],(i+v[4])-((((i+v[4])-(i-(v[4]/7)))/100)*((v[6] < 0) and 0 or v[6]))},HuaBi3)
				canvas:drawRect({v[1]+v[3],i-(v[4]/7),v[1],i},HuaBi)
				HuaBi2:setTextSize(v[3]/5)
				canvas:drawText("距离:"..math.ceil(v[5]),v[1]+(v[3]/20),i-(v[4]/22),HuaBi2)
				canvas:drawLine(X/2,10,v[1]+(v[3]/2),i-(v[4]/7),HuaBi)
			end
		end
		canvas:drawText("FPS1:"..FPS1[1].."  FPS2:"..FPS2[1].."  数量:"..(a and #a or 0),X3,Y3,HuaBi3)
		canvas:restore()
		local a = os.clock()
		AA = AA + 1
		if a > FPS1[2] then
			FPS1 = {AA,a + 1}
			AA = 0
		end
	end,FPS)
end)

function readPointer(name, offset)
	local addr = gg.getRangesList(name)[1].start + offset[1]
	for i = 2, #offset do
		addr = gg.getValues({{address = addr, flags = 4}})
		addr = addr[1].value + offset[i] & 0xFFFFFFFF
	end
	return addr
end

if OFFON then
	gg.showUiButton()
end
AB,AC = readPointer(JuZhen[1],JuZhen[2]),readPointer(ShuZu[1],ShuZu[2])
while true do
	pcall(function()
		local AA = 0
		while true do
			if gg.isClickedUiButton() then
				alert = gg.prompt({"X[-400;400]","Y[-400;400]"},prompt,{"number","number"})
				if alert then
					prompt = alert
				end
			end
			local b,HuanCun = {},{}
			JuZhenShuJu = gg.getValues({{address = AB+4, flags = 16},{address = AB+8, flags = 16},{address = AB+12, flags = 16},{address = AB+16, flags = 16},{address = AB+20, flags = 16},{address = AB+24, flags = 16},{address = AB+28, flags = 16},{address = AB+32, flags = 16},{address = AB+36, flags = 16},{address = AB+40, flags = 16},{address = AB+44, flags = 16},{address = AB+48, flags = 16},{address = AB+52, flags = 16},{address = AB+56, flags = 16},{address = AB+60, flags = 16},{address = AB+64, flags = 16},{address = AC+12, flags = 4}})
			for i=1, JuZhenShuJu[17].value-1 do
				b[#b+1] = {address = AC+12+(4*i), flags = 4}
			end
			for i, v in pairs(gg.getValues(b)) do
				a = v.value & 0xFFFFFFFF
				a = gg.getValues({{address = a+Basil[1], flags = 16},{address = a+Basil[2], flags = 16},{address = a+Basil[3], flags = 16},{address = a+Basil[4], flags = 4}})
				JuLi = JuZhenShuJu[4].value * a[1].value + JuZhenShuJu[8].value * a[2].value + JuZhenShuJu[12].value * a[3].value + JuZhenShuJu[16].value --相机Z, 距离 算法
				ShiJiaoX = X2 + (JuZhenShuJu[1].value * a[1].value + JuZhenShuJu[5].value *a[2].value+ JuZhenShuJu[9].value * a[3].value + JuZhenShuJu[13].value) / JuLi * X2  --视角高
				ShiJiaoY = Y2 -  (JuZhenShuJu[2].value * a[1].value + JuZhenShuJu[6].value * (a[2].value-0.3) + JuZhenShuJu[10].value * a[3].value + JuZhenShuJu[14].value) / JuLi * Y2 --视角宽
				ShiJiaoW = Y2 - (JuZhenShuJu[2].value * a[1].value + JuZhenShuJu[6].value * (a[2].value + CanShuM) + JuZhenShuJu[10].value * a[3].value + JuZhenShuJu[14].value) / JuLi * Y2
				HuanCun[#HuanCun+1] = {(ShiJiaoX - (ShiJiaoY - ShiJiaoW) / 4) + prompt[1], ((ShiJiaoY) - (ShiJiaoY- ShiJiaoW) / 1.89) + prompt[2], (ShiJiaoY- ShiJiaoW) / 2, (ShiJiaoY- ShiJiaoW),JuLi,a[4].value}
			end
			HuiZhiShuJu = HuanCun
			local a = os.clock()
			AA = AA + 1
			if a > FPS2[2] then
				FPS2 = {AA,a + 1}
				AA = 0
			end
		end
	end)
	gg.sleep(500)
end