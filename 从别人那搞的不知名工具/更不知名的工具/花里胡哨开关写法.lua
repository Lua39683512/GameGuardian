

local Choice = gg.choice
local Toast = gg.toast
local bx = gg.isVisible
local SetVisible = gg.setVisible
local Sleep = gg.sleep

local Toggle = 1  --标识符
local On = "[开启]" 
local Off = "[关闭]"


local SwitchA = On   --开关的起始为开，代表点击即开启功能
local SwitchB = On
local SwitchC = On
local SwitchD = On
local SwitchE = On
local SwitchF = On
local SwitchG = On
local SwitchH = On

if bx(true) then
SetVisible(false)
end



gg.toast("семнадца.❤")
function ToggleMenu()--开关菜单
Menu = Choice({
"功能1 "..SwitchA,--功能1，switchA为开关
"功能2 "..SwitchB,
"功能3 "..SwitchC,
"功能4 "..SwitchD,
"功能5 "..SwitchE,
"功能6 "..SwitchF,
"功能7 "..SwitchG,
"功能8 "..SwitchH,
"退出9[семнадца.❤]"
}, nil, "семнадца. 原创开关模板")
if Menu == 1 then
Hack = "A"
if SwitchA == On then
SwitchA = Off
HackFunction(true)--HackFunction方法，为true才能使用方法。
else
SwitchA = On
HackFunction(false)
end

elseif Menu == 2 then
Hack = "B"
if SwitchB == On then
SwitchB = Off
HackFunction(true)
else
SwitchB = On
HackFunction(false)
end

elseif Menu == 3 then
Hack = "C"
if SwitchC == On then
SwitchC = Off
HackFunction(true)
else
SwitchC = On
HackFunction(false)
end

elseif Menu == 4 then
Hack = "D"
if SwitchD == On then
SwitchD = Off
HackFunction(true)
else
SwitchD = On
HackFunction(false)
end

elseif Menu == 5 then
Hack = "E"
if SwitchE == On then
SwitchE = Off
HackFunction(true)
else
SwitchE = On
HackFunction(false)
end

elseif Menu == 6 then
Hack = "F"
if SwitchF == On then
SwitchF = Off
HackFunction(true)
else
SwitchF = On
HackFunction(false)
end

elseif Menu == 7 then
Hack = "G"
if SwitchG == On then
SwitchG = Off
HackFunction(true)
else
SwitchG = On
HackFunction(false)
end

elseif Menu == 8 then
Hack = "H"
if SwitchH == On then
SwitchH = Off
HackFunction(true)
else
SwitchH = On
HackFunction(false)
end

end
if Menu == 9 then os.exit() end
Toggle =-1
end

function HackFunction(ToF)
if Hack == "A" then 
if ToF == true then 
--这里写你的开启功能代码
ToggleMenu()--主页
else
ToggleMenu()--主页
--这里写你的关闭功能代码
end

elseif Hack == "B" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "C" then
if ToF == true then
  ToggleMenu()--主页
--这里写你的开启功能代码
else
ToggleMenu()--主页
--这里写你的关闭功能代码
end

elseif Hack == "D" then
if ToF == true then
  ToggleMenu()--主页
--这里写你的开启功能代码
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "E" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "F" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "G" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "H" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

else 

end
end

--加载页面
ToggleMenu()

--GG隐藏或者可见
while true do
if bx(true) then
SetVisible(false)
Toggle = 1
end
Sleep(100)
if Toggle == 1 then
ToggleMenu()
end
end


