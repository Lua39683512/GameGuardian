A=gg.prompt({
'请输入蓝奏云链接'
},{
"https://lsqnb.lanzoui.com/iouUsj5phfg"
},{
"text"
})

if not A then
   return print('你选择了取消')
end
   B=gg.makeRequest(A[1]).content
   local Y = {}
   Y["Accept-Language"]="zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7"
   Y["Cookie"]="UM_distinctid=1747043cd08217-0d948f1d4d5f25-527a460b-43ad0-1747043cd0abf; CNZZDATA1258381272=818363134-1599609873-https%253A%252F%252Fm.baidu.com%252F%7C1599609873; down_ip=1; CNZZDATA1253610887=1315526113-1606037814-https%253A%252F%252Fm.baidu.com%252F%7C1606037814"
   T=string.gsub(A[1],"com/","com/tp/")
   Q=gg.makeRequest("https://vip.d0.baidupan.com/file/"..gg.makeRequest(T).content:match("domianload [+]+ '?(.-)'"),Y).content
   C=B:match("<title>(.-)蓝奏云网盘</title>")--文件名称
   O=C:match("^(.-) - ")
   D=B:match('"mtt">%((.-) %)</span></div>')--文件大小
   E=B:match('>分享者:</span>(.-)<span class')--分享者
   F=B:match('"mt2"></span>(.-) <span class="mt2">')--分享时间
   P=gg.alert("文件名称为:"..C.."\n文件大小为:"..D.."\n分享者为:"..E.."\n分享时间为:"..F,"下载","退出查看")
if P==1 then
   io.open(O,"w"):write(Q)
   print("文件名称为:"..C.."\n文件大小为:"..D.."\n分享者为:"..E.."\n分享时间为:"..F)
else
   print("文件名称为:"..C.."\n文件大小为:"..D.."\n分享者为:"..E.."\n分享时间为:"..F)
end