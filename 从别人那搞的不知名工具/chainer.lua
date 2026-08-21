gg.require("82.1", 15185)
-- https://gameguardian.net/forum/files/file/1409-chainer/
gg.toast('Chainer v0.2')
local chains = 0
function printChain(pre, u)	
	if u.offset == nil then
		chains = chains + 1
		return chains..': '..pre
	else
		local ret = ''
		for offset, v in pairs(u.offset) do
			ret = ret..'\n'..printChain(pre..string.format('->+0x%X', offset), v)
		end
		if ret ~= '' then ret = ret:sub(3) end	
		return ret
	end	
end

local ti = gg.getTargetInfo()
local x64 = ti.x64

if gg.getResultsCount() == 0 then 
	print('Search list is empty')
	os.exit()
end

local depth, maxOffset, level, out

function loadChain(lvl, p)
	local fix, maxo, lev = not x64, maxOffset, level
	for k = lvl, 1, -1 do
		local levk, p2, stop = lev[k], {}, true
		for j, u in pairs(p) do		
			if u.offset == nil then			
				u.offset = {}
				if fix then u.value = u.value & 0xFFFFFFFF end
				for i, v in ipairs(levk) do
					local offset = v.address - u.value
					if offset >= 0 and offset <= maxo then 
						u.offset[offset], p2[v], stop = v, v, false
					end 
				end
			end
		end
		if stop then break end
		p = p2
	end
end

function getRanges()
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}
	local ranges = {}
	local t = gg.getRangesList('^/data/*.so*$')
	local arch = 'unknown'
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({{address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD}})
			if t[1].value == 0x464C457F then
				arch = archs[t[2].value]
				if arch == nil then arch = 'unknown' end
			end
		end	
		if v.type:sub(2, 2) == 'w' then
			v.arch = arch
			table.insert(ranges, v)
		end
	end
	return ranges
end

local ranges = getRanges()

gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)

local cfg_file = gg.getFile()..'.cfg'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
	cfg = chunk()
end
if cfg == nil then cfg = {} end

local pkg = gg.getTargetPackage()
if pkg == nil then pkg = 'none' end

while true do
	local def = cfg[pkg]
	if def == nil then def = {3, 0x100} end
	local p = gg.prompt({'Depth', 'Max offset'}, def, {'number', 'number'})
	if p == nil then os.exit() end
	cfg[pkg] = p
	gg.saveVariable(cfg, cfg_file)
	
	depth = p[1]
	maxOffset = tonumber(p[2])
	
	level, out = {}, {}
	
	local old = gg.getResults(100000)
	gg.internal3(maxOffset)
	gg.loadResults(old)
	local x = os.clock()
	
	for lvl = 0, depth do
		if lvl > 0 then
			local t = gg.getResults(100000)
			level[lvl] = t
			gg.toast(lvl..' from '..depth)
			print(maxOffset)
			gg.internal3(maxOffset)
		end
		
		for m, r in ipairs(ranges) do
			local p = gg.getResults(100000, 0, r.start, r['end'],nil,nil,nil,nil)
			if #p > 0 then
				gg.removeResults(p)
				loadChain(lvl, p)
				p.map = r
				table.insert(out, p)
			end
		end
		
		if gg.getResultsCount() == 0 then break	end
	end
	
	x = os.clock() - x
	print(depth, maxOffset, x)
	gg.loadResults(old)
	
	local chain = ''
	chains = 0
	for j, p in ipairs(out) do
		for i, u in ipairs(p) do
			chain = chain..'\n'..
				printChain(string.format('%s+0x%X', p.map.internalName:gsub('^.*/', ''), u.address - p.map.start), u)			
		end
	end
	if chain ~= '' then chain = chain:sub(3) else chain = 'Nothing found' end

if chain~="Nothing found" then
	f=gg.getFile()
	f=f:gsub("[^/]*$","")
	i=1
	while io.open(f.."基址"..i..".lua") do
  		i=i+1
	end
	f=io.open(f.."基址"..i..".lua","w")
	f:write(chain:gsub("%d*:",""))
	f:close()
end
	
p = gg.alert('找到了 '..chains..' 个链表 耗时: '..x..' 秒 (等级:'..depth..',最大偏移量: '..maxOffset..')', '重启', '退出')
	if p == 2 then
		os.exit()
	end
end

if #out == 0 then
	print('Nothing found')
	os.exit()
end


