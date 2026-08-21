--2022.2.17.晚上9点开始制作未完成
--2022.2.18.完善完成开源分享
--二改请留原创作者By小鳄鱼
_ENV['gg']['alert']("By小鳄鱼:\nBy小鳄鱼验证工具合集1.0\n由2022.2.18.完善完成开源免费分享\n二改请标明作者By小鳄鱼\n如有问题欢迎反馈bug\n反馈群:347917124","")

XEY=_ENV['gg']['makeRequest']('http://www.beijing-time.com/').content
if XEY==nil then
_ENV["os"]["exit"](_ENV["print"]("By小鳄鱼:请允许获取网络权限！"))
end

XEY1=_ENV['string']['match'](XEY,'<span id="bjtime">(.-)</span>')--网络时间

ByXEY=_ENV['gg']['prompt']({
[1]="By小鳄鱼:选择添加验证脚本",
},{
[1]=_ENV['gg']['getFile']():gsub('/[^/]+$',''),
},{
[1]='file',
})
if ByXEY==nil then
_ENV["os"]["exit"](_ENV["print"]("By小鳄鱼:已退出"))
end

local YC=ByXEY[1]:gsub("(.-)/","")--获取脚本名

XEY2=ByXEY[1]..".lua"

XEY2= _ENV['string']['match'](XEY2, '[^%.]+') .. "(XEY).lua"

_ENV['io']['open'](XEY2,"w"):write("--By小鳄鱼\n")

ByXEY1=_ENV['gg']['prompt']({
[1]='By小鳄鱼：当前选择的脚本',
[2]='By小鳄鱼：是否添加修改器验证',
[3]='By小鳄鱼：当前修改器版本',
[4]='By小鳄鱼：当前修改器包名',
[5]='By小鳄鱼：当前修改器版本号',
[6]='By小鳄鱼：当前其他修改器提示',
[7]='By小鳄鱼：是否添加脚本名字验证',
[8]='By小鳄鱼：当前脚本名字',
[9]='By小鳄鱼：是否添加QQ白名单验证',
[10]='By小鳄鱼：输入QQ号/英文,逗号分开',
[11]='By小鳄鱼：是否添加QQ黑名单验证',
[12]='By小鳄鱼：输入QQ号英文,逗号分开',
[13]='By小鳄鱼：是否添加使用时间验证',
[14]='By小鳄鱼：输入限制到时间',
[15]='By小鳄鱼：是否添加密码验证',
[16]='By小鳄鱼：请设置密码可/中文/符号/表情',
[17]='By小鳄鱼：是否添加进程限制',
[18]='By小鳄鱼：当前应用进程',
},{
[1]=ByXEY[1],
[2]=nil,
[3]=_ENV['gg']['VERSION'],--修改器版本验证
[4]=_ENV['gg']['PACKAGE'],--修改器包名验证
[5]=_ENV['gg']['BUILD'],--修改器版本号验证
[6]='请使用专属修改器执行',
[7]=nil,
[8]=YC,--脚本名验证
[9]=nil,
[10]="1255203100,1578989908",--QQ白名单
[11]=nil,
[12]="1255203100,1578989908",--QQ黑名单
[13]=nil,
[14]=XEY1,
[15]=nil,
[16]="123",
[17]=nil,
[18]=_ENV["gg"]["getTargetPackage"](),
},{
[1]='file',
[2]='checkbox',
[3]='text',
[4]='text',
[5]='text',
[6]='text',
[7]='checkbox',
[8]='text',
[9]='checkbox',
[10]='text',
[11]='checkbox',
[12]='text',
[13]='checkbox',
[14]='text',
[15]='checkbox',
[16]='text',
[17]='checkbox',
[18]='text',
})

if ByXEY1==nil then
_ENV['os']['remove'](XEY2:match("[^/]+$"))
_ENV["os"]["exit"](_ENV["print"]("By小鳄鱼:已退出"))
end

if ByXEY1[2]==true then--修改器验证
ByXEY3="\nif _ENV['gg']['VERSION']== '"..ByXEY1[3].."' then\nelse\n_ENV['print']('"..ByXEY1[6].."')\nwhile true do\n_ENV['os']['exit']()\nend end \n if _ENV['gg']['BUILD']=='"..ByXEY1[5].."' then\n else\n_ENV['print']('"..ByXEY1[6].."')\n_ENV['os']['exit']()\nwhile true do \nend end \nif _ENV['gg']['PACKAGE']=='"..ByXEY1[4].."' then\n else\n_ENV['print']('"..ByXEY1[6].."')\n_ENV['os']['exit']() \nwhile true do \nend \nend\n"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[7]==true then--脚本名字验证
ByXEY3="\nXEY=_ENV['gg']['getFile']():match('[^/]*$')\nif XEY~='"..ByXEY1[8].."' then\nwhile true do\n_ENV['os']['exit'](_ENV['print']('请匆更改脚本名原脚本名:"..ByXEY1[8].."'))\nend \nend\n"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[9]==true then--QQ白名单验证
ByXEY3="\nlocal QQ={"..ByXEY1[10].."}\nfor k,v in _ENV['pairs'](QQ) do\nlocal aXEY=_ENV['os']['rename']('/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v,'/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v)\nif aXEY == true then\n_ENV['gg']['toast']('验证成功')\nelse\nwhile true do\n_ENV['os']['exit'](_ENV['print']('非内部人员'))\nend\nend\nend"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[11]==true then--QQ黑名单验证
ByXEY3="\nlocal QQ={"..ByXEY1[12].."}\nfor k,v in _ENV['pairs'](QQ) do\nlocal aXEY=_ENV['os']['rename']('/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v,'/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v)\nif aXEY == true then\nwhile true do\n_ENV['os']['exit'](_ENV['print']('黑名单人员'))\nend\nelse\n_ENV['gg']['toast']('验证成功')\nend\nend"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[13]==true then--限制时间验证
ByXEY3=[[
XEY1=nil 
XEY2=nil
XEY=_ENV['gg']['makeRequest']('http://www.beijing-time.com/').content
XEY1=_ENV['string']['match'](XEY,'<span id="bjtime">(.-)</span>')
XEY2='替换专用'
if XEY1 >=XEY2 then
while true do
_ENV['os']['exit'](_ENV['print']('脚本已过期！'))
end
end
]]
ByXEY3=_ENV['string']['gsub'](ByXEY3,"替换专用",ByXEY1[14])
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[15]==true then--密码验证
ByXEY3="\nlocal ByXEYNB = _ENV['gg']['prompt']({[1]='请输入密码'},{[1]=''},{[1]='text'}) \nif ByXEYNB==nil then \n_ENV['os']['exit'](_ENV['print']('已退出'))\nend\nif ByXEYNB[1]=='"..ByXEY1[16].."' then \n_ENV['gg']['toast']('密码正确')\nelse\nwhile true do\n_ENV['os']['exit'](_ENV['print']('密码不正确'))\nend\nend\n"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

if ByXEY1[17]==true then--进程验证
ByXEY3="XEY1=_ENV['gg']['getTargetPackage']()\nif XEY1~='"..ByXEY1[18].."'then\nwhile true do\n_ENV['os']['exit'](_ENV['print']('该进程非指定应用'))\nend\nend\n"
ByXEY2=_ENV['io']['open'](XEY2,"r"):read("*a")
_ENV['io']['open'](XEY2,"w"):write(ByXEY3..ByXEY2)
end

ByXEY2=_ENV['io']['open'](ByXEY[1],"r"):read("*a")

XEY2=_ENV['io']['open'](XEY2,"r"):read("*a")

_ENV['io']['open'](ByXEY[1],"w"):write(XEY2..ByXEY2)

XEY2=ByXEY[1]..".lua"

XEY2= _ENV['string']['match'](XEY2, '[^%.]+') .. "(XEY).lua"

_ENV['os']['remove'](XEY2:match("[^/]+$"))

_ENV['print']("By小鳄鱼:验证写入成功")

--[[
By小鳄鱼收徒教学：QQ：1578989908
删除不留版权死双亲！删除不留版权死双亲！
By小鳄鱼：
1群：590854164
2群：347917124
3群：832833879
]]

