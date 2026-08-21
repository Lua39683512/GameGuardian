
function Y()
local Q=gg.makeRequest("http://xkzzz.com/post/17059.html").content
local Q=Q:match('</strong></p><p>(.+)</p><p><br/></p><a')
local Q=Q:gsub('</p><p>','\n')
local Y=math.random(1,10)
local Q=Q:match(Y..'、(.-)》')
local Q=Q:gsub("____","\n\n——")
return Q
end

function T()
local Y=gg.makeRequest("https://v1.hitokoto.cn/").content
local Q=string.match(Y,'hitokoto(.+)type')
local F=string.gsub(Q,'":"',"")
local KY=string.gsub(F,'","',"")
return KY
end

function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end 

function SQ()
lsq = gg.multiChoice({
"仙[超凡脱俗]",
"凡[五彩斑斓]"
}, nil,"❤本脚本不接受log测试❤\n"..os.date("❤当前时间:%Y年-%m月-%d日-星期%w❤\n❤北京时间为:%H时-%M分-%S秒❤\n\n").."❤"..Y().."》❤\n\n".."今日随机一言:\n".."❤"..T().."❤")

if lsq == nil then 
print("您未做出任何选择")
os.exit()
else
if lsq[1] == true then 
a() 
end
if lsq[2] == true then
QQ() 
end
end 
LSQ = -1 
end

function a()
readWrite({{false,125,92,4,nil,nil},{125,96,4},{49,228,4}},{{false,0,4,false},{false,4,4,false},{false,8,4,false}},4,4,"小鹿鹿")
readWrite({{false,65792,0,4,nil,nil},{5,180,4},{6,204,4},{5,252,4}},{{false,144,4,false},{false,148,4,false},{false,152,4,false}},4,4,"大鹿鹿")
end

function QQ()
print("需要加密请进入群聊找我:796546632")
os.exit()
end

while true do
  if gg.isVisible(true) then
    LSQ = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if LSQ == 1 then
    SQ()
  end
end