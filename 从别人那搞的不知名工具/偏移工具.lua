--[[
gg.getListItems()--获取保存列表
gg.loadResults()--加载搜索结果
gg.loadList()--加载保存列表
gg.getRangesList()--内存列表
--by木酥
]]
--readWrite({{false,1241,0,4,nil,nil},{1237,-16,4},{1235,-24,4},{1234,-28,4},{1231,-40,4}},{{false,-28,4},{5555,-24,4,true}},4,32,"1111")--获取修改同时存在--
--readWrite({{"C4",1241,0,4,nil,nil},{1237,-16,4},{1235,-24,4},{1234,-28,4},{1231,-40,4}},{{false,-28,4},{5555,-24,4,true}},4,32,"1111")--蒙版--
--[[
中文参数解释
readwrite({
  {是否蒙版,主特征值,相对偏移,类型,起始内存,终止内存},--第一个搜索参数为6个
  {特征值,相对偏移,类型},--其余搜索参数为3个
  {特征值,相对偏移,类型}
},{
  {修改或读取,相对偏移,类型,是否冻结},
  {修改或读取,相对偏移,类型,是否冻结},
  {修改或读取,相对偏移,类型,是否冻结}
},主类型,内存,功能名称)
]]
pz=[[function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--以上为配置 勿动
]]
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function getFlagLists(flags)
  if flags==1 then
    return "B"
  elseif flags==2 then
    return "W"
  elseif flags==4 then
    return "D"
  elseif flags==8 then
    return "X"
  elseif flags==16 then
    return "F"
  elseif flags==32 then
    return "Q"
  elseif flags==64 then
    return "E"
  elseif flags==127 then
    return "A"
  end
end
function getRangesLists(flags)
  if flags=="Jh" then
    return 2
  elseif flags=="Ch" then
    return 1
  elseif flags=="Ca" then
    return 4
  elseif flags=="Cd" then
    return 8
  elseif flags=="Cb" then
    return 16
  elseif flags=="Ps" then
    return 262144
  elseif flags=="A" then
    return 32
  elseif flags=="J" then
    return 65536
  elseif flags=="S" then
    return 64
  elseif flags=="As" then
    return 524288
  elseif flags=="V" then
    return 1048576
  elseif flags=="O" then
    return -2080896
  elseif flags=="B" then
    return 131072
  elseif flags=="Xa" then
    return 16384
  elseif flags=="Xs" then
    return 32768
  end
end
function getChoice()
  valueTable=gg.getListItems()
  if #valueTable>0 then
    choiceName={}
    for i,v in pairs(valueTable) do
      choiceName[#choiceName+1]="地址："..(string.format("%#x", v.address)):upper().."\n数值："..v.value..getFlagLists(v.flags).."\n"
    end
  else
    gg.alert("请至少保存到列表一个值")
    return false
  end
end
RangesList=gg.getRangesList()
function Main()
  Data=Data or {}
  main=gg.choice({"获取数值","生成写法","一键生成","打赏作者","退出脚本"},0,"测试")
  if main==nil then
  else
    if main==1 then
      getData()
    elseif main==2 then
      outData()
    elseif main==3 then
      saveOut()
    elseif main==4 then
      pay()
    elseif main==5 then
      os.exit()
    end
  end
  XXX=-1
end
function getData()
  if getChoice()~=false then
    Value=gg.choice(choiceName,0,"当前保存列表值有"..#choiceName.."条\n选择一条导出其附近值\n")
    if Value==nil then
    else
      Data=valueTable[Value]
      for i,v in pairs(RangesList) do
        if Data.address>=v.start and Data.address<=v["end"] then
          info=choiceName[Value].."冻结："..((Data.freeze==false) and "否" or "是").."\n内存："..v.state.."\n内存段："..(string.format("%#x", v.start)):upper().."~"..(string.format("%#x", v["end"])):upper().."\n内部名："..v.name.."\n"
          RANGE=getRangesLists(v.state)
        end
      end
      Main()
    end
  end
end
function outData()
  if not Data.value then
    gg.alert("请先获取数据")
    Main()
  else
    dio=gg.prompt({"偏移范围","数值","是否过滤"},{"","-1~1",false},{"number","number","checkbox"})
    if dio==nil then
      outData()
    else
      if dio[1]%4~=0 then
        gg.alert("范围应为4的倍数")
      else
        gg.alert(info)
        resulto,fitValue={},split(dio[2],"~")
        for i=(0-dio[1]),dio[1],4 do
          resulto[#resulto+1]={
            ["address"]=Data.address+i,
            ["flags"]=Data.flags
          }
        end
        resulto,result,nameo,TorF,check=gg.getValues(resulto),{},{"选择需要的特征"},{"输入功能名称"},{"text"}
        for i,v in pairs(resulto) do
          if dio[3]==true then
            if v.value<tonumber(fitValue[1]) or v.value>tonumber(fitValue[2]) then
              result[#result+1]=v
              nameo[#nameo+1]="偏移:"..(v.address-Data.address).." 值:"..v.value..getFlagLists(v.flags)
              TorF[#TorF+1]=false
              check[#check+1]="checkbox"
            end
          else
            result[#result+1]=v
            nameo[#nameo+1]="偏移:"..(v.address-Data.address).." 值:"..v.value..getFlagLists(v.flags)
            TorF[#TorF+1]=false
            check[#check+1]="checkbox"
          end
        end
        ::xh1::
        choiceValues=gg.prompt(nameo,TorF,check)
        if choiceValues==nil then
          goto xh1
        else
          cs=0
          Result,offest,values,typelx,name={},{},{},{},{}
          for i,v in pairs(choiceValues) do
            if v==true then
              cs=cs+1
              num=(#Result>0) and Result[1].address or 0
              Result[#Result+1]=result[i-1]
              offest[#offest+1]=((num==0) and 0 or Result[#Result].address-num)
              values[#values+1]=Result[#Result].value
              typelx[#typelx+1]=Result[#Result].flags
              name[#name+1]="偏移:"..offest[#offest].." 值:"..values[#values]
            end
          end
          if cs<2 then
            gg.alert("至少选择两个值")
            goto xh1
          else
            ::xh2::
            choiceValues2=gg.multiChoice(name,nil,"选择需要修改的特征值")
            if choiceValues==nil then
               goto xh2
            else
              search,write={},{}
              for i,v in pairs(name) do
                if choiceValues2[i] then
                  ::xh3::
                  _m=gg.prompt({"原值为："..values[i]..getFlagLists(typelx[i]).."\n输入修改后的值","是否冻结"},{"",false},{"text","checkbox"})
                  if _m==nil then
                    goto xh3
                  else
                    write[#write+1]="{".._m[1]..","..offest[i]..","..typelx[i]..","..tostring(_m[2]).."}"
                  end
                else
                  if #search==0 then
                    search[#search+1]="{false,"..values[i]..","..offest[i]..","..typelx[i]..",nil,nil}"
                  else
                    search[#search+1]="{"..values[i]..","..offest[i]..","..typelx[i].."}"
                  end
                end
              end
              str="readWrite({"..table.concat(search,",").."},{"..table.concat(write,",").."},"..result[1].flags..","..RANGE..",\""..choiceValues[1].."\")"
              gg.alert("已生成写法\n"..str)
              gg.copyText(str,false)
              finish=gg.alert("是否执行测试","是","否")
              if finish~=1 then
              else
                load(pz.."\n"..str)()
              end
              io.open(gg.getFile():gsub('/[^/]+$', '').."/"..choiceValues[1]..".lua","w"):write(pz.."\n"..str)
              gg.alert("脚本生成在:\n"..gg.getFile():gsub('/[^/]+$', '').."/"..choiceValues[1]..".lua")
              os.exit()
            end
          end
        end
      end
    end
  end
end
function saveOut()
  if getChoice()~=false then
    Data=valueTable[1]
    for i,v in pairs(RangesList) do
      if Data.address>=v.start and Data.address<=v["end"] then
        RANGE=getRangesLists(v.state)
      end
    end
    choiceName2={}
    for i,v in pairs(valueTable) do
      gg.setRanges(RANGE)
      gg.searchNumber(v.value,v.flags)
      local count = gg.getResultCount()
      gg.clearResults()
      choiceName2[#choiceName2+1]=choiceName[i].."共搜到数值："..count.."条\n"
    end
    search,write,offest_,xzher={},{},{},{}
    ::xh4::
    searchValue=gg.choice(choiceName2,0,"当前保存列表值有"..#choiceName2.."条\n选择一条搜索")
    if searchValue==nil then
    else
      cfx=nil
      for i,v in pairs(xzher) do
        if v==searchValue then
          cfx=cfx or 1
        end
      end
      if cfx==nil then
        xzher[#xzher+1]=searchValue
        if #xzher==#choiceName2 then
        else
          if #search==0 then
            search[#search+1]="{false,"..valueTable[searchValue].value..",0,"..valueTable[searchValue].flags..",nil,nil}"
            offest_[#offest_+1]=valueTable[searchValue].address
          else
            search[#search+1]="{"..valueTable[searchValue].value..","..(valueTable[searchValue].address-offest_[1])..","..valueTable[searchValue].flags.."}"
          end
          xz=gg.alert("是否继续搜索","是","","否")
          if xz==3 then
          else
            goto xh4
          end
        end
      else
        gg.alert("请勿重复选择")
        goto xh4
      end
      ::xh5::
      choiceValues2=gg.multiChoice(choiceName2,nil,"当前保存列表值有"..#choiceName2.."条\n选择需要修改的值")
      if choiceValues2==nil then
        goto xh5
      else
        for i,v in pairs(choiceName2) do
          if choiceValues2[i] then
            ::xh6::
            _m=gg.prompt({"原值为："..valueTable[i].value..getFlagLists(valueTable[i].flags).."\n输入修改后的值","是否冻结"},{"",false},{"text","checkbox"})
            if _m==nil then
              goto xh6
            else
              write[#write+1]="{".._m[1]..","..(valueTable[i].address-offest_[1])..","..valueTable[i].flags..","..tostring(_m[2]).."}"
            end
          end
        end
      end
      ::xh7::
      namet=gg.prompt({"请输入功能名称"},{""},{"text"})
      if namet==nil then
        goto xh7
      else
        str="readWrite({"..table.concat(search,",").."},{"..table.concat(write,",").."},"..valueTable[1].flags..","..RANGE..",\""..namet[1].."\")"
        gg.alert("已生成写法\n"..str)
        gg.copyText(str,false)
        finish=gg.alert("是否执行测试","是","否")
        if finish~=1 then
        else
          load(pz.."\n"..str)()
        end
        io.open(gg.getFile():gsub('/[^/]+$', '').."/"..namet[1]..".lua","w"):write(pz.."\n"..str)
        gg.alert("脚本生成在:\n"..gg.getFile():gsub('/[^/]+$', '').."/"..namet[1]..".lua")
        os.exit()
      end
    end
  end
end

function pay()
  gg.copyText("https://h5.clewm.net/?url=qr61.cn%2Fop4Bin%2FqlRvGhD&hasredirect=1")
  gg.alert("已复制链接")
end

while true do 
  if gg.isVisible(true) then 
    XXX=1 
    gg.setVisible(false)
  end
  if XXX==1 then
    Main()
  end
end