_G, NS = _G, {}
  SB = {}
  function TakeKey(c)
    c = c[string.char(table.unpack({88, 83}))]
    do
      do
        for _FORV_4_ in ipairs(c) do
          x = (c[_FORV_4_] + _FORV_4_ - (c[17] + c[18] + _FORV_4_) * (c[17] + c[18])) % 256
          table.insert(SB, x)
        end
      end
    end
    return string.char(table.unpack({79, 75}))
  end

  GetKey = TakeKey({
    XS ={
	[ 1] = 60,
	[ 2] = 98,
	[ 3] = 127,
	[ 4] = 161,
	[ 5] = 198,
	[ 6] = 240,
	[ 7] = 10,
	[ 8] = 54,
	[ 9] = 82,
	[10] = 115,
	[11] = 154,
	[12] = 189,
	[13] = 228,
	[14] = 253,
	[15] = 40,
	[16] = 66,
	[17] = 207,
	[18] = 85,
}
  })
  function SS(c)
    c = c[string.char(table.unpack({
      73,
      68,
      78
    }))]
    ler = ""
    do
      do
        for _FORV_4_ in ipairs(c) do
          ler = ler .. string.char((#c[_FORV_4_] + SB[1] - (SB[2] + _FORV_4_) + (SB[3] + _FORV_4_) - (SB[4] + SB[8]) + (SB[6] + SB[7]) - SB[5] + SB[9] - SB[13] + SB[11] - SB[15] + SB[12] + SB[13] + _FORV_4_ + SB[10] * SB[16]) % 256)
        end
      end
    end
    return ler
  end
  
  function BDZ(c)
    c = c[string.char(table.unpack({
      73,
      68,
      78
    }))]
    ler = ""
    do
      do
        for _FORV_4_ in ipairs(c) do
          ler = ler .. string.char((#c[_FORV_4_] + SB[1] + (SB[2] + _FORV_4_) + SB[10] + _FORV_4_) % 256)
        end
      end
    end
    return ler
  end
  a=[=[


]=]
a=a:gsub("BDZ%({.-}%)",function(x) load("zm="..x)() return "\""..zm.."\"" end)
a=a:gsub("SS%({.-}%)",function(x) load("zm="..x)() return "\""..zm.."\"" end)
print(a)