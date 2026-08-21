local g = {}
g.last = gg.getFile()
CxOption = nil
g.config = gg.getFile():gsub('%lua$', '')..'Re'
g.data = loadfile(g.config)
if g.data ~= nil then
  CxOption = g.data()
  g.data = nil
end
if CxOption==nil then
  CxOption={g.last,g.last,false,"X"}
end
function CxobFuscation(code)
  res=''
  for i in ipairs(code) do 
    res=res..string.char(code[i])
  end
  return res end

function Split(s, delimiter) 
  result = {}; 
  for match in (s..delimiter):gmatch("(.-)"..delimiter) do
    for i=1,300 do
      if match==""..i then
        match=i
        break
      end
    end
    table.insert(result, match); 
  end return result; end


while true do
  CxOption = gg.prompt({'选择主文件','Revo还原路径','还原6.0','函数调用or Cx({123,321})',"Revo解密段:{123,321},{46,54}","key段:1,2,3,4 or [1]=1,[8]=1","使用我的密匙"},CxOption, {'file','path','checkbox','text','text','text','checkbox' })

  ------------------------------------------------

  HookRevo={}
  if not CxOption then break end
  if io.open(CxOption[1], "r")==nil and not CxOption[3] then print("未找到文件","")break end
  if CxOption[2] and CxOption[3] then
    if not revo or not gg.internal9 then
      print("需要Revo的修改器!","")
    else
      if CxOption[2]:sub(-1,-1)~="/" then
        CxOption[2]=CxOption[2].."/"
      end
      local ask=gg.prompt({"请输入要转换的脚本数"},{1},{"number"})
      if ask then
        ask=ask[1]
        local result={}
        gg.saveVariable(CxOption, g.config)
        for i=1,ask do
          print("--[[ 脚本"..i.."正在转换 ]]")
          result[i]=gg.internal9(CxOption[2]..i..".lua", "60", "")
          if result[i] and result[i]:find("LuaG") then
            io.open(CxOption[2]..i..".lua","w+"):write(result[i]:gsub("LuaG","LuaR")):close()
            print("--[[ 脚本"..i.."转换成功 ]]")
          else
            print("--[[ 脚本"..i.."转换失败 ]]")
          end
        end
      end
    end--if ask
    os.exit()error("OK")
    --[[ Revo 6.0 还原 ]]--
  end
  local filex = io.open(CxOption[1], "r") 
  if filex==nil then print("文件不存在请重新选择","")
  else
    gg.saveVariable(CxOption, g.config)

    function Revoyes(c)
      ggfh=print('确认算法的正确性\n未出现乱码及正常:\n\n'..c,"正常","","错误")
      if ggfh==3 then
        os.exit()
        error"";
      end
    end
    Revokey=""

    HookRevo[1]=1
    HookRevo[2]=1
    local data = filex:read("*a")
    o=data:gsub("%p%P-%(%{%d",function (c)
      o=c:sub(2,-4):gsub(" ","")
      l=tostring(HookRevo)
      Refuse=true
      for i, v in ipairs(HookRevo) do
        if v==o then
          Refuse=false
          break
        end
      end

      if o~="" and Refuse then
        --print(c)
        HookRevo[#HookRevo+1]=o
      end return c end)
    HookRevo[#HookRevo+1]=CxOption[4]
    HookRevo1={}

    cxggos_exit = 1
    Alloutput=2
    while true do
      HookRevo[cxggos_exit] = HookRevo1['cxgg_os_exit'] == nil and 'Revo 转码' or '标准转码方案'
      HookRevo[Alloutput] = HookRevo1['Alloutput'] == nil and '所有调用输出' or '单个调用输出'
      HookRevoMenu = gg.choice(HookRevo,nil,"选择目标的调用\n密匙:"..Revokey)
      if HookRevoMenu == cxggos_exit then
        HookRevo1['cxgg_os_exit'] = HookRevo1['cxgg_os_exit'] == nil and 1 or nil
      else if HookRevoMenu == Alloutput then
          HookRevo1['Alloutput'] = HookRevo1['Alloutput'] == nil and 1 or nil
        elseif HookRevoMenu~=nil then
          CxOption[4]=HookRevo[HookRevoMenu]
          break
        end
      end 
    end
    if HookRevo[cxggos_exit]=="Revo 转码" then
      -------------
      if CxOption[7] then
        Revo1=load("return {"..CxOption[5].."}")()
        Revo2=load("return {"..CxOption[6].."}")()
      else
        for k=1,2 do
          local filexx = io.open(CxOption[k], "r")
          if not filexx then break end
          local data = filexx:read("*a")
          o=data:match("%{%s-(%{.-%})%s-%}")
          if o~=nil then
            Revokey1=load("return {"..o.."}")()
          end
          o=data:gsub("%s%{(.-)%}",function (c)
            --print(c)
            if c:find("{")==nil and c:find("%d") and c:find("%a")==nil then
              Revo2=load("return {"..c.."}")()
              --if type(Revo2)=="table" and tonumber(Revo2[1])~=nil then
              if Revo2 and type(Revo2)=="table" and type(Revo2[1])=="number" and Revo2[1]>10 then
                c=1
              else
                c="{"..c.."}"
              end
              --else
              --c="{"..c.."}"
              --end
            else
              c="{"..c.."}"
            end
            return c end)
          o=o:gsub("%s%{(.-)%}",function (c)
            print(c)
            if c:find("{")==nil then
              Revo2=load("return {"..c.."}")()
              --if type(Revo2)=="table" and tonumber(Revo2[1])~=nil then
              if Revo2[1]>10 then
                c=1
              end
              --end
            else
              c="{"..c.."}"
            end
            return c end)
          for i=1,10 do
            c=o:match("%{.-%}")

            if c~="{}" and c:find("%d") and c:find("%,") and c~=nil then
              Revo2=load("return "..c.."")()
              --print(tostring(Revo2))
              if type(Revo2[15])~="string" and Revo2[15]~=nil and Revo2[15]<11 and Revo2[21]==nil then
                Revokey2=Revo2
                break
              end
            end
            o=o:gsub(c,"")
          end

          if Revokey1~=nil then
            Revo1=Revokey1
            Revo2=Revokey2
            filexx:close()
            break
          end
        end



      end
      ----------------
      if Revo1==nil then
        print("算法解析失败\n请尝试手动获取","")
        error("算法解析失败\n请尝试手动获取")
        os.exit()
      end
      local R_ = function(m, n)
        local i, res = m[5], ''
        for j in ipairs(n) do
          res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
          i = i + m[4]
        end
        return res
      end
      local getKey = function(j, k)
        local m, o = 1, {}
        repeat
          --  print("j",j,"k",k,"m",m)
          table.insert(o, j[k[m]][k[m+1]])
          m = m + 2
        until m > 20
        return o
      end
      local Revo_L = Revo1
      local Revo_A = Revo2
      local Revo_O = getKey(Revo_L, Revo_A)
      local Revo_D = function(c)
        return R_(Revo_O, c)
      end

      Processingdatabase=Revo_D
    else
      Processingdatabase=CxobFuscation
    end
    Frequency=0

    if HookRevo[Alloutput]=="所有调用输出" then
      for i, v in ipairs(HookRevo) do
        if i~=1 and i~=2 then
          for i=1,2 do 
            data=data:gsub(v.."-[(]{(.-)}[)]",
            function (c)
              Frequency=Frequency+1
              --  print(c)
              if c:match("%d") and c:match("%a")==nil then
                c=load("return {"..c.."}")()
                c="'"..Processingdatabase(c).."'" 
                if Frequency==1 then
                  Revoyes(c)
                end
                c=c:gsub("\n",[[\n]])
              else
                c=v.."({"..c.."})"
              end
              return c end)
          end
        end
      end
      data=data:gsub("%{(.-)%}", function (c) Frequency=Frequency+1 --gg.toast("解析第"..Frequency.."条数据")
        if c:match("%d") and c:match("%a")==nil and c=="" then 
          c=load("return {"..c.."}")()
          c="'"..Processingdatabase(c).."'" c=c:gsub("\n",[[\n]]) else c="{"..c.."}" end return c end)
    end

    for i=1,5 do
      data=data:gsub(CxOption[4].."-[(]{(.-)}[)]",
      function (c)
        Frequency=Frequency+1
        -- gg.toast("解析第"..Frequency.."条数据")
        --  print(c)
        if c:match("%d") and c:match("%a")==nil then
          c=load("return {"..c.."}")()
          c="'"..Processingdatabase(c).."'" 
          if Frequency==1 then
            Revoyes(c)
          end
          c=c:gsub("\n",[[\n]])
        else
          c=CxOption[4].."({"..c.."})"
        end
        return c end)
      data=data:gsub("string.char[(](.-)[)]",
      function (c)
        Frequency=Frequency+1
        -- gg.toast("解析第"..Frequency.."条数据")
        if c:match("%d") and c:match("%a")==nil then
          c="'"..CxobFuscation(Split(c,",")).."'"
          c=c:gsub("\n",[[\n]])
        else
          c="string.char("..c..")"
        end
        return c end)
    end
    data=data:gsub("local-.-gg.editAll%(0, gg.TYPE_DWORD | gg.TYPE_FLOAT%)","",1)
    data=data:gsub("end%)%(%)","",1)
    data=data:gsub("gg\.choiceX","gg\.choice")
    data=data:gsub("gg\.multiChoiceX","gg\.multiChoice")
    data=data:gsub("gg\.promptX","gg\.prompt")
    data=data:gsub("gg\.alertX","gg\.alert")
    data=data:gsub("gg\.alert","gg\.alert")
    file = io.open(CxOption[1]..".XX", 'w')
    file:write(data)
    file:write("\n")
    file:close()
    print("解析成功 共"..Frequency.."条\n\n\n保存文件为：" .. CxOption[1].. "\n\n\t\t\t\t\t\t\tBy初心 \t","")
    print("解析成功:",Frequency,"条")
    break
  end
end
