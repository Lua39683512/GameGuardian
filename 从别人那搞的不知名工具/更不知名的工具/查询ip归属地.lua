--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤️


A=gg.prompt({"输入您要查询的ip"},{""},{"text"})
C=A[1]
B=gg.makeRequest("https://m.ip138.com/iplookup.asp?ip="..C).content
Y=string.match(B,"<caption>(.+)</tbody>")
L=string.gsub(Y,"<h1>","")
S=string.gsub(L,'</h1></caption><tbody><tr class="active"><td class="th">','')
Q=string.gsub(S,"</td><td>","")
K=string.gsub(Q," </td></tr>","")
F=string.gsub(K,"ASN","\n\n")
gg.alert("❤查询已完毕\n\n".."❤"..F.."❤")



