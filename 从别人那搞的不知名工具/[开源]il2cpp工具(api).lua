-- 没啥价值
-- 由于反查是我自己写的(判断是别人的) 就不想开源
-- 留个QQ : 2280409893 下面那几行是原脚本的写的注释信息


-- 本工具利用 VsCode编写
-- ilcpp Api：https://github.com/kruvcraft21/GGIl2cpp
-- 本工具将永不收费

local qdcs = 666

local cfg_files = gg.FILES_DIR .. '/il2cpp_ms.lua'
local cfg = {
	[1] = {}
}
if loadfile(cfg_files) then
	cfg = dofile(cfg_files)
end

local x64 = gg.getTargetInfo().x64

-- 加载Api
local script = gg.makeRequest("http://43.142.185.81/Il2cppApi.lua").content

load(
		string.dump(
				load(script),
				true
		)
)()

if not pcall(Il2cpp) then
	gg.alert('api加载错误, 您当前游戏可能不是il2cpp游戏, 此工具将用不了!')
end
function getType(types)
	if types == 'float' then
		return 16
	else
		return 4
	end
end

function Main()
	local menu = {
		"反查类名",
		"方法查找",
		"字段查找",
		"退出脚本",
	}
	local func = {
		"InquireClassName",
		"MethodSearch",
		"FieldSearch",
		"Exit"
	}
	local UI = gg.choice(menu, nil, "il2cpp工具 共启动" .. qdcs .. "次\n慢慢更新 不要催\nQQ群:815896428")
	if UI then
		_G[func[UI]]()
	end
end

-- Il2cpp.FindClass({{Class = 'MyClass', MethodsDump = true, FieldsDump = true}})
function MethodSearch()
	local prompt = gg.prompt({"请输入类名"}, cfg[1], {"text"})
	if prompt then
		cfg[1] = prompt
		gg.saveVariable(cfg, cfg_files)
		local ret = Il2cpp.FindClass({{Class = prompt[1], MethodsDump = true}})
		local list = {}
		local add_list = {}
		for i, v in ipairs(ret[1][1].Methods) do
			list[#list + 1] = v.MethodName .. ' 偏移:0x' .. v.Offset
			add_list[#add_list + 1] = {
				address = tonumber(v.AddressInMemory, 16),
				flags = 4,
				name = v.MethodName .. ' Offset:0x' .. v.Offset
			}
		end
		gg.addListItems(add_list)
		local choice = gg.choice(list, nil, "数据已保存到保存列表, 共搜索出" .. #list .. "个方法, 类地址：" ..
				ret[1][1].ClassAddress)
		if choice then
			gg.copyText(list[choice], false)
			gg.alert("复制成功")
		end
	end
end

function FieldSearch()
	local prompt = gg.prompt({"请输入类名"}, cfg[2], {"text"})
	if prompt then
		cfg[2] = prompt
		gg.saveVariable(cfg, cfg_files)
		local ret = Il2cpp.FindClass({{Class = prompt[1], FieldsDump = true}})[1]
		local list = {}
		for i, v in ipairs(ret[1].Fields) do
			list[#list + 1] = v.FieldName .. ' 偏移:0x' .. v.Offset
		end
		local choice = gg.choice(list, nil, "共搜索出" .. #list .. "个字段, 类地址：" ..
				ret[1].ClassAddress)
		if choice then
			gg.copyText(list[choice], false)
			gg.alert("复制成功")
		end
	end
end

function InquireClassName()

end

function Exit()
	os.exit()
end

gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end
