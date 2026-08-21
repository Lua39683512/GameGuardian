--原创by——鹿十七开源给大家学习，望转载时留下名
  Q=gg.prompt({"输入城市"},{"南平"},{"text"})[1]
   
  local function W(LSQ)
    return LSQ:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  
  

  function L(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end)
  return rt
end


  Y=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?Qname="..W(Q).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")


F=gg.makeRequest("http://www.weather.com.cn/weather1d/"..Y..".shtml").content


a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(F,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")




b=L(a,"$")

gg.alert("当前城市:"..Q.."\n\n"..table.concat(b,"\n\n"))