
base64 = {}
function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local b=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')
-- encoding
function base64.enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function base64.dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end


LX=gg.prompt({'选择加密脚本','运行',"加密"},{gg.getFile(),""},{'file','checkbox','checkbox'})

if LX[2]==true then

lxy=io.open(LX[1],'r'):read('*a')
local lx = base64.dec(lxy)
load(lx)()

end

if LX[3]==true then

lxy=io.open(LX[1],'r'):read('*a')
local lx = base64.enc(lxy)
io.open(LX[1]..".lua","w"):write(lx)

end