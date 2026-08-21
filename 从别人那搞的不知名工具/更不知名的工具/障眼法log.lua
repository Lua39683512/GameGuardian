--我是Mask 打字不易，转载保留Mask
--教程
--防解密GG，内置GG[障眼法]
--调用方法 把几把内的gg.searchNumber全部跟换为MaskMenber
--思路可能不是第一个想出来的，但是下面的东西是自己实现的
function random() 
bn={"🌝","🌚","🐶","🦄","🐮"} x=math.random local e,f,g,h,i=x(1,5),x(1,5),x(1,5),x(1,5),x(1,5) a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i] return a,b,c,d,e end
ss=random()
for u=1,9990 do
ss=ss..random()
end
function MaskMenber(nbnb)
local nbnb=ss..nbnb..ss
gg.searchNumber(nbnb)
end
--列子
MaskMenber("41F;1", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)