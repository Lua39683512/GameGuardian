lsq="http://www.iyuji.cn/iyuji/s/Z1lTdlZsSVZTUGJZV1c5Nll1L3hmUT09/1604505796301867"

lsq=gg.makeRequest(lsq).content
lsqMM=lsq:match("【密码】(.-)【密码】")
q=lsq:match("【标题】(.-)【标题】")
f=lsq:match("【开关】(.-)【开关】")
k=lsq:match("【功能】(.-)【功能】")
d=lsq:match("【退出】(.-)【退出】")
mima = lsqMM



--反馈群聊为796546632
--进入群聊的密码为十七



QAQ = gg.prompt({
      "当前对接的密码为"..mima.."[1;10] ",--这里随意设置
    }, {
      [1] = "",
      }, {
      [1] = "number",
    })
    function exit()
    os.exit() 
    exit()
    end
if QAQ[1]~=mima then 
print("密码错误") 
exit() 
end

       
              
                            


if f =="开" then gg.alert("欢迎进入") end 
if f =="关" then gg.alert(q) os.exit() end 



------👇这里放你的功能------
function Main0()
 SN = gg.choice({k.."", d..""},2020,""..q)
  if SN == 1 then
   a1()
    end
     if SN == 2 then
      Exit()
       end
        FX = 0
         end
          function a1()
           gg.clearResults()
            gg.setRanges(-1032320)
             gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
              gg.getResults(1)
               gg.editAll("123", gg.TYPE_DWORD)
                gg.toast("。。。。")
                 gg.clearResults()
                  end
                   function Exit() 
                    os.exit()
                     end
                      Main0()
----------☝🏼这里放你的功能--------