--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤

function Main()
 SN = gg.choice({"❤查询ip归属地❤", "❤查询自己的ip❤","凡[❤五彩斑斓❤]"},2020, "原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 密码十七")
  if SN == 1 then
   a1()
    end
     if SN == 2 then
      Exi()
      end 
      if SN== 3  then
      Exit()
      end 
  XGCK = -1
end

  function a1()
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
A=gg.prompt({"输入您要查询的ip"},{""},{"text"})
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
C=A[1]
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
B=gg.makeRequest("https://m.ip138.com/iplookup.asp?ip="..C).content
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
Y=string.match(B,"<caption>(.+)</tbody>")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
L=string.gsub(Y,"<h1>","")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
S=string.gsub(L,'</h1></caption><tbody><tr class="active"><td class="th">','')
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
Q=string.gsub(S,"</td><td>","")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
K=string.gsub(Q," </td></tr>","")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
F=string.gsub(K,"ASN","\n\n")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
gg.alert("❤查询已完毕\n\n".."❤"..F.."❤")
--原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
end
function Exi() 
N=gg.makeRequest("https://202020.ip138.com/").content
R=string.match(N,"<title>(.+)</title>")
V=string.match(N,'来自：(.+)<br/>')
O=string.gsub(V,"<br/>","")
M=string.gsub(O,"</p>","")
gg.alert(R.."\n\n"..M)
end

function Exit()
print("群号  796546632")
os.exit()
end


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
