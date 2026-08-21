Q=gg.makeRequest("http://xkzzz.com/post/17059.html").content
Q=Q:match('</strong></p><p>(.+)</p><p><br/></p><a')
Q=Q:gsub('</p><p>','\n')
Y=math.random(1,10)
Q=Q:match(Y..'、(.-)》')
Q=Q:gsub("____","\n\n——")
print("❤"..Q.."》❤")