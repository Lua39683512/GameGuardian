----原创TC，开源是为了学习交流，转载使用请留名
print("By TC\n欢迎加入交流群688725576")
F=gg.alert("一日无书，百事荒废。","我的书架",nil,"搜书")
bookshelf_file="/storage/emulated/0/Android/TC_bookshelf_file"
if F==1 then goto SJ end
if F==3 then goto SS end
-------------书架模块------------
::SJ::
b,ID={},{}
file=io.open(bookshelf_file)
if file~=nil then
  p=file:read("*a")
  for x,y in p:gmatch("&(.-)@(.-)&") do
    table.insert(b,x)
    table.insert(ID,y)
  end
end
table.insert(b,"点此去添加小说")
xz=gg.choice(b,999,"")
if xz~=nil then
  if xz==#b then goto SS
   else bookID=ID[xz] goto ML end
 else os.exit()
end
---------------搜索模块-----------
::SS::
 search=gg.prompt({"输入想要搜索的小说"},{""},{"text"})
if search==nil then os.exit() end
gg.toast("正在加载小说列表，请等待...")
a=gg.makeRequest("https://sou.xanbhx.com/search?siteid=qula&q="..search[1],{["Content-type"]="application/x-www-form-urlencoded"}).content
wb={}
for w in a:gmatch("<a href=\"(.-)</a>") do
  table.insert(wb,w)
end
--获取小说名称,目录网址
function T(str,hq,b)z=str:match(hq)if z then table.insert(b,z) end end
 title,address,ID={},{},{}
for i=1,#wb do
  T(wb[i],"<p class=\"title\">\r%s+(.-)%s+</p>",title)
  T(wb[i],"(.-)\">",address)
end

--获取ID
for i=1,#title do
  table.insert(ID,address[i]:match("book/(.-)/"))
end
table.insert(title,"退出")
---------------简介模块----------
::JJ::
L=gg.choice(title,2019,"选择小说，查看简介")
if L==#title then os.exit() end
gg.toast("正在加载小说简介，请等待...")
ml=gg.makeRequest(address[L],{["Content-type"]="application/x-www-form-urlencoded"}).content:match("<p class=\"author\">(.-)最新章节")
 author=ml:match("作者：(.-)<")
 typ=ml:match("类别：(.-)\n")
 condition=ml:match("状态：(.-)\n")
 date=ml:match("更新：(.-)\n")
 latest_chapter=ml:match("最新：.->(.-)<")
 intro=ml:match("</span>\n(.-)<")
P=gg.alert("Tips:点击空白处可返回小说列表\n◎小说名称:"..title[L].."\n◎小说类型:"..typ.."\n◎最新章节:"..latest_chapter.."\n◎更新日期:"..date.."\n◎作者:"..author.."\n◎当前状态:"..condition.."\n◎小说简介:\n"..intro,"查看目录","添加书架","从书架中删除")
if P==0 then goto JJ end
if P==1 then bookID=ID[L] end
if P==2 then io.open(bookshelf_file,"a"):write("&"..title[L].."@"..ID[L].."&"):close() bookID=ID[L] end
if P==3 then io.open(bookshelf_file,"w"):write(p:gsub("&"..title[L].."@"..ID[L].."&","")):close() goto SJ end


--------------目录模块-----------
::ML::
gg.toast("正在加载目录，请等待...")
list=gg.makeRequest("https://m.qu.la/booklist/"..bookID..".html",{["Content-type"]="application/x-www-form-urlencoded"}).content
m={} n={}--加载网址,目录
for x,y in list:gmatch("</p> <p>.-href=\"(.-)\">(.-)<") do
  x=x:gsub("%.html","")
  table.insert(m,x)
  table.insert(n,y)
end

---------------阅读模块----------
::YD::
M=gg.choice(n,99999,"选择章节")
if M==nil then os.exit() end
::Read::
book1=gg.makeRequest("https://m.qu.la/"..m[M]..".html").content
book2=gg.makeRequest("https://m.qu.la/"..m[M].."_2.html").content:match("『章节错误,点此举报』</a>\n</p>\n(.-)\n</br>")
if book2==nil then
  content=book1:match("『章节错误,点此举报』</a>\n</p>\n(.-)\n</br>"):gsub("&nbsp;"," "):gsub("<br />","\n")
 else
  content=book1:match("『章节错误,点此举报』</a>\n</p>\n(.-)\n<span style="):gsub("&nbsp;"," "):gsub("<br />","\n")..book2:gsub("&nbsp;"," "):gsub("<br />","\n")
end
--print(content)
if M==1 then
  W=gg.alert("当前章节:"..n[M].."\n\n"..content,"下一章",nil,"返回目录")
 else
  W=gg.alert("当前章节:"..n[M].."\n\n"..content,"下一章","上一章","返回目录") end
if W==1 then M=M+1 goto Read end
if W==2 then M=M-1 goto Read end
if W==3 then goto YD end
