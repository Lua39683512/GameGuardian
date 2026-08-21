modellower = "abcdefghijklmnopqrstuvwxyz"
modelupper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
modeloweritem = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
modelupperitem = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}

QS={}

QS["字符串截取"]=function(str)
  local lenInByte = #str;
  local i = 1;
  local strlen=1;
  local txt = {};
  while (i <= lenInByte) do
   local curByte = string.byte(str, i)
   local byteCount = 1;
   if curByte > 0 and curByte <= 127 then
     byteCount = 1
    elseif curByte >= 192 and curByte < 223 then
      byteCount = 2
    elseif curByte >= 224 and curByte < 239 then
      byteCount = 3
     elseif curByte >= 240 and curByte <= 247 then
      byteCount = 4
    end
   txt[strlen] = string.sub(str, i, i+byteCount-1);
   strlen=strlen+1;
   i = i+byteCount;
   end
  return txt
end


QS["凯撒加密"]=function(str,key)
  if key < 26 and key > -26 and key ~= 0 then
    if key > -26 and key < 0 then
      key=26+key;
    end
    data = {};
    items = QS["字符串截取"](str);
    for i,s in pairs(items) do
      if string.find(s,"%l") then
        num = modellower:find(s);
        if num ~= nil then
          t = num+key;
          if t > 26 then
            t = t-26;
          end
          s = modeloweritem[t];
        end
         elseif string.find(s,"%u") then
          num = modelupper:find(s);
          if num ~= nil then
           t = num+key;
            if t > 26 then
              t = t-26;
            end
            s = modelupperitem[t];
         end
      end
      table.insert(data,s)
    end
     return table.concat(data)
   else
    return str
  end
end


a=[=[
]=]


b=math.random(-25,25)
print(QS["凯撒加密"](a,b))
