--修复优化 By QS
gg.setVisible(false)

    ::Mainc::
    local file = gg.prompt({
    "选择文件"
    },{
    gg.getFile()
    },{
    "file"
    })
    
    if file and io.open(file[1]) then
    local path=io.open(file[1]):read("*a")
    fileFormat=function(content)
    local CallbackH = ""
    local CallbackT = ""
    local Apart = {}
    local Hex = {}
    local Txt = {}
    local String = 0
    local Speed = {}
    Speed[#content] = "100"
    Speed[math.ceil(#content * 0.75)] = "75"
    Speed[math.ceil(#content * 0.5)] = "50"
    Speed[math.ceil(#content * 0.25)] = "25"
    
    for i = 1, #content do
    CallbackH = CallbackH .. string.format("%.2X ", (string.byte((string.sub(content, i, i)))))
    CallbackT = CallbackT .. string.sub(content, i, i)
    if i % 8 == 0 then
    Apart[i / 8] = i / 8 .. "行（" .. string.format("%.8x", String) .. "）"
    Hex[i / 8] = CallbackH
    Txt[i / 8] = CallbackT
    CallbackT = ""
    CallbackH = ""
    String = String + 8
end
      if Speed[i] then
      gg.toast("已完成" .. Speed[i] .. "%")
    end
end

    if CallbackH ~= "" then
    Apart[#Apart + 1] = #Apart + 1 .. "行（" .. string.format("%.8x", String) .. "）"
    Hex[#Apart] = CallbackH
    Txt[#Apart] = CallbackT
end
    return Txt,Hex,Apart
end
    Txt,Hex,Apart=fileFormat(path)
end

    if Txt ~= nil then 
    goto Main 
else 
    goto sprit_End 
end

goto Main_end


    ::Main::
    Edit=function(num,TxtTable,HexTable,ApartTable)
    local ObtainT = TxtTable[num]
    local ObtainH = HexTable[num]
    local Menu = gg.choice({
    "复制原文",
    "复制HEX",
    "更改原文",
    "更改HEX"
    }, nil, ApartTable[num] .. "\n原文：" .. ObtainT .. "\nHEX：" .. ObtainH)
    if Menu == nil then 
    else 
end
    if Menu == 1 then
    gg.copyText(ObtainT)
end
    if Menu == 2 then
    gg.copyText(ObtainH)
end
    if Menu == 3 then
    local edittxt = gg.prompt({
    "更改原文"
    },{
    ObtainT
    },{
    "text"
    })
    if edittxt then
    TxtTable[num] = edittxt[1]
    for i = 1, #edittxt[1] do
end
      HexTable[num] = "" .. string.format("%.2X ", (string.byte(edittxt[1], i)))
   end
end
    if Menu == 4 then
    local edithex = gg.prompt({
    "更改HEX"
    },{
    ObtainH
    },{
   "text"
    })
    if edithex then
    HexTable[num] = edithex[1]
    for i in edithex[1]:gmatch("%x+") do
    count = i
end
     TxtTable[num] = "" .. string.char((tonumber(count, 16)))
    end
  end
end

    Data = {}
    Numeral = {}
    A=gg.choice({
    "搜索🔍",
    "查看列表",
    "HEX列表",
    "原文列表",
    "保存",
    "退出⚠",
    "关于⚙"
    }, A, "共检索" .. #Apart .. "条HEX")
    if A ~= nil then
    if A == 1 then
    goto Code
    elseif A == 2 then
    local t = gg.choice(Apart,nil,"列表")
    if t == nil then
    goto Main
end
    Edit(t,Txt,Hex,Apart)
    goto Main
    elseif A == 3 then
    local t = gg.choice(Hex,nil,"Hex")
    if t == nil then
    goto Main
end
    Edit(t,Txt,Hex,Apart)
    goto Main
    elseif A == 4 then
    local t = gg.choice(Txt,nil,"原文")
    if t == nil then
    goto Main
end
    Edit(t,Txt,Hex,Apart)
    goto Main
    elseif A == 5 then
    local t=gg.prompt({
    "选择保存位置"
    },{
    gg.getFile()
    },{
    "path"
    })
    if t then
    io.open(t[1] .. "/[改]" .. file[1]:match("[^/]+$"), "w"):write(table.concat(Txt))
    gg.alert("保存完成！")
    goto sprit_End
else
    goto Main
end
    elseif A == 6 then
    goto sprit_End
    elseif A == 7 then
    gg.alert("HEX编辑器\n\tby 我自己\n版本：1.0")
    goto Main
end

    ::Code::
    B=gg.prompt({
    "输入关键字",
    "列表",
    "HEX",
    "原文"
    },{
    "",
    true,
    false,
    false
    },{
    "text",
    "checkbox",
    "checkbox",
    "checkbox"
    })
    if B == nil then
    goto Main
    else
    
    if B[2] or B[3] or B[4] then
     if B[2] then
      for i, v in pairs(Apart) do
       if v:match(B[1]) then
        table.insert(Data, v)
         table.insert(Numeral, i)
      end
   end
end

   if B[3] then
    for i, v in pairs(Hex) do
      if v:match(B[1]) then
        table.insert(Data, v)
          table.insert(Numeral, i)
       end
    end
end

    if B[4] then
      for i, v in pairs(Txt) do
        if v:match(B[1]) then
          table.insert(Data, v)
            table.insert(Numeral, i)
        end
    end
end

        Data[0] = "重新搜索"
        Ba=gg.choice(Data, nil, "共搜索到"..#Data .. "条结果")
        if Ba ~= 0 and Ba ~= nil then
        local t=Numeral[Ba]
        Edit(t,Txt,Hex,Apart)
        elseif Ba == 0 or Ba == nil then
        goto Code
    end
else
        gg.alert("至少勾选一项")
    end
  end
end
 
 
      ::Main_end::
      while true do
      if gg.isVisible() then
      gg.setVisible(false)
      goto Main
   end
end
::sprit_End::