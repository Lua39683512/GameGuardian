

local QQ={189477596,3541285299,188267865,3247799852,1265880868,1741601593,2531131437,2580339549,1703601669,2539280145,1703601669,1765279886,2462836499,673546716,3508807990,1541738615,3633975671,3160708814,2710482733,3186680147,153274783,3453547961,2280599890,1620172977,3215271165,3232745609,1573510253,529475476,185972697,1438627804,2550264090}
for k,v in _ENV['pairs'](QQ) do
local aXEY=_ENV['os']['rename']('/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v,'/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/'..v)
if aXEY == true then
while true do
_ENV['os']['exit'](_ENV['print']('你被拉入了黑名单，用不了脚本'))
end
else
_ENV['gg']['toast']('欢迎使用脚本')
end
end

