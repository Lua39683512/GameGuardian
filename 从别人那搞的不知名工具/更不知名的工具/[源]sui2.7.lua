function W(str)
  print(str)
  gg.toast(str,true)
end
local g = {}
function ios(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path)
        if file then
            io.input(file)
            data = io.read('*a')
            io.close(file)
        end
        return (data or "")
    end
end
FY=[=====[

--sethook计算
local Jishuan={}
local function hook()
    Jishuan[#Jishuan+1] = ""
end
local Fanhui = debug.sethook(hook, "r")
Rep=string.rep("Log修改器?-[你🐴个B]\n",1048576)

local List={
["string"]=2,
["io"]=2,
["os"]=2,
["math"]=2,
["table"]=2
}
for i, v in pairs(List) do
    for k,l in pairs(_ENV[i]) do
        pcall(l,{Rep})
    end
end

Tab={}    
for Shuaqu=1,1024 do
    Tab[#Tab +1] = Rep
end 
for k, v in pairs({
_ENV["gg"]["choice"],
_ENV["gg"]["multiChoice"],
_ENV["gg"]["prompt"],
_ENV["gg"]["getValues"],
_ENV["gg"]["addListItems"],
_ENV["gg"]["getListItems"],
_ENV["gg"]["saveVariable"],
_ENV["gg"]["getListItems"],
_ENV["gg"]["removeListItems"],
_ENV["gg"]["getValuesRange"],
_ENV["gg"]["searchNumber"],
_ENV["gg"]["editAll"],
_ENV["gg"]["searchAddress"]
}) do
    pcall(v,Tab[k])
end 

--print(#Jishuan)--请加密后打印这一行，因为每个人的加密hook调用的东西不一致，无法做到统一，打印确认后更改下列数字1223

while #Jishuan ~= 1223 or not Jishuan or #Jishuan < 1 or #Tab < 1 do
print("╾╾╾╾╾❤⚠.警告.⚠❤╾╾╾╾╾\n异常结束!\n请使用正规GG!\n支持版本:91.0~101.1\n".."╾╾╾╾╾✨By.鹿十七✨╾╾╾╾╾")    
os.exit()
end
debug.sethook()-- RL防御
do
    -- 检测debug
    local r0 = debug.getinfo(debug.getinfo)
    local r1 = debug.getinfo(1)

    local f = r1.func
    if f ~= r0.func then
        return
    end

    debug.getinfo = f
    local r0 = debug.getinfo(f)
    if r0.istailcall then
        return
    end

    if tostring(debug) ~= tostring(debug) then
        return
    end
end

do
    -- 检测hook
    local lua = '\x1B\x4C\x75\x61\x52\x00\x01\x04\x04\x04\x08\x00\x19\x93\x0D\x0A\x1A\x0A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\xC7\x01\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\x98\xC3\x37\x80\x00\xA3\x37\x3B\x80\xC0\x20\x80\x76\xA3\x77\x6B\x80\xC1\x3B\x00\x00\xA3\x77\x1B\x80\x40\x3B\x00\x22\xA3\xF7\x30\x80\x40\x31\x80\x75\xA3\xB7\x47\x80\x00\x3A\x00\x1B\xA3\xB7\x67\x80\x03\x4E\x80\x00\xA3\x37\x16\x80\xA3\xB7\x4F\x80\x00\x11\x80\x76\xA3\xB7\x05\x80\xA3\xB7\x1C\x80\xA3\xF7\x31\x80\x03\x53\x00\x00\xA3\xB7\x0B\x80\xA3\x37\x4A\x80\xC0\x2E\x80\x74\xA3\x37\x35\x80\xC1\x79\x00\x00\xA3\xB7\x53\x80\x08\x40\x02\x04\xA3\x77\x0D\x80\x00\x3B\x00\x1C\xA3\x77\xFB\x7F\x1B\x2B\x00\x00\xA3\x37\x59\x80\xA3\x77\x24\x80\x43\x50\x80\x00\xA3\xF7\x65\x80\xA3\xF7\x22\x80\x07\x02\x82\x03\xA3\xF7\x19\x80\x9B\x74\x00\x00\xA3\x77\x12\x80\xC1\xBB\x00\x00\xA3\x77\x34\x80\x58\xC0\x3A\x04\xA3\xF7\xFD\x7F\x81\xFB\x00\x00\xA3\x77\x5D\x80\x40\x1F\x80\x74\xA3\xF7\x4B\x80\x1B\x6A\x00\x00\xA3\x77\x60\x80\xA3\xB7\x30\x80\x1C\x02\x80\x75\xA3\x37\x23\x80\xA3\xF7\x5B\x80\x1B\x4F\x00\x00\xA3\xF7\x22\x80\xA3\xB7\x04\x80\x00\x3B\x80\x13\xA3\x77\x2A\x80\xE5\x00\x00\x00\xA3\x37\x02\x80\x80\x3A\x00\x54\xA3\xB7\x2A\x80\x03\x4F\x00\x00\xA3\x37\x00\x80\xA3\xF7\xFC\x7F\x26\x00\x00\x01\xA3\xF7\xF5\x7F\xC1\x39\x01\x00\xA3\x77\x10\x80\x80\x39\x80\x20\xA3\x37\xF6\x7F\xC3\x6E\x80\x00\xA3\x77\x18\x80\xA3\x77\x5D\x80\x1F\x00\x80\x00\x00\x0F\x00\x75\xA3\xB7\x12\x80\x40\x10\x00\x73\xA3\xF7\xEC\x7F\x80\x0D\x00\x74\xA3\xF7\x0D\x80\x00\x3B\x00\x69\xA3\xB7\x2F\x80\x83\x49\x00\x00\xA3\x37\x20\x80\xA3\xF7\x4D\x80\x80\x3A\x00\x13\xA3\xB7\xFE\x7F\xC6\xC1\x01\x00\xA3\xB7\xEA\x7F\x40\x04\x00\x77\xA3\xB7\xEE\x7F\x80\x39\x80\x1A\xA3\xF7\x0E\x80\x1B\x24\x00\x00\xA3\x77\x11\x80\xA3\xF7\x16\x80\x18\x80\xBA\x02\xA3\xB7\xF5\x7F\xA3\x77\x3D\x80\x40\x3B\x80\x2A\xA3\x37\x2A\x80\x94\x3C\x80\x78\xA3\xB7\x08\x80\x5B\x44\x00\x00\xA3\x37\x36\x80\xA3\xB7\xFB\x7F\x5C\x01\x80\x75\xA3\x37\x2E\x80\xA3\x77\x1A\x80\x43\x44\x00\x00\xA3\x37\x14\x80\xA3\xB7\xFD\x7F\x80\x34\x00\x76\xA3\xF7\x08\x80\x1C\x01\x80\x77\xA3\xB7\x2A\x80\xA3\xB7\x06\x80\x46\x41\x01\x00\xA3\x37\x2E\x80\x5D\x41\x00\x01\xA3\x37\x11\x80\xC3\x65\x00\x00\xA3\x77\x18\x80\xA3\x37\x41\x80\x80\x3A\x00\x2B\xA3\x77\x07\x80\x18\x80\x39\x03\xA3\x77\x02\x80\xA3\xF7\x28\x80\xC0\x3A\x80\x0B\xA3\xB7\x13\x80\xA3\x37\x4C\x80\x9C\x41\x80\x75\xA3\x37\xFC\x7F\x5C\x41\x80\x73\xA3\x37\xFB\x7F\x81\x79\x01\x00\xA3\x37\x19\x80\x1C\x72\x80\x78\xA3\xF7\xEC\x7F\x00\x3A\x80\x4B\xA3\xB7\xFA\x7F\x1B\x07\x00\x00\xA3\xB7\x40\x80\x00\x01\x80\x77\xA3\xF7\x21\x80\x40\x3A\x80\x0A\xA3\xB7\x40\x80\xDD\x41\x80\x00\xA3\x77\xDC\x7F\xDF\x01\x00\x01\xC0\x01\x00\x02\xA3\xF7\xEE\x7F\x43\x4D\x00\x00\xA3\x37\x00\x80\xA3\x77\x24\x80\x83\x55\x00\x00\xA3\x37\x2B\x80\xA3\xB7\x45\x80\x00\x0E\x00\x76\xA3\xB7\x07\x80\x80\x01\x00\x77\xA3\xB7\x3D\x80\x00\x3B\x00\x48\xA3\x37\x23\x80\x9C\x01\x00\x73\xA3\x37\xFA\x7F\xA3\xB7\x2E\x80\x40\x3B\x80\x41\xA3\x77\x27\x80\x81\x7A\x01\x00\xA3\xB7\x3E\x80\x5B\x05\x00\x00\xA3\x77\x17\x80\x5B\x10\x00\x00\xA3\x37\x33\x80\xA3\xB7\xE6\x7F\x00\x2B\x00\x73\xA3\x37\xF8\x7F\x03\x55\x00\x00\xA3\x37\x28\x80\xA3\x37\x33\x80\xC0\x3A\x80\x62\xA3\xB7\x39\x80\xDC\x41\x00\x77\xA3\x77\x02\x80\x5D\xC1\x80\x00\xA3\x77\xFE\x7F\x00\x24\x00\x76\xA3\x77\x21\x80\x80\x39\x00\x0E\xA3\x77\x3C\x80\x40\x3A\x80\x3E\xA3\xB7\x10\x80\x5B\x1F\x00\x00\xA3\xF7\xD9\x7F\x18\x80\xBB\x03\xA3\xF7\xE8\x7F\xA3\x77\x3D\x80\x1B\x0C\x00\x00\xA3\x37\xE2\x7F\xA3\x77\x21\x80\x03\x51\x80\x00\xA3\xF7\x37\x80\xA3\x37\x2A\x80\x03\x6B\x80\x00\xA3\xF7\x27\x80\xA3\xF7\xD2\x7F\xC0\x25\x00\x74\xA3\x37\x3A\x80\xC3\x45\x00\x00\xA3\x77\xFB\x7F\xA3\xF7\x01\x80\xDB\x20\x00\x00\xA3\x37\xCA\x7F\x40\x01\x80\x75\xA3\xB7\x34\x80\x80\x01\x80\x73\xA3\xB7\x17\x80\x81\xBB\x01\x00\xA3\x77\x18\x80\xDB\x05\x00\x00\xA3\x77\x00\x80\x40\x15\x80\x76\xA3\xF7\x07\x80\xC0\x05\x80\x75\xA3\x77\x2B\x80\xC3\x49\x80\x00\xA3\xF7\x2A\x80\xA3\x37\x23\x80\x40\x3A\x00\x2A\xA3\xB7\xF2\x7F\x03\x6A\x00\x00\xA3\xF7\xD9\x7F\xA3\xB7\xD0\x7F\x81\x7B\x01\x00\xA3\xB7\xF2\x7F\x54\x3C\x00\x78\xA3\x77\xDD\x7F\xDC\x41\x00\x73\xA3\x77\x1A\x80\x18\xC0\x3B\x04\xA3\x77\x2D\x80\xA3\x37\x2A\x80\x00\x2A\x00\x75\xA3\xF7\xCC\x7F\x00\x02\x80\x77\xA3\x37\xFE\x7F\x5D\x41\x80\x01\xA3\xF7\xE5\x7F\x1C\x02\x80\x77\xA3\x77\x2A\x80\xA3\x37\xFE\x7F\x47\x81\x81\x02\xA3\x77\x19\x80\xC0\x09\x00\x76\xA3\x37\xEE\x7F\x5D\x82\x80\x00\xA3\xF7\x22\x80\x40\x3A\x80\x5D\xA3\x37\xD0\x7F\x43\x5F\x00\x00\xA3\x77\xFF\x7F\xA3\x77\xEE\x7F\x80\x15\x00\x75\xA3\x37\xF4\x7F\x80\x3B\x80\x3E\xA3\xF7\x03\x80\x40\x05\x80\x74\xA3\xF7\xCC\x7F\x43\x55\x00\x00\xA3\x37\x2A\x80\xA3\xB7\x16\x80\x83\x74\x80\x00\xA3\x77\xE3\x7F\xA3\xF7\xC3\x7F\x1C\x42\x80\x77\xA3\x37\x19\x80\xDD\x81\x00\x01\xA3\xB7\xD0\x7F\x80\x3A\x00\x1E\xA3\xB7\xC8\x7F\x58\xC0\x3B\x02\xA3\x77\xE3\x7F\x43\x5F\x80\x00\xA3\xB7\x26\x80\xA3\xF7\x17\x80\x41\xC0\x01\x00\xA3\x77\x0A\x80\x46\x41\x01\x00\xA3\x37\xD6\x7F\xC1\x3A\x02\x00\xA3\xB7\xD7\x7F\x47\x81\x81\x02\xA3\xF7\xDE\x7F\x18\xC0\x80\x02\xA3\x77\xB9\x7F\x18\xC0\x80\x02\xA3\x77\xFE\x7F\xA3\x77\x16\x80\x47\x81\x81\x02\xA3\x37\xC2\x7F\x5B\x0D\x00\x00\xA3\x37\x10\x80\x80\x3B\x80\x08\xA3\xB7\xCE\x7F\x03\x64\x80\x00\xA3\xF7\xBD\x7F\xA3\xF7\xC9\x7F\x03\x4C\x80\x00\xA3\x37\xD6\x7F\xA3\xB7\xE3\x7F\xC1\x7A\x01\x00\xA3\xF7\xCB\x7F\x18\xC0\x39\x03\xA3\xB7\x09\x80\xA3\xF7\xEF\x7F\x1B\x13\x00\x00\xA3\xB7\x1B\x80\x9C\x01\x00\x77\xA3\x77\xC9\x7F\xA3\xB7\xD7\x7F\x80\x09\x00\x75\xA3\xF7\xEC\x7F\x80\x01\x80\x01\xA3\x77\xF4\x7F\x40\x1F\x00\x77\xA3\x37\x0C\x80\xC3\x60\x00\x00\xA3\xF7\xC9\x7F\xA3\x77\xE2\x7F\xA3\x37\xCD\x7F\x1B\x4E\x00\x00\xA3\x37\xD4\x7F\x9C\x40\x80\x73\xA3\x77\x01\x80\x00\x0C\x80\x77\xA3\x37\xF4\x7F\x9B\x0D\x00\x00\xA3\x77\xBE\x7F\x5B\x71\x00\x00\xA3\xF7\xAB\x7F\x18\xC0\x39\x01\xA3\x37\xC3\x7F\xA3\x37\x04\x80\x46\x41\x01\x00\xA3\x37\xD3\x7F\x18\x80\xB9\x03\xA3\xB7\xC0\x7F\xA3\x37\xBE\x7F\x5C\x40\x00\x00\xA3\x37\x16\x80\x5C\x40\x00\x00\xA3\xB7\xC0\x7F\xA3\xF7\xEE\x7F\x80\x01\x00\x73\xA3\x37\xC6\x7F\xC0\x3B\x00\x18\xA3\x77\xF3\x7F\x9C\x01\x80\x73\xA3\xF7\xBA\x7F\xA3\xB7\xDB\x7F\x8D\x80\x80\x00\xA3\x77\xDE\x7F\x5B\x55\x00\x00\xA3\xF7\xE2\x7F\xA3\xF7\xDB\x7F\xA3\x77\x0D\x80\xA3\x77\xBD\x7F\x40\x0D\x00\x73\xA3\x77\x08\x80\xDB\x09\x00\x00\xA3\xB7\xB3\x7F\xA3\x37\xE2\x7F\x1B\x11\x00\x00\xA3\xF7\xE7\x7F\xA3\xF7\xA4\x7F\xC1\x7B\x02\x00\xA3\x37\xE6\x7F\xC7\x01\x82\x03\xA3\x77\x03\x80\x00\x15\x80\x74\xA3\x77\xAE\x7F\x5B\x5F\x00\x00\xA3\x37\xF1\x7F\xDB\x25\x00\x00\xA3\x37\xD3\x7F\x1B\x55\x00\x00\xA3\xF7\xB7\x7F\xA3\xB7\xFD\x7F\x58\x80\x01\x02\xA3\xB7\xF9\x7F\x58\x80\x01\x02\xA3\xF7\x09\x80\xA3\xF7\xBD\x7F\x80\x39\x00\x56\xA3\xF7\xCF\x7F\x9B\x09\x00\x00\xA3\xB7\xEC\x7F\x40\x3A\x00\x26\xA3\xF7\x9F\x7F\xC1\xB9\x02\x00\xA3\xB7\xEE\x7F\x00\x07\x00\x73\xA3\xB7\xE8\x7F\xC1\xFA\x02\x00\xA3\x77\xA6\x7F\x43\x45\x00\x00\xA3\x37\xAE\x7F\xA3\x77\xC4\x7F\x18\x80\x3B\x03\xA3\xF7\xB7\x7F\xA3\xB7\xE3\x7F\xC7\x01\x82\x03\xA3\xF7\xA6\x7F\x43\x71\x80\x00\xA3\xF7\xAC\x7F\xA3\x77\xEC\x7F\x1C\x42\x00\x77\xA3\x77\xDC\x7F\x00\x02\x80\x75\xA3\x77\xA0\x7F\xA3\xF7\xD6\x7F\x5C\x41\x00\x75\xA3\xB7\xAD\x7F\x83\x4D\x00\x00\xA3\x37\xA2\x7F\xA3\x77\xE9\x7F\x58\xC0\xBA\x02\xA3\xB7\xDC\x7F\x00\x13\x80\x74\xA3\xF7\x99\x7F\x81\x79\x02\x00\xA3\xB7\xBC\x7F\x03\x47\x00\x00\xA3\x77\xE1\x7F\xA3\x37\xB6\x7F\x1F\x00\x80\x00\x9B\x55\x00\x00\xA3\xF7\xA9\x7F\xA3\xB7\xD3\x7F\xA3\x37\xE4\x7F\xA3\xB7\x93\x7F\x40\x02\x80\x02\xA3\x77\xA9\x7F\xC6\xC1\x01\x00\xA3\xB7\xD2\x7F\xDB\x2E\x00\x00\xA3\xB7\x8F\x7F\xA3\x77\x94\x7F\x1F\x00\x80\x00\x0C\x00\x00\x00\x04\x02\x00\x00\x00\x63\x00\x04\x0D\x00\x00\x00\x73\x65\x61\x72\x63\x68\x4E\x75\x6D\x62\x65\x72\x00\x04\x08\x00\x00\x00\x67\x65\x74\x69\x6E\x66\x6F\x00\x03\x00\x00\x00\x00\x00\x00\x00\x40\x04\x03\x00\x00\x00\x67\x67\x00\x04\x06\x00\x00\x00\x64\x65\x62\x75\x67\x00\x04\x08\x00\x00\x00\x67\x65\x74\x68\x6F\x6F\x6B\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x04\x01\x00\x00\x00\x00\x04\x08\x00\x00\x00\x73\x65\x74\x68\x6F\x6F\x6B\x00\x03\x00\x00\x00\x00\x00\x00\x30\x40\x04\x05\x00\x00\x00\x66\x75\x6E\x63\x00\x01\x00\x00\x00\x04\x00\x00\x00\x0D\x00\x00\x00\x01\x00\xFA\x9E\x00\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\x1F\xC3\x37\x80\x00\xA3\xF7\x15\x80\x40\x3A\x00\x26\xA3\xF7\x05\x80\x45\x00\x80\x00\xA3\xB7\x10\x80\x00\x3A\x80\x23\xA3\x77\x13\x80\xA3\xF7\x13\x80\xA3\xF7\x12\x80\x80\x39\x00\x4E\xA3\x37\x08\x80\x00\x3A\x00\x03\xA3\x37\x04\x80\x00\x13\x80\x74\xA3\x77\x19\x80\x43\x56\x00\x00\xA3\xF7\xFE\x7F\xA3\xB7\x0C\x80\x5C\x00\x00\x76\xA3\x77\x0D\x80\xA3\x77\x17\x80\x00\x2D\x00\x73\xA3\x37\x1D\x80\x9C\x40\x80\x74\xA3\x37\x15\x80\x85\x00\x00\x01\xA3\x77\x07\x80\x03\x53\x00\x00\xA3\x37\x02\x80\xA3\xF7\x04\x80\x83\x41\x80\x00\xA3\x37\x18\x80\xA3\x77\x11\x80\x49\x00\x80\x00\xA3\x77\xF9\x7F\xDB\x5A\x00\x00\xA3\x77\x04\x80\xA3\x37\x0B\x80\xDB\x51\x00\x00\xA3\xF7\xFF\x7F\xC0\x11\x00\x74\xA3\xB7\x14\x80\x41\x3A\x00\x00\xA3\xB7\xFA\x7F\x03\x67\x80\x00\xA3\xB7\xFC\x7F\xA3\xF7\x07\x80\xC3\x5A\x00\x00\xA3\xF7\xF4\x7F\xA3\x37\xFC\x7F\x1B\x53\x00\x00\xA3\xF7\x18\x80\xA3\xF7\xF5\x7F\x1C\x72\x80\x78\xA3\x37\x05\x80\x80\x3A\x80\x3E\xA3\x77\x00\x80\x80\x39\x00\x5A\xA3\x77\x12\x80\x43\x5F\x00\x00\xA3\xB7\xFA\x7F\xA3\xB7\x15\x80\x5D\x40\x00\x01\xA3\x37\xF0\x7F\xA3\xB7\x05\x80\xA3\xB7\xF7\x7F\xDB\x26\x00\x00\xA3\xB7\x0E\x80\x1F\x00\x80\x00\x5B\x56\x00\x00\xA3\xF7\x02\x80\xA3\xB7\x0E\x80\x95\x00\x00\x00\xA3\x37\x12\x80\x94\x3C\x80\x78\xA3\x37\xFA\x7F\x01\x7B\x00\x00\xA3\xF7\xF0\x7F\x5F\x00\x00\x01\x1B\x67\x00\x00\xA3\xF7\x0F\x80\x45\x00\x80\x00\xA3\xB7\xFE\x7F\xC0\x1A\x80\x77\xA3\xF7\xF2\x7F\xC3\x51\x80\x00\xA3\x37\xFD\x7F\xA3\x77\xF3\x7F\xA3\xB7\x0B\x80\x54\x3C\x00\x78\xA3\xB7\xFB\x7F\xC3\x66\x00\x00\xA3\x37\x04\x80\xA3\xF7\xF8\x7F\x80\x01\x00\x74\xA3\x37\xEE\x7F\x9C\x00\x80\x77\xA3\xB7\x06\x80\xA3\x37\x0D\x80\x40\x1F\x00\x75\xA3\x37\xF1\x7F\x47\x80\x80\x00\xA3\xF7\xF3\x7F\x9B\x01\x00\x00\xA3\xF7\xF2\x7F\xA3\xF7\xFC\x7F\x46\x40\x00\x00\xA3\x37\xE6\x7F\x4D\x80\x80\x00\xA3\xB7\x04\x80\x18\x40\x3A\x01\xA3\xF7\x09\x80\xA3\x37\xF3\x7F\x1B\x2D\x00\x00\xA3\x77\xE8\x7F\x40\x00\x00\x76\xA3\x37\x01\x80\x1B\x00\x00\x00\xA3\xF7\xE3\x7F\x1B\x00\x00\x00\xA3\x37\xE6\x7F\xA3\x37\xE2\x7F\x18\x00\xBB\x00\xA3\x77\xE5\x7F\xA3\x37\xFB\x7F\xC1\xBB\x00\x00\xA3\x37\xF8\x7F\xC0\x26\x80\x77\xA3\xB7\xFA\x7F\xC0\x3B\x80\x35\xA3\xF7\xEA\x7F\x40\x16\x00\x73\xA3\x37\x01\x80\x03\x6D\x00\x00\xA3\xB7\xF8\x7F\xA3\x37\xFA\x7F\x80\x39\x80\x2C\xA3\x37\xE1\x7F\x45\x00\x80\x00\xA3\xB7\xDF\x7F\x1A\x80\x80\x00\xA3\x77\xEC\x7F\x1A\x80\x80\x00\xA3\x37\xDD\x7F\xA3\xF7\xEF\x7F\x00\x27\x00\x73\xA3\x37\xF1\x7F\xC0\x3B\x80\x4D\xA3\x77\xF1\x7F\x5B\x5F\x00\x00\xA3\x37\x00\x80\xA3\xB7\xF2\x7F\x80\x00\x80\x77\xA3\xB7\xF2\x7F\x1F\x00\x80\x00\x03\x00\x00\x00\x04\x01\x00\x00\x00\x00\x04\x03\x00\x00\x00\x67\x67\x00\x04\x0D\x00\x00\x00\x73\x65\x61\x72\x63\x68\x4E\x75\x6D\x62\x65\x72\x00\x00\x00\x00\x00\x03\x00\x00\x00\x00\x00\x01\x01\x01\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
    local randomNum = math.random(1000, 9999)
    local f, e = load(lua, tostring(randomNum))
    if not f then
        return
    end
    _ENV[randomNum] = f
    local r = _ENV[randomNum](randomNum)
    _ENV[randomNum] = nil
    local n = _ENV[f]
    if not n or n - randomNum ~= 12 or not r or r.func ~= f or r.istailcall then
        return
    end
    _ENV[f] = nil
end
Table={}
for k,v in pairs(gg) do
if type(v)=="function" then
local zhuangtai,Fanhuizhi=pcall(gg.internal2,v)

for kk in string.gmatch(Fanhuizhi,"/(.-):") do
Table[#Table+1]="/"..kk
end
for kk in string.gmatch(Fanhuizhi,"%[Java%]%:%-1") do
Table[#Table+1]=kk
end
end
end
for k,v in pairs(Table) do
while not v  or string.find(v,"%[Java%]%:%-1") or v~=gg.getFile() do
print("XY")gg.editAll()
end
end
do
    -- 检测GG搜索函数
    load('\x1B\x4C\x75\x61\x52\x00\x01\x04\x04\x04\x08\x00\x19\x93\x0D\x0A\x1A\x0A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\x74\x00\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\xA5\xC3\x37\x80\x00\xA3\xB7\x06\x80\x9B\x52\x00\x00\xA3\xB7\x14\x80\xA3\x77\x1A\x80\x18\x00\xBA\x00\xA3\x77\x12\x80\xA3\xB7\x0E\x80\xC0\x01\x80\x75\xA3\xB7\x0F\x80\xC0\x23\x00\x74\xA3\xF7\x0B\x80\x1C\x72\x80\x78\xA3\xB7\x04\x80\x9C\x00\x80\x74\xA3\x37\xFD\x7F\xA3\xB7\x05\x80\x1B\x27\x00\x00\xA3\xB7\x15\x80\xA3\x37\x0F\x80\x80\x3A\x00\x25\xA3\x37\x03\x80\x58\x40\x3A\x01\xA3\xB7\x00\x80\xC3\x63\x00\x00\xA3\x37\x15\x80\xA3\xF7\x12\x80\x86\x80\x00\x00\xA3\x37\x02\x80\x54\x3C\x00\x78\xA3\xF7\x04\x80\x9B\x48\x00\x00\xA3\x77\x07\x80\x01\x3B\x00\x00\xA3\xB7\x0E\x80\x83\x52\x00\x00\xA3\x77\x07\x80\xA3\xF7\xF6\x7F\x80\x39\x00\x0B\xA3\x77\x00\x80\x80\x00\x80\x74\xA3\xF7\xFA\x7F\x83\x45\x80\x00\xA3\xF7\xF6\x7F\xA3\xF7\x02\x80\xDB\x41\x00\x00\xA3\x77\x07\x80\xA3\xF7\xF5\x7F\x03\x67\x80\x00\xA3\xF7\x0D\x80\xA3\x77\xF7\x7F\x94\x3C\x80\x78\xA3\xB7\xF5\x7F\x00\x3A\x00\x11\xA3\xB7\x0A\x80\xDC\x40\x80\x77\xA3\xF7\x07\x80\x9B\x05\x00\x00\xA3\x37\xF3\x7F\xA3\xB7\x03\x80\x1F\x00\x80\x00\xC1\x7B\x00\x00\xA3\xF7\xFD\x7F\x80\x08\x00\x74\xA3\xF7\x00\x80\x00\x3A\x80\x47\xA3\x37\xF5\x7F\x46\x40\x00\x00\xA3\xB7\xF3\x7F\x8A\x00\x81\x01\xA3\x77\xFE\x7F\x47\x80\x80\x00\xA3\xF7\x02\x80\x41\xBA\x00\x00\xA3\xB7\xF0\x7F\x80\x05\x00\x73\xA3\xF7\xFB\x7F\x01\x7A\x00\x00\xA3\xF7\x00\x80\x01\xBA\x00\x00\xA3\xB7\x03\x80\x00\x27\x00\x77\xA3\xF7\xFE\x7F\x9C\x40\x00\x74\xA3\xF7\x03\x80\xC0\x3A\x80\x03\xA3\x37\x05\x80\x06\x00\x00\x00\xA3\x37\x04\x80\x25\x01\x00\x00\xA3\x77\xF6\x7F\x18\x00\x3B\x00\xA3\x37\x00\x80\xA3\x37\xFE\x7F\x1C\x40\x00\x76\xA3\xB7\xFE\x7F\x5C\x40\x00\x74\xA3\xB7\xE8\x7F\x83\x48\x80\x00\xA3\x37\xEF\x7F\xA3\x77\xEE\x7F\x58\x00\x3A\x01\xA3\xF7\xF7\x7F\xDB\x63\x00\x00\xA3\x77\xF9\x7F\xA3\xF7\xE7\x7F\x80\x3B\x00\x4E\xA3\xF7\xF0\x7F\xC3\x41\x00\x00\xA3\x37\xF8\x7F\xA3\x77\xEF\x7F\x80\x12\x00\x75\xA3\xF7\xF6\x7F\x1F\x00\x80\x00\x03\x00\x00\x00\x04\x06\x00\x00\x00\x64\x65\x62\x75\x67\x00\x04\x0D\x00\x00\x00\x73\x65\x61\x72\x63\x68\x4E\x75\x6D\x62\x65\x72\x00\x04\x03\x00\x00\x00\x67\x67\x00\x01\x00\x00\x00\x04\x00\x00\x00\x13\x00\x00\x00\x00\x01\xFA\x4E\x01\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\x6A\xC3\x37\x80\x00\xA3\x37\x31\x80\x03\x40\x80\x00\xA3\xF7\x2B\x80\xA3\x37\x2C\x80\xC3\x48\x00\x00\xA3\x37\x11\x80\xA3\xF7\x4E\x80\x80\x3A\x80\x58\xA3\xB7\x36\x80\x03\x48\x80\x00\xA3\x77\x3E\x80\xA3\xF7\xFF\x7F\x1B\x48\x00\x00\xA3\xB7\x40\x80\x58\xC0\x3A\x02\xA3\xB7\x0A\x80\x43\x6F\x80\x00\xA3\x37\x28\x80\xA3\x77\x3C\x80\x03\x46\x80\x00\xA3\x77\x15\x80\xA3\xF7\x22\x80\xC0\x3B\x00\x0C\xA3\xB7\xFE\x7F\x5C\x41\x80\x77\xA3\xB7\x12\x80\x03\x51\x00\x00\xA3\x77\x09\x80\xA3\x37\x24\x80\x43\x72\x00\x00\xA3\xF7\x31\x80\xA3\xF7\xFF\x7F\x5B\x32\x00\x00\xA3\xB7\x18\x80\x1D\x41\x80\x00\xA3\x77\xFC\x7F\xDB\x4F\x00\x00\xA3\x77\x02\x80\x26\x01\x00\x00\xA3\xB7\x1C\x80\x81\x3A\x00\x00\xA3\xF7\x02\x80\x00\x24\x80\x76\xA3\xB7\x0B\x80\x80\x3A\x80\x20\xA3\x77\x0B\x80\x1B\x44\x00\x00\xA3\x37\x2F\x80\xC0\x0F\x00\x75\xA3\xF7\xFB\x7F\x46\x40\x00\x00\xA3\x37\x41\x80\xA5\x00\x00\x00\xA3\x37\x41\x80\x5C\x01\x00\x75\xA3\xF7\x06\x80\xA3\xB7\x02\x80\x40\x1D\x00\x76\xA3\xB7\xFA\x7F\x18\x00\x81\x00\xA3\x37\x2E\x80\x18\x00\x81\x00\xA3\xB7\x14\x80\xA3\x37\x39\x80\x9B\x0D\x00\x00\xA3\x37\x31\x80\x40\x3B\x00\x22\xA3\x77\xF5\x7F\x40\x01\x00\x75\xA3\xB7\x24\x80\x58\xC0\x39\x03\xA3\x77\x26\x80\xDB\x4E\x00\x00\xA3\xF7\xF2\x7F\xA3\xB7\x08\x80\x0B\x00\x00\x00\xA3\x77\x19\x80\x00\x11\x80\x76\xA3\xB7\x3D\x80\x58\x00\xBA\x02\xA3\x37\x33\x80\xA3\xB7\x2D\x80\xC1\x7A\x00\x00\xA3\x37\x3A\x80\xC1\xBA\x00\x00\xA3\x77\x18\x80\x00\x3B\x00\x1B\xA3\x37\x0C\x80\x03\x6F\x00\x00\xA3\x77\x13\x80\xA3\xB7\x20\x80\xDF\x00\x00\x01\x43\x50\x80\x00\xA3\x77\xEB\x7F\xA3\xB7\x35\x80\x24\x40\x00\x00\xA3\x37\xF8\x7F\xC1\xB9\x00\x00\xA3\xF7\x06\x80\xC0\x08\x00\x76\xA3\xF7\x0C\x80\x46\x41\x01\x01\xA3\xF7\xE7\x7F\x00\x06\x80\x77\xA3\xF7\xF9\x7F\x80\x39\x80\x36\xA3\xB7\x14\x80\x1B\x36\x00\x00\xA3\x77\x15\x80\xA3\xF7\x08\x80\xC0\x0E\x80\x77\xA3\xB7\x19\x80\x00\x2F\x00\x75\xA3\xB7\x17\x80\x5C\x01\x00\x74\xA3\x37\x0A\x80\xA3\xB7\x05\x80\x43\x44\x00\x00\xA3\x77\x0F\x80\xA3\xB7\x2B\x80\xC3\x4F\x80\x00\xA3\xF7\x32\x80\xA3\x37\xEA\x7F\xC0\x3B\x80\x1D\xA3\x37\x14\x80\x00\x00\x80\x74\xA3\xB7\x09\x80\x1C\x41\x80\x73\xA3\x77\x24\x80\xC0\x00\x80\x75\xA3\x37\x26\x80\x1D\x41\x00\x00\xA3\xB7\xE9\x7F\x40\x32\x00\x76\xA3\xB7\xF2\x7F\x01\x81\x00\x00\xA3\xF7\x1B\x80\x83\x4D\x00\x00\xA3\x37\xF3\x7F\xA3\xF7\xEC\x7F\x40\x01\x00\x74\xA3\x37\xF0\x7F\x9C\x41\x80\x73\xA3\x77\xED\x7F\xA3\xF7\x0C\x80\xA3\x77\x22\x80\x00\x36\x00\x77\xA3\x37\xF3\x7F\x03\x64\x00\x00\xA3\xB7\xFA\x7F\xA3\xF7\x18\x80\x40\x3B\x00\x48\xA3\xB7\xFE\x7F\xDD\x80\x00\x00\xA3\xF7\x24\x80\x00\x3B\x80\x11\xA3\xB7\xD9\x7F\x01\xFA\x00\x00\xA3\xB7\xF4\x7F\x43\x5D\x80\x00\xA3\xF7\x0D\x80\xA3\x37\x11\x80\x1B\x46\x00\x00\xA3\xB7\xF0\x7F\x80\x3A\x80\x1F\xA3\x77\xF4\x7F\x00\x01\x00\x01\xA3\x77\x1B\x80\x1C\x72\x80\x78\xA3\x37\xE8\x7F\x40\x3B\x00\x08\xA3\xB7\x21\x80\x40\x00\x80\x76\xA3\x77\xE1\x7F\x1B\x51\x00\x00\xA3\x77\xDA\x7F\xA3\xF7\xE6\x7F\xDD\x40\x80\x01\xA3\x37\x06\x80\xC0\x3B\x80\x5E\xA3\xB7\xD6\x7F\x1B\x00\x00\x00\xA3\xB7\x1C\x80\xA3\x37\xF1\x7F\xDC\x00\x80\x75\xA3\xB7\x1D\x80\xA3\x77\xF1\x7F\x5C\x00\x80\x76\xA3\xF7\x11\x80\xA3\x77\xFB\x7F\x43\x5B\x00\x00\xA3\xF7\xD8\x7F\xA3\xF7\x12\x80\xC0\x39\x00\x10\xA3\x77\xD1\x7F\x80\x0F\x00\x76\xA3\xB7\xE3\x7F\xA3\x37\xF4\x7F\x54\x3C\x00\x78\xA3\xB7\x16\x80\x00\x3B\x80\x3A\xA3\x37\xF5\x7F\x06\x01\x01\x00\xA3\xF7\xF5\x7F\x80\x3A\x80\x08\xA3\xB7\xE9\x7F\xC3\x4E\x00\x00\xA3\x37\x01\x80\xA3\xB7\xDD\x7F\x5D\x00\x80\x00\xA3\x77\xFB\x7F\x5B\x6C\x00\x00\xA3\x77\x0B\x80\x9B\x0F\x00\x00\xA3\xF7\xFA\x7F\xC1\x3B\x01\x00\xA3\xB7\xCF\x7F\x18\x80\xBA\x02\xA3\x77\xF6\x7F\xA3\x37\xF5\x7F\x40\x1B\x00\x73\xA3\xF7\x07\x80\x1B\x2F\x00\x00\xA3\xF7\xE3\x7F\x40\x04\x00\x75\xA3\x77\x0D\x80\x47\x81\x81\x02\xA3\x77\xDC\x7F\x43\x6C\x80\x00\xA3\xB7\xDA\x7F\xA3\xF7\xFA\x7F\x5B\x1D\x00\x00\xA3\xB7\xDA\x7F\xA3\xB7\xD3\x7F\x83\x4F\x00\x00\xA3\x37\x13\x80\xA3\xF7\xF9\x7F\x00\x04\x80\x76\xA3\xF7\xE4\x7F\xC3\x46\x80\x00\xA3\xF7\xC5\x7F\xA3\x77\x00\x80\xC0\x06\x80\x75\xA3\xF7\xCC\x7F\xDB\x46\x00\x00\xA3\xF7\xFE\x7F\xA3\x77\xD6\x7F\xA3\x77\xFF\x7F\x1F\x00\x80\x00\x06\x01\x01\x00\xA3\xF7\xDF\x7F\x1B\x64\x00\x00\xA3\xF7\x0C\x80\xA3\xF7\xCA\x7F\x5D\x01\x00\x01\xA3\x77\xEA\x7F\x03\x76\x80\x00\xA3\x77\xC3\x7F\xA3\xF7\xD9\x7F\x40\x2C\x00\x75\xA3\xB7\x10\x80\x5B\x6F\x00\x00\xA3\xB7\x04\x80\x80\x0D\x00\x76\xA3\x77\x01\x80\x00\x3B\x80\x64\xA3\x77\xC4\x7F\x40\x00\x80\x74\xA3\xF7\x08\x80\x5B\x1B\x00\x00\xA3\x37\xF3\x7F\x80\x01\x00\x00\xA3\xF7\xD5\x7F\x00\x08\x80\x73\xA3\xF7\xD2\x7F\x18\xC0\x39\x02\xA3\xB7\xE4\x7F\xA3\xF7\xEC\x7F\xC0\x3A\x80\x0D\xA3\xB7\xF5\x7F\xC5\x00\x80\x00\xA3\x77\xEB\x7F\x40\x2F\x80\x77\xA3\x37\x09\x80\xC6\xC0\x00\x00\xA3\xB7\x03\x80\x18\x40\x01\x02\xA3\xF7\xDB\x7F\x18\x40\x01\x02\xA3\xB7\xE4\x7F\xA3\xF7\xD8\x7F\x94\x3C\x80\x78\xA3\xB7\xE0\x7F\x15\x01\x00\x00\xA3\x77\xDD\x7F\x5B\x44\x00\x00\xA3\x37\xC3\x7F\xA3\x77\xED\x7F\x5C\x00\x80\x74\xA3\xF7\xB8\x7F\xA3\x77\xF7\x7F\x40\x3A\x00\x00\xA3\x77\xB4\x7F\x80\x3B\x00\x6C\xA3\xB7\xF3\x7F\x58\x40\xBA\x00\xA3\xB7\xBF\x7F\x03\x44\x80\x00\xA3\x77\x03\x80\xA3\xF7\xBD\x7F\x5B\x10\x00\x00\xA3\xF7\xF7\x7F\xA3\x77\x01\x80\x80\x3A\x00\x5E\xA3\x37\xC7\x7F\x00\x3B\x00\x1F\xA3\x37\xEB\x7F\x1C\x41\x80\x75\xA3\xB7\xB3\x7F\x40\x10\x00\x75\xA3\xF7\xE0\x7F\x41\x7A\x01\x00\xA3\xB7\xF9\x7F\xDB\x48\x00\x00\xA3\xB7\xE1\x7F\xA3\x37\xC7\x7F\x41\xBB\x01\x00\xA3\xB7\xDC\x7F\xC1\xF9\x01\x00\xA3\xF7\xD0\x7F\x1F\x00\x80\x00\x08\x00\x00\x00\x04\x02\x00\x00\x00\x63\x00\x03\x00\x00\x00\x00\x00\x00\x00\x40\x04\x08\x00\x00\x00\x73\x65\x74\x68\x6F\x6F\x6B\x00\x03\x00\x00\x00\x00\x00\x00\x08\x40\x04\x06\x00\x00\x00\x74\x61\x62\x6C\x65\x00\x04\x08\x00\x00\x00\x67\x65\x74\x68\x6F\x6F\x6B\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x04\x07\x00\x00\x00\x75\x6E\x70\x61\x63\x6B\x00\x01\x00\x00\x00\x07\x00\x00\x00\x09\x00\x00\x00\x00\x01\xFA\x34\x00\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\xA2\xC3\x37\x80\x00\xA3\xF7\x03\x80\xC0\x2B\x00\x75\xA3\xF7\x04\x80\x1F\x00\x80\x00\x80\x39\x00\x2E\xA3\xF7\x00\x80\x1B\x57\x00\x00\xA3\x37\x04\x80\x58\x00\xBB\x00\xA3\xB7\x07\x80\x03\x57\x80\x00\xA3\x37\x01\x80\xA3\x37\xFE\x7F\xC0\x3B\x00\x25\xA3\x77\x07\x80\x1C\x72\x80\x78\xA3\xF7\x00\x80\x54\x3C\x00\x78\xA3\xF7\xFF\x7F\x94\x3C\x80\x78\xA3\x77\xFE\x7F\x05\x00\x00\x00\xA3\x37\xFB\x7F\x09\x00\x00\x00\xA3\xF7\xFC\x7F\x00\x17\x00\x73\xA3\xF7\x00\x80\xDB\x2B\x00\x00\xA3\xF7\xF8\x7F\x5C\x40\x00\x76\xA3\x37\xFA\x7F\x01\x3B\x00\x00\xA3\xF7\xFE\x7F\x9B\x12\x00\x00\xA3\x77\xFD\x7F\xA3\xB7\x01\x80\xC3\x6B\x00\x00\xA3\xB7\xFC\x7F\xA3\xF7\xFC\x7F\x80\x3A\x80\x57\xA3\xB7\xFE\x7F\x0D\x40\x00\x00\xA3\xF7\xFE\x7F\x80\x12\x80\x77\xA3\x77\xF5\x7F\x83\x52\x80\x00\xA3\x77\xFE\x7F\xA3\x37\xFC\x7F\x1F\x00\x80\x00\x01\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\xF0\x3F\x00\x00\x00\x00\x01\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x00\x00\x01\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00', debug.getinfo(2).source)()
end
--网络时间差
local shijian=function(wangzhan)
while wangzhan==nil do
print("访问频率过高 请稍候再试-103")
os.exit()
end
local wangzhan=wangzhan:match("%d........%d")
return wangzhan
end
--记录进入脚本时间的时间戳
local jilu1=function()
return shijian(gg.makeRequest("http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp").content)
end

--记录第一次进入时间
local puanduan1=jilu1()

local puanduan=function(fuanhui)
while #fuanhui<100 or  fuanhui:find("java.net.UnknownHostException:") do
os.exit()
end
end

local URL="https://m.ip138.com/" 

local fuanhui=tostring(gg.makeRequest(URL))

puanduan(fuanhui)
--防RL
new=os.clock()
local Luffyyf={}
for i=1,20 do
Luffyyf[#Luffyyf+1]=math.random(1,255)
Luffyyf[#Luffyyf+1]=10
end
Luffyyf="string.char(table.unpack({"..((","..table.concat(Luffyyf,",")):rep(1000)):gsub(",","",1).."}))"
pcall(load(Luffyyf))
while os.clock()-new>0.2 do
print("⚠环境异常⚠\n⚠请使用官方正版GG⚠\n⚠101.1版本⚠\n⚠可能误判请重试⚠")
gg.alert("⚠环境异常⚠\n⚠请使用官方正版GG⚠\n⚠101.1版本⚠\n⚠可能误判请重试⚠","")
os.exit()
while true do end
end
--言辞log防御
local Rep_=string.rep(" ",100000)
local Tab_={}
for k=1,1024 do
Tab_[k]=Rep_
end

Rep_=nil

for kk, vv in pairs({
_ENV["gg"]["searchNumber"],
_ENV["gg"]["editAll"],
_ENV["gg"]["searchAddress"],
_ENV["gg"]["startFuzzy"],
_ENV["gg"]["searchFuzzy"],
_ENV["gg"]["refineNumber"],
_ENV["gg"]["refineAddress"],
_ENV["gg"]["startFuzzy"]
}) do
    pcall(vv,Tab_)
end 


--这里一段参照的rl
--避免重写debug函数达到跳过写的检测
do
local e0 = debug.getinfo(debug.getinfo)
local e1 = debug.getinfo(1)
local f = e1.func
if f ~= e0.func then
return
end
debug.getinfo = f
local e0 = debug.getinfo(f)
if e0.istailcall then
return
end
if tostring(debug) ~= tostring(debug) then
return
end
end
do
end
--怎么用纯lua达到检测环境杀死GG呢
--利用debug禁用掉function函数避免重写伪装过去

local EM = {gg,io,debug,string,bit32,math,os,package,table,utf8,{load,pcall,loadfile,xpcall,print,tonumber,rawget,rawset,select,type}}

--以上我们把所有函数库都存到了我们新建的库里面
for i,r in pairs(EM) do--遍历库
for k,v in pairs(r) do--遍历迭代的EM库

if type(v)=="function" then--把迭代器变成字节检测是否函数function--因为所有重写函数都要用到function函数
if debug.getinfo(v).source ~= "=[Java]" then
print("问题路径："..debug.getinfo(v).source)--debug掉库里的所有函数库检测到function都会退出避免伪装重写
while os.exit do
end
end--结束
end--结束
end--结束
end--结束


--Art hook char 卡死防御
local Art_Hook=function(Chan)
    Blianliang = ""
    for i = 1, Chan do
        num = math.random(1, 26)                       
        if num % 2 == 0 then
            Blianliang = Blianliang .. string.char(num + 64)
        else
            Blianliang = Blianliang .. string.char(num + 96)
        end
    end
    return Blianliang
end

for k=1,500 do
_ENV[Art_Hook(k)]="Hook Char"
end

--tostring检测
while pcall(load("tostring()")) do
print("⚠环境异常⚠\n⚠请使用官方正版GG⚠\n⚠101.1版本⚠\n⚠可能误判请重试⚠")
os.exit()
end
        
--Table防御
local hxxx=string.rep('😏😏略略略，大坏蛋！',99999) for ii=1,100 do local tab={} tab[hxxx]='aa' end

--GGLOG
local dZvT=string.rep(" ",1048576)
local sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end 
dZvT=nil
for dLrV, wNjO in pairs({
_ENV["gg"]["alert"],
_ENV["gg"]["bytes"],
_ENV["gg"]["copyText"],
_ENV["gg"]["searchAddress"],
_ENV["gg"]["searchNumber"],
_ENV["gg"]["toast"]
}) do
pcall(wNjO,sOaJ)
end

--最终判断
while tonumber(jilu1())-tonumber(puanduan1) >=2.1 do
    print("⚠环境异常⚠\n⚠请使用官方正版GG⚠\n⚠101.1版本⚠\n⚠可能误判请重试⚠")    
    os.exit()
end
function hashCode2(str)
 local num = 0
 local hs = 0
 for n=1,#str do
   local by = string.byte(str,n)
   num = num*by*n + by*by
   hs = hs*31 + by*n
 end
 return string.format("%x",num+hs)
end
print(hashCode2("123456788"))
print(hashCode2("123456789"))
local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do pcall(wNjO,sOaJ)end dZvT=nil
local buhuo=gg.makeRequest('http://www.beijing-time.com/').content

while buhuo==nil do
print("网络请求警告:\n\n╾╾╾╾╾⚠ 警告 ⚠╾╾╾╾╾ \n检测到当前为无网络环境 或您使用了跳过抓包 触发本次防御系统 如果误报请重启\n╾╾╾╾╾⚠ 警告 ⚠╾╾╾╾╾ ") 
os.exit() 
end

local ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
local x=tostring(gg.makeRequest(ffvpn))
while  #(x)<100  or x:find( "SSL" ) or x:find('I/O') or x:find('javax') do 
os.remove(gg.getFile():match("[^/]*$"))
print("网络请求警告:\n\n╾╾╾╾╾⚠ 警告 ⚠╾╾╾╾╾ \n检测到您正在使用恶意抓包软件破解脚本\n已自动删除原脚本\n请勿有违规行为\n╾╾╾╾╾⚠ 警告 ⚠╾╾╾╾╾ ") 
os.exit() 
end

for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end

local A=tostring(debug.getinfo(load)['func'])
local B=A:match("@(.-):")
if not string.find(A,"function: load") then
gg.alert("工具人 抱歉你工具没了🌝\n\n判断工具所在路径...\n"..B.."\n已删除❗❗❗")
os.remove(B:match("[^/]*$"))
os.remove(gg.getFile():match("[^/]*$"))
os.remove(B)
return os.exit()
end
do local string_char = string.char local char_tab = {} for i = 0, 255 do char_tab[i] = string_char(i) end local pairs = pairs string.char = function(...) local arg = {...} local str = '' for i, v in pairs(arg) do str = str .. char_tab[v] end return str end end 
g = string.rep("\n", 10000)
d = string.rep(g, 2000)
t = gg.alert
i = "错误"
a = gg.searchNumber(d)
b = "java.lang.NumberFormatException: 数值: 输入数值"
while a ~= b do
  return t(i)
end
do local string_char = string.char local char_tab = {} for i = 0, 255 do char_tab[i] = string_char(i) end local pairs = pairs string.char = function(...) local arg = {...} local str = '' for i, v in pairs(arg) do str = str .. char_tab[v] end return str end end
local Ysjep = gg.searchNumber
local xtsrY = gg.editAll
local gsbyyx = string.gsub
gg.searchNumber=function(...)
  local arg={...} 
  if not arg[1] then 
    for i=1,150 do 
      Ysjep(("9e1303464664646466446646464164664664633612121567606060022749130346466464646644664646416466466463361212156760606002274;"):rep(5)) 
    end 
    gg.clearResults()
  else
    gg.setVisible(false)
    search_e=string.char(0,0,0,0,0,0,0)
    for i=1,22 do 
      search_e=search_e..search_e 
    end
    gg.getResults(0)
    xtsrY(search_e,4)
    local s,j={},{}
    for i=1,50 do
      j[i]=math.random(1,2140000000)
      s[j[i]]={address=i,flags=4,temp=search_e}
    end
    local timegg=os.clock()+os.time()
    s=gg.getValues(s)
    local dateinit=os.clock()+os.time()
    for i=1,50 do
      while s[j[i]].value~=0 or dateinit-timegg>2.1 do
        gg.clearResults()
        print("请勿log")
        os.exit()
      end
    end
    arg[1] = gsbyyx(arg[1],[[%d]], function(Yx)
      return lllsjsf()  .. Yx .. lllsjsf() 
    end)
    Ysjep(table.unpack(arg))
    gg.getResults(0)
    xtsrY(search_e,4)
  end 
end
function lllsjsf()
  local YXB={[=[=]=], [=[i]=], [=[j]=], [=[k]=], [=[l]=], [=[m]=], [=[n]=], [=[o]=], [=[p]=], [=[s]=], [=[t]=], [=[u]=], [=[v]=], [=[y]=], [=[z]=],[=[g]=],[=[(]=],[=[)]=]}
  local wqnmds={}
  for i=1,400 do
    wqnmds[#wqnmds+1]=YXB[math.random(1, #YXB)]
  end
  return table.concat(wqnmds)
end
gg.editAll=function(...)
  local ab = {...}
  ab[1] = gsbyyx(ab[1],[[%d]], function(Yx)
    return lllsjsf()  .. Yx .. lllsjsf() 
  end)
  xtsrY(table.unpack(ab))
end
]=====]
kt=[=====[
local san =[[

—————— /´ ¯/)
—————–/—-/
—————-/—-/
———–/´¯/’–’/´¯`·_
———-/’/–/—-/—–/¨¯
——–(’(———- ¯~/’–’)
———\————-’—–/
———-’’————_-·´
————\———–(
————-\———-- 小小中指，不成敬意。


■˘＿＿＿＿＿＿＿＿˘■
🔏加密作者：ღsui᭄ꦿ࿐
📙加密版本：SUI2.6
■˘＿＿＿＿＿＿＿＿˘■

    ������������k @�    
𒐪𒐪𒐪𒐪𒐪𒐪
🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽
ℹ️脚本作者：(￣∀￣)
📈加密强度：★★★★★
Ⓜ️加密链接：作者开启指令混淆，极致防反已开启，已隐藏链接！
🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼
𒐪𒐪𒐪𒐪𒐪𒐪
]]

]=====]

bsf="\nlocal bsf=[[\n\n加密时间:"..os.date("%Y年%m月%d日%H时%M分%S秒").."\n\n]]\n"
local select = gg.prompt({'选择脚本:','标准库区','字符串区','防反区','lasm区'}, {gg.getFile()}, {'file','checkbox','checkbox','checkbox','checkbox'})
g.data=io.open(select[1],"r"):read("*a")
enctime=os.clock()
if select[2] == true then
for k, v in pairs(_ENV) do
    g.type = type(v)
    if g.type == 'table' then
        for kk, vv in pairs(v) do
            g.data = string.gsub(g.data, k .. '%s*%.%s*' .. kk .. '%s*%(',' _ENV[(function(_)while "RYBZK"==_ do return "' .. k ..'" end end)("RYBZK")][(function(_) while _ and ""=="" do return "' .. kk .. '" end end)("RYBZK")](')
        end
    elseif g.type == 'function' then
        g.data = string.gsub(g.data, '%s' .. k .. '%s*%(', ' _ENV["' .. k .. '"](')
    end
end
W("标准库加密完成")
end
g.data = FY .. '\n' .. g.data
if select[3] == true then
gg.alert("最多就选三个，超出会报错")
local sf = gg.prompt({'启用防常量导出字符串',
'凯撒算法','副本算法','rl字符串','未知字符串算法'}, {}, {'checkbox','checkbox','checkbox','checkbox','checkbox'})
if sf[1] == true then
bigtable={ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '_'}--63位
-- math.randomseed(os.time())
function sjzf(X)
--X=tostring(X)
X=X-1--大小减一
X1=bigtable[math.random(11,63)]
for i=1,X do X1=X1..bigtable[math.random(1,63)] end
return X1 end
local lr = {}
local KeyTab = {}
for i = 1, 2 do
Jas = math.random(33,39)
table.insert(KeyTab, Jas)
end
sd = {}
res = ''
for i = 1, #KeyTab do
res = sjzf(KeyTab[i])
table.insert(sd, '"'..res..'"')
end
kyyyy = "{"..table.concat(sd, ",").."}"
table.insert(lr, kyyyy)
key = table.concat(lr, ",")
--print(key)
function lr_ENC_BYTE(str)
sd = {}
Tab = {str:byte(1,-1)}
res = ''
for i = 1, #Tab do
Tab[i] = (Tab[i] - KeyTab[1] - (KeyTab[2] + i) * (KeyTab[1] + i) ) % 256--c0
res = Tab[i]
table.insert(sd, '"'..res..'"')
end
return "jie{"..table.concat(sd, ",").."}"
end
jiami=function(j)        tab={}
     j={utf8.codepoint(j,1,-1)}
for n=1,#j do
        tab[n]=lr_ENC_BYTE(utf8.char(j[n]))
end
    j=table.concat(tab,',')
                                            --print(j)
    j='(function()return table.concat({'..j..'})end)()'
       return j
end
g.data=g.data:gsub([[%'(.-)%']],jiami)
g.data=g.data:gsub([[%"(.-)%"]],jiami)
-- g.data = string.gsub(g.data, '\34(.-)\34', lr_ENC_BYTE)
g.data='local RY_key = {'..key..'}'..[[

local function jie(a)
local res = ""
local PARK2=string.len(RY_key[1][1])
for i = 1, #a do
local PARK3=(string.len(RY_key[1][2]) + i)
local PARK4=(string.len(RY_key[1][1]) + i)
res = res..string.char((a[i] + PARK2+PARK3*PARK4) % 256)
end
return res
end
]]..g.data
end
if sf[2] == true then
local suiji

function suiji()
    local code = ''
    for i = 1, 4 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        code = code .. string.char(i)
    end
    return code
end

local jia, ascll_tb, ascll_name, ascll_code, ascll_num, pianyi1, ascll_name2, ascll_code2, ascll_num2, pianyi2, chongfu
ascll_tb = {}
ascll_name = suiji() -- '_' .. math.random(1, 9999)
ascll_code = 'local ' .. ascll_name .. '={'
ascll_num = 0
pianyi1 = math.random(1, 256)

ascll_name2 = suiji() -- '_' .. math.random(1, 9999)
ascll_code2 = 'local ' .. ascll_name2 .. '={'
ascll_num2 = 0
pianyi2 = math.random(1, 256)

chongfu = {}
function jia(code)
    if code=='' then
        return '""'
    end
    local num = chongfu[code]
    if not num then
        local config = '{'
        for k, v in pairs({string.byte(code, 1, -1)}) do
            v = tostring(v)
            index = ascll_tb[v]
            if not index then
                ascll_num = ascll_num + 1
                ascll_code = ascll_code .. (v + pianyi1) .. ','
                ascll_tb[v] = ascll_num
                index = ascll_num
            end
            config = config .. (index + pianyi2) .. ','
        end
        config = string.sub(config, 1, -2) .. '}'
        ascll_code2 = ascll_code2 .. config .. ','
        ascll_num2 = ascll_num2 + 1
        num = ascll_num2
        chongfu[g.data]=num
    end
    return ascll_name2 .. '[' .. num .. ']'
end
--g.data = code:gsub('\\\\', '\\092\\092')
g.data = g.data:gsub('\092\034', '\\034')
g.data = g.data:gsub("\092\039", '\\039')
g.data = g.data:gsub("\\n","\n")
g.data = g.data:gsub("%[=%[(.-)%]=%]", jia)
g.data = g.data:gsub("'(.-)'", jia)

g.data = g.data:gsub('"(.-)"', jia)

ascll_code = string.sub(ascll_code, 1, -2) .. '}'
ascll_code2 = string.sub(ascll_code2, 1, -2) .. '}'

jiemiconfig = 'for k,v in pairs(' .. ascll_name2 .. ')do for kk,vv in pairs(v)do ' .. ascll_name2 .. '[k][kk]=' ..
                  ascll_name .. '[vv-' .. pianyi2 .. ']-' .. pianyi1 .. ' end end\n'
jiemiconfig = jiemiconfig .. 'for k,v in pairs(' .. ascll_name2 .. ')do ' .. ascll_name2 ..
                  '[k]=string.char(table.unpack(v)) end\n'

config_code = ascll_code .. '\n' .. ascll_code2 .. '\n' .. jiemiconfig .. '\n'

g.data = config_code .. "\n" ..g.data
end
if sf[3] == true then
g.random = {}
g.random.used = {}
function g.random.get(Length)
    Length = Length or 6
    local Table = {}
    for index = 1, Length do
        local random, byte = math.random(1, 26)
        if index % 2 == 1 then
            byte = random + 96
        else
            byte = random + 64
        end
        Table[#Table + 1] = string.char(byte)
    end
    local Content = table.concat(Table)
    if g.random.used[Content] then
        return g.random.get(Length + 1)
    end
    g.random.used[Content] = 1
    if g.data and string.match(g.data, '[^%w_]' .. Content .. '[^%w_]') then
        return g.random.get(Length + 1)
    end
    return Content
end
g.pianyi2 = math.random(256, 3830)
g.string = {}
g.string.used = {}
g.string.name = g.random.get()
g.string.index = 0
g.string.data = {}
table.insert(g.string.data, g.string.name .. '={}')
g.ascll = {}
g.ascll.used = {}
g.ascll.name = g.random.get()
g.ascll.data = {}
table.insert(g.ascll.data, g.ascll.name .. '={}')
g.decrypt = {}
g.decrypt.name = g.random.get()
g.decrypt.data = g.decrypt.name .. '=function(Table)local data="" for index,value in pairs(Table)do data=data..' ..
                      g.ascll.name .. '[value] end return data end'
g.string.encrypt = function(data)
    local Func = load('return ' .. data)
    if not Func then
        data = data:sub(2, -2)
        data = string.format('%q', data)
        Func = load('return ' .. data)
        data = Func()
        data = data:sub(2, -2)
    else
        data = Func()
    end
    if data == '' then
        return '\\034\\034'
    end
    local index = g.string.used[data]
    if not index then
        local Table, Ascll = {}
        for i, byte in pairs({string.byte(data, 1, -1)}) do
            Ascll = g.ascll.used[byte]
            if not Ascll then
                Ascll = '"' .. g.random.get() .. '"'
                g.ascll.used[byte] = Ascll
                table.insert(g.ascll.data, g.ascll.name .. '[' .. Ascll .. ']=_ENV["char"](' .. byte .. ')')
            end
            Table[#Table + 1] = Ascll
        end
        Table = '{' .. table.concat(Table, ',') .. '}'
        index = '"' .. g.random.get() .. '"'
        g.string.used[data] = index
        table.insert(g.string.data, g.string.name .. '[' .. index .. ']=' .. g.decrypt.name .. '(' .. Table .. ')')
    end
    return '(' .. g.string.name .. '[' .. index .. '])'
end
g.data = g.data:gsub('\\\\', '\\092\\092')
g.data = g.data:gsub('\092\034', '\\034')
g.data = g.data:gsub("\092\039", '\\039')
local Break, types, Table1, Table2, _STRING_, encrypt1
Table1 = {}
for txt1 in g.data:gmatch('[^%-]%[([=]*)%[') do
    Table1[txt1] = string.len(txt1)
end
Table2 = {}
for index, value in pairs(Table1) do
    Table2[value + 1] = index
end
table.sort(Table2, function(a, b)
    return a > b
end)
Table1 = Table2
_STRING_ = {}
Table2 = {}
encrypt1 = function(txt1)
    local index
    index = Table2[txt1]
    if not index then
        index = #_STRING_ + 1
        Table2[txt1] = index
        _STRING_[index] = txt1
    end
    return '_STRING_(#' .. index .. ')'
end
repeat
    Break = false
    types = g.data:match('[\034\039]')
    if types == '\034' then
        g.data = g.data:gsub('\034[^\n]-\034', function(txt2)
            Break = true
            return encrypt1(txt2)
        end, 1)
    elseif types == '\039' then
        g.data = g.data:gsub('\039[^\n]-\039', function(txt2)
            Break = true
            return encrypt1(txt2)
        end, 1)
    end
until not Break
Table2 = nil
for text in g.data:gmatch("[^%-]%-%-%[([=]*)%[") do
    g.data = g.data:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1)
end
g.data = g.data:gsub('\\092\\092', '\\\\')
g.data = g.data:gsub('\\034', '\034')
g.data = g.data:gsub("\\039", '\039')
for index, value in pairs(Table1) do
    g.data = g.data:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2)
        if txt1:find('%-%-') then
            return nil
        end
        txt2 = txt2:gsub('_STRING_%(#(%d+)%)', function(num)
            return _STRING_[tonumber(num)]
        end)
        return txt1 .. g.string.encrypt(txt2)
    end)
end
g.data = g.data:gsub('_STRING_%(#(%d+)%)', function(num)
    local data = _STRING_[tonumber(num)]
    data = data:gsub('\\092\\092', '\\\\')
    return g.string.encrypt(data)
end)
_STRING_ = nil
Table1 = nil
g.data = string.gsub(g.data, '\\034', '\034')
g.data = string.gsub(g.data, '%-%-[^\n]*', '')
g.data = string.gsub(g.data, '%s*\n%s*', '\n')
g.config = {}
g.config.used = {}
g.config.name = g.random.get()
g.config.data = {}
table.insert(g.config.data, '_ENV["char"]=_ENV["string"]["char"]\n'..table.concat(g.ascll.data, '\n'))
table.insert(g.config.data, g.decrypt.data)
table.insert(g.config.data, table.concat(g.string.data, '\n'))
g.data2 = table.concat(g.config.data, '\n')
g.data = g.data2 .. '\n' .. g.data
g.Bool = 'local _Key={}_Key[2]=not _Key[1]_Key[3]=not _Key[2]\n'

g.data = g.data:gsub('([^%w_])nil([^%w_])', function(txt1, txt2)
    return txt1 .. '_Key[1]' .. txt2
end)
g.data = g.data:gsub('([^%w_])true([^%w_])', function(txt1, txt2)
    return txt1 .. '_Key[2]' .. txt2
end)
g.data = g.data:gsub('([^%w_])false([^%w_])', function(txt1, txt2)
    return txt1 .. '_Key[3]' .. txt2
end)
g.data = g.Bool .. g.data
end
if sf[4] == true then
g.pianyi = math.random(256, 3830)
g.encrypt_s = function(data)
    local data2, len, text1, text2
    data = string.gsub(data, '\\n', '\n')
    data = string.gsub(data, '\\34', '\34')
    data = string.gsub(data, '\\39', '\39')
    data2 = ''
    for i, text in pairs({string.byte(data, 1, -1)}) do
        text = text + g.pianyi
        text = string.format('%03x', text)
        data2 = data2 .. text
    end
    data2 = string.format('%q', data2)
    data2 = '((function(_)::__:: while _ do goto __ end end)() or _ENV["XGXGXG"](' .. data2 .. ') or (function(_)::__:: while _ do goto __ end end)())'
    return data2
end
g.data = string.gsub(g.data, '%[=%[(.-)%]=%]', g.encrypt_s)
g.data = string.gsub(g.data, '%[%[(.-)%]%]', g.encrypt_s)
g.data = string.gsub(g.data, '\\"', [[\34]])
g.data = string.gsub(g.data, "\\'", [[\39]])
g.data2 = ''
for text in string.gmatch(g.data, '[^\n]+') do
    local types = text:match("['" .. '"]')
    if types == "'" then
        text = text:gsub("'(.-)'", g.encrypt_s)
        text = text:gsub('"(.-)"', g.encrypt_s)
    elseif types == '"' then
        text = text:gsub('"(.-)"', g.encrypt_s)
        text = text:gsub("'(.-)'", g.encrypt_s)
    end
    g.data2 = g.data2 .. "\n" .. text
end
g.data = g.data2
g.HEX = '\n_ENV["XGXGXG"]=function(data)return string.gsub(data,"...",function(hex)return string.char((function(_)return tonumber(hex,16)-_ end)(' .. g.pianyi .. '))end) end\n'
g.data = g.HEX .. g.data
end
if sf[5] == true then
San = {}
function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local by=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')

function San.enc(data)
    return ((data:gsub('.', function(x) 
        local r,by='',x:byte()
        for i=8,1,-1 do r=r..(by%2^i-by%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return by:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end



--解密区

jie=[=[

function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local by=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')

San={}
function Sui.dec(data)
    local data = string.gsub(data, '[^'..by..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(by:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end

]=]

     code=g.data
     
     code = code:gsub("%[=%[(.-)%]=%]",function(h)
     return "San.dec([=["..San.enc(h).."]=])"
end)
     code=code:gsub("\"(.-)\"",function(h)
     return "San.dec([=["..San.enc(h).."]=])"
end)
     code,error=code:gsub("'(.-)'",function(h)
     return "San.dec([=["..San.enc(h).."]=])"
end)
     
g.data=jie.."\n\n"..code
end
W("字符串加密完成")
end
if select[4] == true then
local ff = gg.prompt({'未知错误防反','大量防反'}, {}, {'checkbox','checkbox'})
if ff[1] == true then
dongxi=[=[
 if nil then local a='' end print("")
 while (nil) do local a="" end print("")
]=]
dongxi=dongxi:rep("50")
g.data = dongxi .. g.data
end
if ff[2] == true then
function random() bn={"A_","B_","C","D_","E_","F","G","H","J","K_","L","M_","N","O_","P","Q_","R","S__","T","U","V","W","X__","Y__","Z_"} x=math.random
local e,f,g,h,i,a,b=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]..bn[a]..bn[b]
return a,b,c,d,e end
function DT()
s=random() 
ss=" ::"..s..":: if(nil)then goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if(nil)then goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if true then  else end  if true then  else end if true then  else end  if true then  else end "
sss = "for i = 1, 0 do local bya = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if bya.d ~= nil then bya.d = bya.g() end break end\n".."for i = 1, 0 do local bya = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if bya.d ~= nil then bya.d = bya.g() end break end\n".."for i = 1, 0 do local bya = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if bya.d ~= nil then bya.d = bya.g() end break end\n".."for i = 1, 0 do local bya = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if bya.d ~= nil then bya.d = bya.g() end break end\n".."for i = 1, 0 do local bya = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if bya.d ~= nil then bya.d = bya.g() end break end\n"
return ss.."\n"..sss end
fangyu9=DT()


--防反
function yxnd()
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local x=math.random(1,49)
local z=math.random(4,7)
local w=""
for i=1,z do
local d=math.random(1,59)
w=w..lmn[d]
end
return lmn[x]..w
end

function sjhxsf()
local sj=yxnd()
local sj2=yxnd()
local sj3=yxnd()
ssy="if nil then gg.setValues() local "..sj.." = {}  gg("..sj..")  "..sj.."["..sj.."["..sj.."]] = gg local G_="..sj.." if G_ then local "..sj.." = {} gg() gg("..sj..") "..sj.."["..sj.."["..sj.."]] = gg else prompt() local "..sj.."={} "..sj.."("..sj..") goto "..sj2.." "..sj.."["..sj.."["..sj.."]] = gg end "..sj.." = gg ::"..sj2..":: end if nil then gg.setValues() local "..sj3.."={} local "..sj.." = {} choice("..sj..".s2) "..sj.."["..sj.."["..sj.."]] = gg local G_="..sj.." end "
return ssy
end

YxMaxhx="if(nil)then;local sdzfns = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #sdzfns[-nil%nil%-nil] ~= nil then;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::RNX::;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]();goto RNX;sdzfns = nil;end;for i = 1, 0 do;local sdzfns = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #sdzfns[-nil%nil%-nil] ~= nil then;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::RNX::;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]();goto RNX;sdzfns = nil;end"
YxMax=" "..sjhxsf().." if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end; "..YxMaxhx.." "..sjhxsf().." "
fangyu8=YxMax

--防反
fangfan1=[=[
a={} for i,v in pairs(a) do break if pairs(a) then pairs(a) return a() end end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() for i,v in pairs(FF) do FF[i] = v end local F = {} F.i = {} for i, v in ipairs(F.i) do F[F.v[i]] =v end for L0_0 in a do L0_0.L0_0 ={' ','','','','','',(1|2),(F|F|F)} end end for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(F|F|F)} return a() end for i=1,0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end for i=1,0 do i((true|false)-true) _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() end if (nil) then goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M goto M ::M:: end
]=]

fangfan2=[=[
for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _()  local i={(sui|sui)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do break return end break end
]=]


--将所有东西进行二次整合
g.data = fangfan2.."\n"..fangyu8 .."\n"..fangyu9..'\n'.."\n"..fangfan1.."\n"..g.data
end
W("防反添加完成")
end
g.hxcode = ' while ""=="lsqnblsqnblsqnb" do lsqnblsqnblsqnb="lsqnblsqnblsqnb" end '
g.hxcode = string.rep(g.hxcode, 5000)
g.data = g.hxcode .. g.data
g.data ='\nwhile(""=="RlRlRR")or (function(_)return(#_~=10000)end)("RlRlRR")do RlRlRR=(function()end)("lRlRlR")end\n' ..g.data
g.data=kt .. bsf .. " local suisui=function() "..g.data.." end suisui() "
ios("副本.lua",g.data)
g.path1 = gg.getFile()
g.dir1 = string.gsub(g.path1, string.match(g.path1, '[^/]*$'), '')
g.config = gg.EXT_CACHE_DIR .. '/3190462856.cfg'
g.sel1 = loadfile(g.config)
if g.sel1 then
    g.sel1 = g.sel1()
else
    g.sel1 = {g.path1}
end
g.w_r = function(path, data)
    local file
    path = tostring(path)
    if not string.find(path, '/') then
        path = g.dir1 .. path
    end
    if data then
        file = io.open(path, 'w')
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path)
        if file then
            io.input(file)
            data = io.read('a')
            io.close(file)
        end
        return data
    end
end
g.func = load(g.data)
g.dump = string.dump(g.func, true, true)
g.path3 = g.dir1 .. 'tmp.lasm'
if not gg.internal2(load(g.dump), g.path3) then
    return gg.alert('加密失败')
end
g.data = g.w_r(g.path3)
if select[5] == true then
local lasmfy = gg.prompt({'区块信息加密','JMP位移','JMP混淆','未知错误指令','未知错误区块','garbage混淆'}, {}, {'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
if lasmfy[1] == true then
g.data = string.gsub(g.data, "linedefined %d+", "linedefined 0")
g.data = string.gsub(g.data, "lastlinedefined %d+", "lastlinedefined 0")
--g.data = string.gsub(g.data, "numparams %d+", "numparams 250")
--g.data = string.gsub(g.data, "is_vararg %d+", "is_vararg 250")
g.data = string.gsub(g.data, "maxstacksize %d+", "maxstacksize 250")end
if lasmfy[2] == true then
local text3, tb2, i, hqzl, go1, go2
go1 = 1000000
i = 0
g.data = string.gsub(g.data, '%.maxstacksize 250.-RETURN %s', function(text)
    text3 = ''
    tb2 = {}
    i = 0
    for text2 in string.gmatch(text, '[^\n]+') do
        if text2 ~= '' then
            hqzl = string.match(text2, '%S+')--获取指令
            if hqzl=="LOADK" or hqzl=="CALL" or hqzl=="NEWTABLE" or hqzl=="SETLIST" or hqzl=="GETTABLE" or hqzl=="GETTABUP" or hqzl=="GETUPVAL"then
                go2 = go1 + 1
                i = i + 1
                tb2[i] = ':goto_' .. go1 .. '\n' .. text2 .. '\nJMP :goto_' .. go2
                text2 = 'JMP :goto_' .. go1 .. '\nJMPJMP\n\n:goto_' .. go2
                go1 = go2 + 1
            end
        end
        text3 = text3 .. text2 .. '\n\n'
    end
    local function JMPJMP()
        local num
        local text
        repeat
            num = math.random(1, i)
            text = tb2[num]
        until text
        tb2[num] = nil
        return text
    end
    if i > 0 then
        text3 = string.gsub(text3, 'JMPJMP', JMPJMP)
    end
    return text3
end)
g.data=g.data:gsub("\n%s+","\n")
end
if lasmfy[3] == true then
  local biao = { ['LOADK'] = 2, ['LOADKX'] = 2, ['EXTRAARG'] = 2, ['MOVE'] = 2, ['UNM'] = 2, ['NOT'] = 2, ['LEN'] = 2, ['ADD'] = 2, ['SUB'] = 2, ['MUL'] = 2, ['DIV'] = 2, ['MOD'] = 2, ['POW'] = 2, ['GETTABLE'] = 2, ['SETTABLE'] = 2, ['NEWTABLE'] = 2, ['SELF'] = 2, ['SETLIST'] = 2, ['LOADNIL'] = 2, ['CONCAT'] = 2, ['CALL'] = 2, ['VARARG'] = 2, ['TAILCALL'] = 2, ['TFORCALL'] = 2, ['GETUPVAL'] = 2, ['SETUPVAL'] = 2, ['GETTABUP'] = 2, ['SETTABUP'] = 2, ['CLOSURE'] = 2 }


  Str = {'🇦', '🇧', '🇨', '🇩', '🇪', '🇫', '🇬', '🇭', '🇮', '🇯', '🇰', '🇱', '🇲', '🇳', '🇴', '🇵', '🇶', '🇷', '🇸', '🇹', '🇺', '🇻', '🇼', '🇽', '🇾', '🇿', '👗', '👙', '👘', '💄', '💋', '🧥', '🐑', '🕊', '🌎', '🌍', '🌏', '🌕', '🌖', '🌖', '🌗', '🌘', '🌑', '🌙', '⭐️', '🌟', '💫', '✨', '⛅️', '🌥', '💥', '🔥', '🍏', '🍎', '🍐', '🍊', '🍋', '🍌', '🍉', '🍇', '🍅', '🍖', '🌭', '🍿', '🍩', '🏌', '🏓', '⚾️', '🏌⛷', '🥊', '🎱', '🏟', '💗', '🏟', '💯', '🛶', '🦊', '🎡', '🦉', '📛', '💥', '🌆', '⛵️', '✈️', '👾', '🎮', '🎯', '🎻', '🚗', '🚕', '🚙', '🚃', '🚑', '🚁', '💥', '🦉', '🧡', '🏡', '🗽'}num = 1 Tab = {}
  number = 1008600
  function Resver(b)
    local tab = {}
    for k,v in pairs(b) do
      table.insert(tab,1,string.format("%x",v))
    end
    str = table.concat(tab)
    tab = {}
    str = str:gsub("........",function (x) table.insert(tab,1,"\nOP[48] 0x"..x.."\n") end)
    number = number+1+2-6+5
    return "JMP :goto_"..number.."\n"..table.concat(tab).."\n:goto_"..number.."\n\nMOVE v0 v0\n"end
  for text in string.gmatch(g.data, '[^\n]+') do
    if text ~= '' then
      str_1 = string.match(text, '%S+')
      if biao[str_1] and text:match("JMP") == nil then
        table.insert(Tab,Resver(gg.bytes(Str[num])).."\n"..text.."\n")
        if num+1 > #Str then
          num = 1
         else
          num = num+1
        end
       else
        table.insert(Tab,text.."\n")
      end
    end
  end
  g.data=table.concat(Tab,"\n")
end
if lasmfy[4] == true then
function fh()
bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
fhh=bool.."\n\nSETTABUP u0 \"BY SAN️\" 1"
return fhh
end
g.data=g.data:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh() end)
function fhx()
bool=("\n\nLOADBOOL v48 28\n\nLOADBOOL v48 28"):rep(math.random(3,7))
return bool
end
g.data=g.data:gsub("LOADNIL v(%d+)%.%.v(%d+)\n\n%s+TEST v(%d+) (%d+)\n\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\n\nTEST v"..c.." "..d.."\n\nTEST v"..c.." "..d.."\n\nLT 0 454 278\n\nLT 0 454 278\n\nJMP :goto_"..e.."  ; +"..f.." ↓ \n\nSETTABUP u0 \"BY SAN\" v4  \n\nGETTABUP v0 u0 \"BY SAN\"\n\nMUL v1 \"BY 若言\" v15\n\nEQ 246 v250 v161"..fhx() end)
end
if lasmfy[5] == true then
Y=[[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]]
Q=[[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]]
g.data=g.data:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..Y,1)
g.data=g.data:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..Q,1)
end
if lasmfy[6] == true then
XN1 = math.random(45,63)
XN2 = math.random(XN1,71)
XN3 = math.random(XN2,73)
XN4 = math.random(XN3,75)
XN5 = math.random(XN4,77) 
XN6 = math.random(XN5,79)


XRXR = [[
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
OP[83] 0x0a
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 ' 🧡🏡🗽🌺💦🌟💝🍂🏘🌩🏜 ' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 ' 🧡🏡🗽🌺💦🌟💝🍂🏘🌩🏜 ' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
OP[83] 0x0a
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
MOVE v0 v0
ADD v250 v250 v250
ADD v250 v250 v250
ADD v250 v250 v250
MOVE v0 v0
ADD v250 v250 v250
ADD v250 v250 v250
ADD v250 v250 v250
MOVE v0 v0
OP[48] 0x879ff020
OP[48] 0x9ff020b5
OP[48] 0xf020b487
OP[48] 0x20bc879f
OP[48] 0xaa879ff0
OP[48] 0x879ff020
OP[48] 0x9ff020b7
OP[48] 0xf020aa87
OP[48] 0x20a9879f
OP[48] 0x879ff020
OP[48] 0x9ff020a7
OP[48] 0x2020be87
OP[48] 0xb8879ff0
OP[48] 0x879ff020
OP[48] 0x9ff020a6
OP[48] 0x2020b387
MOVE v0 v0
ADD v250 v250 v250
ADD v250 v250 v250
ADD v250 v250 v250
MOVE v0 v0
ADD v250 v250 v250
ADD v250 v250 v250
ADD v250 v250 v250
MOVE v0 v0
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
OP[83] 0x0a
SETTABLE XN1 XN2 XN3
GETTABLE XN3 XN1 XN2
GETTABLE XN3 XN1 XN2
SETTABLE XN3 ' 🧡🏡🗽🌺💦🌟💝🍂🏘🌩🏜 ' XN4
CALL XN3..XN4 XN3..XN3
SETTABLE XN1 XN2 XN3
LOADNIL XN1..XN1
TEST XN1 0
MOVE XN4 XN1
TEST XN1 0
LOADBOOL XN1 0
SETTABLE XN1 XN2 XN3
CALL XN2..XN2
SETTABLE XN3 ' 🧡🏡🗽🌺💦🌟💝🍂🏘🌩🏜 ' XN4
TEST XN1 0
SETTABLE XN4 XN5 XN6
GETTABLE XN6 XN3 XN6
LOADNIL XN2..XN6
NEWTABLE XN3 0 0
OP[83] 0x0a
LOADBOOL v40 20
LOADBOOL v40 20
LOADBOOL v40 20
]]
XRXR = XRXR:gsub("XN1", "v"..XN1):gsub("XN2", "v"..XN2):gsub("XN3", "v"..XN3):gsub("XN4", "v"..XN4):gsub("XN5", "v"..XN5):gsub("XN6", "v"..XN6)
XRXR = XRXR.."\n"
g.data = g.data:gsub('RETURN  ; garbage', XRXR)
end
W("lasm加密完成")
end
function dzsh(Text)
Text=Text:gsub(" ","") 
return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))
end
function zjm_base(cmz)
local zjm
if cmz==1 then zjm=string.char(0,math.random(1,3),math.random(0x10,0x14),5)--GETUPVAL
elseif cmz==2 then zjm=string.char(math.random(0,8),0,math.random(0x10,0x20),9)--SETUPVAL
elseif cmz==3 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0x89,0xBB),8)--SETTABUP
elseif cmz==4 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xE0,0xFF),0x6)--GETTABUP
elseif cmz==5 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xB0,0xFF),0x3)--LOADBOOL
elseif cmz==6 then zjm=string.char(math.random(0,4),10,math.random(0,4),0x18)--EQ
elseif cmz==7 then zjm=string.char(math.random(0,4),10,math.random(0,4),0x19)--LT
elseif cmz==8 then zjm=string.char(math.random(5,9),10,math.random(0,4),0x1A)--LE
elseif cmz==9 then zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1B)--TEST
elseif cmz==10 then zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1C)--TESTSET
elseif cmz==11 then zjm=string.char(0,0x80,math.random(0x8,0x20),0x1E)--TAILCALL
elseif cmz==12 then zjm=string.char(0,0x80,math.random(0x8,0x20),0x4)--LOADNIL
elseif cmz==13 then zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0x1)--LOADK
elseif cmz==14 then zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0)--MOVE
elseif cmz==15 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x8,0x18),0x14)--NOT
elseif cmz==16 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0xB)--NEWTABLE
elseif cmz==17 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x24)--SETLIST
elseif cmz==18 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x7)--GETTABLE
else zjm=string.char(math.random(0x8,0x18),math.random(0XEE,0XFF),0,0xA)--SETTABLE
end
return zjm 
end
function xZiJie(counl)
local zjmre=string.char()
for i=1,counl do 
zjmre=zjmre..zjm_base(math.random(1,19)) 
end
return zjmre 
end
function tempstr(sz,isF)
sz=sz or math.random(8,58) local se=" goto s " local strs=""
for s=1,sz do 
strs=strs..se 
end
strs=" if nil then "..strs.." ::s:: end _X=_X "
if isF then 
strs=strs:gsub("_X=_X","")
end 
return strs 
end
    function dumpplus(loadfun)
    local max,min=58,4
    local strhx=string.dump(loadfun, true)--编译dump
    zjms={}
    for s=max,min,-1 do
    str=string.dump(load(tempstr(s)),true)
    bytstr=str:sub(34,34+s*4-1)
    zjms[s]={bytstr,bytstr:sub(0,4)}
end
    for s=max,min,-1 do
    strhx=strhx:gsub(zjms[s][1],zjms[s][2]..xZiJie(s-1))
end
  local str1=dzsh("0080001F0080001F0080001F")
  local str2=string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F)
  strhx=strhx:gsub(str1,str2)
  rxass=string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0)
  rxhxs=string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A)
  return strhx:gsub(rxass,rxhxs)
end
    function suijistr()
    local str,strom=string.char(),math.random(5,10)
    for i=1,math.random(9,20) do
    str=str..xZiJie(8)
end
    for i=1,strom do
    str=str..xZiJie(8)
end
   return {str,strom*32}
end
tablestr=suijistr()
g.data=load(g.data)
g.data=dumpplus(g.data)
g.data=g.data..tablestr[1]
g.data,error=g.data:gsub(string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))

g.data,error=g.data:gsub(string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))

g.data,error=g.data:gsub(string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),
string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))

g.data,error=g.data:gsub(string.char(0x1F ,0x00 ,0x80 ,0x00 ),
string.char(0x1F ,0x00 ,0x80 ,0xAB))
g.data=string.gsub(g.data, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))
g.data=string.gsub(g.data, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))
g.data=string.gsub(g.data, string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))
g.data=string.gsub(g.data, string.char(0x1F ,0x00 ,0x80 ,0x00 ),string.char(0x1F ,0x00 ,0x80 ,0xAB))
g.data = string.gsub(g.data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
g.data = string.gsub(g.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00), 1)
g.data = string.gsub(g.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)
g.data = string.gsub(g.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
              string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))
g.data = string.gsub(g.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
g.qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                string.rep(string.char(0), 32)
g.data = g.data:gsub(g.qukuai,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                  string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
g.data=string.gsub(g.data,string.char(0x60,0xA7,0xE7,0x63,0x6F),string.char(0x06,0x06,0x06,0x06,0x06))
local lsqnbb = string.char(0x6C,0x73,0x71,0x6E,0x62)
local lsqnbb = string.rep(lsqnbb, "5000")
Y=string.gsub(g.data,string.char(0x04,0x10,0x00,0x00,0x00,0x6C,0x73,0x71,0x6E,0x62,0x6C,0x73,0x71,0x6E, 0x62,0x6C,0x73,0x71,0x6E,0x62,0x00),string.char(0x04,0xA9,0x61,0x00,0x00)..lsqnbb..string.char(0x00))
g.data=string.gsub(Y,"lsqnb",string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255)))
g.mc=select[1]..'.sui.lua'
io.open(g.mc,"w"):write(g.data)
gg.setVisible(true)
W("🔰加密成功!\n🏷️脚本保存在:"..g.mc)
gg.alert('🔰加密成功 '..'脚本大小:'..#g.data..'字节\n🏷️脚本保存在:\n'..g.mc..'\n⏰加密完成耗时'..os.clock()-enctime)
os.remove(g.path3)