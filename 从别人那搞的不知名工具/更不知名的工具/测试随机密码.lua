LSQb = math.random(10,20)

 mima = ""..LSQb*2-1
  info = gg.prompt({
  "当前随机数为"..LSQb.."\n\n您的专属计算密码方式为"..LSQb.."*2-1=密码".."[19;40]",
   }, {
    [1] = ""..LSQb
     }, {
      [1] = "number",
       })
        function exit()
        os.exit() 
        exit()
         end
          if info[1]~=mima then print("密码错误") exit() end


function Main0()
 SN = gg.choice({"测试", "退出"}, nil, "")
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
                gg.toast("修改成功")
                 gg.clearResults()
                  end
                   function Exit() 
                    os.exit()
                     end                     
                       Main0()