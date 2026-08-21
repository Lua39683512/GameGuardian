local g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, g.last:gsub('/[^/]+$', '')}
end

while true do
	g.info = gg.prompt({'选择一个脚本文件:', '选择解密后写出文件夹:'}, g.info, {'file', 'path'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
	g.last = g.info[1]
	g.test = loadfile(g.last)
	if g.test == nil then
		gg.alert('载入脚本失败,请检查你的脚本是否有错误: '..g.last)
	else
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end		
		if g.file == nil then
			gg.alert('写出文件失败,请检查:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
		
			g.sel = gg.choice({'luar加密(附带调试信息)', 'luar加密(不带调试信息)', 'luar反编译(只能看到虚拟机指令)', '万能解密器', 'gg函数拦截(拦截器)'})
			if g.sel == nil then break end
			
			if g.sel == 1 or g.sel == 2 then
				g.warn = gg.alert('Scripts in binary form may not work on other versions of GameGuardian', 'Agree', 'Disagree')
				if g.warn ~= 1 then break end
				
				g.out = g.last..".bin.lua"
				g.file = io.open(g.out, "w")
				g.file:write(string.dump(g.test, g.sel == 2, true))
				g.file:close()
				gg.alert('编译后脚本已保存到:\n'..out)
				break
			elseif g.sel == 3 then
				g.out = g.last..".dump.txt"
				g.res = gg.internal2(g.test, g.out)
				if g.res then
					gg.alert('编译后脚本已保存到:\n'..g.out)
					break
				else
					gg.alert('编译时出现一个异常:\n'..g.res)
				end
			elseif g.sel == 4 then
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					
					local msg = ''
					
					if true then
						local load_cnt = 0
						local fname = g.last..'.load_'
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local file = fname..load_cnt..'.lua'														
									local f = io_open(file, 'w')
									f:write(content)
									f:close()
									echo('Hooked load '..load_cnt..' with size of '..#content..' bytes saved into '..file)
									load_cnt = load_cnt + 1
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into files: '..g.last..'.load_*.lua'
					end
					
					if true then
						local file = g.last..'.log'
						local f = io_open(file, 'w')
						f:write("-- Hook started\n")
						f:close()
						local names = {
							setRanges = {'^REGION_'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
							editAll = {nil, '^TYPE_'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
						}
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
						}
						local toFlags = function (check, value) 
							local ret = ''
							for k, v in pairs(ggg) do
								if k:match(check) ~= nil and (value & v) == v then 
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then							
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if check:sub(1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = check:format(a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										if typ(a) == 'table' then
											b = b
												:gsub('table%([0-9a-f]+%): ', '')
												:gsub('(%[address%] = )(%d+)', function (b, c) 
													return ('%s0x%X'):format(b, c)
												end)
												:gsub('(%[flags%] = )(%d+)', function (b, c)
													return b..toFlags('^TYPE_', c)
												end)
												:gsub('(%[freezeType%] = )(%d+)', function (b, c)
													for k, v in pairs(gg) do
														if k:match('^FREEZE_') ~= nil and c == v then
															return b..'gg.'..k														
														end
													end
													return b..c
												end)
												:gsub('(\t%[)([^%]]+)(%] = [^\n{]+)\n', "%1'%2'%3,\n")
												:gsub('\n}\n', '\n},\n')
										end
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
						msg = msg..'\n\nAll GG calls will be logged into file: '..g.last..'.log'
					end
					
					echo('Hook started.'..msg..'\n')
					ggg.alert('Hook started. Run script, input passwords and so on.'..msg)
					msg = nil
					
					if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1])
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						local hook = 1
						hook = function (...)
							local old = tostring
							tostring = orig
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('tostring:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							local ret = orig(arg[1])
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.remove:', arg)
							return true
						end
						tr[hook] = orig
						os.remove = hook
					end
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
					if false then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end
				end
				local test = g.test
				g = nil
				
				test()
				break
			end
		end
	end
end