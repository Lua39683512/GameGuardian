L = gg.prompt({'选择文件'}, {gg.getFile()}, {'file'})

ggg = {} -- 创建一个重写表

for k, v in pairs(gg) do
    ggg[k] = v -- 把需要重写的函数,加载到重写表
   
end

function gg.setRanges(a)
    print("gg.setRanges(" .. a .. ")")
end

function gg.searchNumber(...)
    ret = ggg['searchNumber'](...) -- 模拟真实执行,并保存结果
    tab = {...} -- 把所有传过来的变量,放到一个表
    for k, v in pairs(tab) do
        tab[k] = string.format('%q', v) -- 把数据格式化成lua能识别
    end
    print('gg.searchNumber(' .. table.concat(tab, ',') .. ')\nreturn ' .. tostring(ret)) -- 打印log
    return ret -- 返回结果
    
end

function gg.getResults(Q)
    print("gg.getResults(" .. Q .. ")")
end
function gg.editAll(Q, Y)
    print("gg.editAll(" .. Q .. ",", Y .. ")")
end
function gg.toast(Q)
    print("gg.toast(" .. Q .. ")")
end
loadfile(L[1])()
