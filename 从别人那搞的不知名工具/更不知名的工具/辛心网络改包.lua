XX={}
XXJL={}
XX.makeRequest=gg.makeRequest
gg.makeRequest=function(a,b,c)
file=io.open(gg.getFile().."自动回复.cfg","r")
if file==nil then file=io.open(gg.getFile().."自动回复.cfg","w")
file:close()
end
dofile(gg.getFile().."自动回复.cfg")
for i,v in pairs(XXJL) do
if i==a then return v end
end
local XXNB={}
XXNB.HF=XX.makeRequest(a,b,c)
XXNB.aa={}
XXNB.bb={}
XXNB.cc={}
for k,v in pairs(XXNB.HF) do
XXNB.aa[k]=k
XXNB.bb[k]=v
XXNB.cc[k]="text"
end
XXNB.aa[1]="是否开启该链接自动回复"
XXNB.bb[1]=false
XXNB.cc[1]="checkbox"
XXNB.GB=gg.prompt(XXNB.aa,XXNB.bb,XXNB.cc)
if XXNB.GB[1]==true then
XXNB.GB.headers=nil
XXJL[a]=XXNB.GB
XXLSS="{"..tostring(XXJL):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub(tostring(string.char(92)),'')
XXLSS=XXLSS:gsub('-- ','')
XXLSS=XXLSS:gsub('\n',' ')
XXLSS=XXLSS:gsub('	','')
gg.toast("自动回复将会记录在"..gg.getFile().."自动回复.cfg")
io.open(gg.getFile().."自动回复.cfg","w"):write("XXJL="..XXLSS):close()
XXLSS=nil
end
return XXNB.GB
end
gg.alert("辛心网络改包已开启")

--以上代码可以放到拦截器前面达到改包的效果
--会用的就用 不会用的我也没办法！
