

function Main0()
 SN = gg.choice({"获取网易云歌词",},2020, "")
  if SN == 1 then
   a=gg.prompt({"测试获取歌词"},{"http://music.163.com/api/song/media?id=1459023707"},{"text"})
b=a[1]
c=b:match("=(.-)$")
QAQ=gg.makeRequest("http://music.163.com/api/song/media?id="..c).content
QAQ = string.gsub(QAQ, "%[%d%d%p%d%d%p%d%d%d%]", "\n\n")
QAQ = string.gsub(QAQ, "%[%d%d%p%d%d%p%d%d%]", "\n\n")
QAQ = string.gsub(QAQ, "%[%d%d%p%d%d%p%d%]", "\n\n")
QAQ=string.gsub(QAQ,"%\\n","\n")
gg.alert(QAQ)
    end
   end
      Main0()
