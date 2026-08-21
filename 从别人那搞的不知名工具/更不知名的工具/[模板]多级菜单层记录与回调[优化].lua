--介绍栏
--固定菜单记录  
--零风



-- 模板原作者:  玲珑网络
-- 留言：感谢你的提供  尊重作者



--初始设置
gg.setVisible(false)
Key = 0

--主函数
function Main0()
  local DM = gg.choice({"菜单一","菜单二","菜单三"},nil,"请选择")
  --记录菜单层
  Key = 0
  if DM then
    _G["Main"..DM]() --调用对应菜单
   else
    gg.setVisible(false)
  end
end

---------------------------------
--子菜单区
function Main1()
  local DM = {
    '开锁1',
    '功能2',
    '功能3',
    '功能4',
    '记住菜单层',
  }
  local menu = gg.multiChoice(DM,nil,'无')
  if menu == nil then
    gg.setVisible(false)
   else
    --利用循环判断某个选项是否被选中，并执行对应功能
    for k,v in pairs(menu) do
      if k ~= #DM then
        _G["C"..k]() --调用c1、c2等函数
      end
    end
    --判断记录功能是否勾选
    if menu[#DM] then
      _G["C"..#DM](1) --记录菜单层
     else
      --清理菜单层
      Key=0
    end
  end
end

function Main2()
  local DM = {
    '移速',
    '2',
    '3',
    '4',
    '记住菜单层',
  }
  local menu = gg.multiChoice(DM,nil,'选择:')
  if menu == nil then
    gg.setVisible(false)
   else
    --利用循环判断某个选项是否被选中，并执行对应功能
    for k,v in pairs(menu) do
      if k ~= #DM then
        _G["C"..k]() --调用c1、c2等函数
      end
    end
    --判断记录功能是否勾选
    if menu[#DM] then
      _G["C"..#DM](1) --记录菜单层
     else
      --清理菜单层
      Key=0
    end
  end
end

function Main3()
  local DM = {
    '透视',
    '功能二',
    '功能三',
    '功能四',
    '记住菜单层',
  }
  local menu = gg.multiChoice(DM,nil,'无')
  if menu == nil then
    gg.setVisible(false)
   else
    --利用循环判断某个选项是否被选中，并执行对应功能
    for k,v in pairs(menu) do
      if k ~= #DM then
        _G["C"..k]() --调用c1、c2等函数
      end
    end
    --判断记录功能是否勾选
    if menu[#DM] then
      _G["C"..#DM](1) --记录菜单层
     else
      --清理菜单层
      Key=0
    end
  end
end
---------------------------------

---------------------------------
----子功能区----
function C1()
  --功能内容
  gg.toast("开启成功1")
end

function C2()
  gg.toast("开启成功2")
end

function C3()
  gg.toast("开启成功3")
  gg.clearResults()
end

function C4()
  gg.toast("开启成功4")
  gg.clearResults()
end

function C5(...)
  --记录菜单层
  local value = {...}
  Key=value[1]
  gg.toast("记录成功")
end
---------------------------------

---------------------------------
--循环功能，用于点击悬浮窗时回调菜单
while true do
  if gg.isVisible() then
    gg.setVisible(false)
    --回调记录
    _G["Main"..Key]()
  end
end
---------------------------------