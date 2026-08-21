gg.toast("正在加载脚本……")

function Voice(Rain)
gg.playMusic('https://fanyi.baidu.com/gettts?lan=zh&text='..Rain..'&spd=5&source=wise')
end
Voice('正在加载脚本')

local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub('%lua$', '')..'cfg'
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()

---搜索歌曲
function start(name,sl)
gg.toast("开始搜索音乐："..name,true)
Voice("开始搜索音乐："..name,true)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end

---歌词查看
function Lyric(gid)
gg.toast("歌词加载已完成")
Voice("开始加载歌词")
geci=gg.makeRequest("http://music.163.com/api/song/media?id="..gid).content
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%]", "")
geci=zjson(geci)
return geci.lyric
end

---播放音乐
function play(id,name)
gg.toast("开始播放音乐："..name,true)
Voice("开始播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end

---下载音乐
function downloadFile(id,name)
gg.toast("开始下载："..name,true)
gg.downloadFile("http://music.163.com/song/media/outer/url?id="..id..".mp3")
for i=1,1 do
gg.toast("已成功下载音乐："..name,true)
Voice("已成功下载音乐："..name,true)
end
end

---停止播放
function stop()
gg.toast("正在请求停止播放")
Voice("已停止")
for i=1,1000 do
gg.playMusic("stop")
gg.toast("播放已停止")
end
end

---交流学习
function addView()
gg.toast("欢迎加入LUA学习交流群：892906904")
Voice("欢迎加入LUA学习交流群：892906904")
gg.addView("欢迎加入LUA学习交流群：892906904","red",0,0,10000)
end

function Play(gqlb,idb)
gg.toast("已进入歌曲列表")
Voice("已进入歌曲列表")
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放音乐","下载音乐","查看歌词"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
if sn == 2 then
downloadFile(idb[SN],gqlb[SN])
end
if sn == 3 then
gc=Lyric(idb[SN])
gg.alert(gc)
end
end
XGCK=-1
end

function zjson(jsonr)
local str = jsonr
---匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
if string.find(str, v) then
str = string.gsub(str, v, string.gsub(v, "\"", ""))
end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
---print(idb)
end


---主页
function Main()
XW=gg.choice({
"搜索歌曲",
"歌曲列表",
"播放音乐",
"下载音乐",
"查看歌词",
"停止播放",
"交流学习",
"退出脚本"
},nil,"当前版本：2.2版本，仅供交流学习\n\n下载存放： /storage/emulated/0/")
if XW == nil then end
if XW == 1 then Main1() end
if XW == 2 then Play(gqlb,idb) end
if XW == 3 then play(idb[SN],gqlb[SN]) end
if XW == 4 then downloadFile(idb[SN],gqlb[SN]) end
if XW == 5 then
if idb[1]=="1010" then gg.alert("请先搜索歌曲")else
 gc=Lyric(idb[SN]);gg.alert(gc) end end
if XW == 6 then stop() end
if XW == 7 then addView() end
if XW == 8 then exit() end
XGCK=-1
end

function Main1()
search = gg.prompt({
"输入要搜索的歌曲",
"设置显示数量(数字)",
},g.sel,{
"text",
"text",
})
if search == nil then Main() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
---print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end

function exit()
Voice("已成功退出脚本")
gg.toast(os.date"已成功退出脚本……\n当前时间：%Y年%m月%d日%H时%M分%S秒")
os.exit()
end

while true do
if gg.isVisible(true)
then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end