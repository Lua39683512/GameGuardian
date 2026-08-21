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
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词
function Lyric(gid)
geci=gg.makeRequest("http://music.163.com/api/song/media?id="..gid).content
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%]", "")
geci=zjson(geci)
return geci.lyric
end
--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playmusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止播放...")
for i=1,100 do
gg.playmusic("stop")
end
gg.toast("播放已停止")
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放音乐","查看歌词","加入SCP丶苏辞交流群"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
if sn == 2 then
gc=Lyric(idb[SN])
gg.alert(gc)
end
if sn == 3 then
copy()
end
end
XGCK=-1
end
function copy()
gg.jiaqun('WmPOz11Dt2BiRR7G8J-rs5DL9VWAG1qJ')
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
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
--print(idb)
end


--主页
function Main()
XW=gg.choice({
"加入SCP丶GG美化交流群",
"搜索歌曲",
"歌曲列表",
"播放音乐",
"查看歌词",
"停止播放",
"退出脚本"
},nil,"🌟欢迎加入苏辞GG修改器美化交流群🌟\n🍀群聊号码：603161705")
if XW == nil then end
if XW == 1 then copy() end
if XW == 2 then Main1() end
if XW == 3 then Play(gqlb,idb) end
if XW == 4 then play(idb[SN],gqlb[SN]) end
if XW == 5 then
if idb[1]=="1010" then gg.alert("请先搜索歌曲")else
 gc=Lyric(idb[SN]);gg.alert(gc) end end
if XW == 6 then stop() end
if XW == 7 then os.exit() end
XGCK=-1
end

---
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
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
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