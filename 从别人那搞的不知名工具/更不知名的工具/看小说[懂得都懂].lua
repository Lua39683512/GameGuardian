

function Main0()
 SN = gg.choice({"斗破[接口1]", "斗破[接口2]"},2020, "")
  if SN == 1 then
   lsq="https://gejiba.com/view.php/060dbeb8fca72e9446a4da389640d32b.png"
lsq=gg.makeRequest(lsq).content
gg.alert(lsq)
    end
     if SN == 2 then
      sq="http://www.iyuji.cn/iyuji/s/Z1lTdlZsSVZTUGJZV1c5Nll1L3hmUT09/1604603771450831"
sq=gg.makeRequest(sq).content
k=sq:match("^(.-)$")
gg.alert(k)
       end
        FX = 0
         end          
         Main0()
