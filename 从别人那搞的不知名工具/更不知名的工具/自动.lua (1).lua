OO414 = "06de2b6ba2cc"

OO415 = "b663f3c87860a2390068"

OO416 = "51cff3cbb13558dcd29c9533e7"

OO417 = "d02e8992"

OO418 = "6bdb3249"

OO419 = "308ed2093dbd066fc4253ca16b"

OO420 = "9a6f3290bf2cf6"

OO421 = "3c4a8202ab9e3ee12eb9edda"

OO422 = "56db6877533732a9"

OO423 = "1bb366d7ff884f7948d8"

OO424 = "647508e56b355b9fee"

OO425 = "f16ff5cfaefd0d58af586050e263fe"

OO426 = "9a6f327abf01cd2f54a9472f"

OO427 = "27502b5fa3f2"

OO428 = "566f32706a04cc0440"

OO429 = "566fb1106036eabcda7e57cb"

OO430 = "93e1b122def8b17b5e479e"

OO431 = "9a6f3200672c86168c"

OO432 = "06721d83b9ba43db85107587"

OO433 = "566f32644205eef0be6c"

OO434 = "93e1b122a8bcb194"

OO435 = "51cff3cbb13558dca258957d41239c"

OO436 = "51cff3cbb135585a7fd3c00c6eb95870"

OO437 = "bbe1b16bc4"

OO438 = "3c721d1006"

OO439 = "d04a89925d2471"

OO440 = "9a6f3264930186e7731656e2a466"

OO441 = "566f32646a6abafb26"

OO442 = "51cff3cbb13558dcd2659a2c8a41"

OO443 = "308ed2090d0a923d6ebd03"

OO444 = "06e1c63b8b377d58"

OO445 = "9a6f3264930186e77326"

OO446 = "f8bf5a927700146db9e30f"

OO447 = "51cff3cbb13558dcd2b69ff9"

OO448 = "f16fb8e576fdb52b69f5ddd6"

OO449 = "56db687721ef8f048956ac1f"

OO450 = "9ab9"  
y=gg.prompt({"请选择脚本"},{gg.getFile()},{"file"})
yx=io.open(y[1],"r"):read("*a")

yx=yx:gsub('OO414','"'..OO414..'"')
yx=yx:gsub('OO415','"'..OO415..'"')
yx=yx:gsub('OO416','"'..OO416..'"')
yx=yx:gsub('OO417','"'..OO417..'"')
yx=yx:gsub('OO418','"'..OO418..'"')
yx=yx:gsub('OO419','"'..OO419..'"')
yx=yx:gsub('OO420','"'..OO420..'"')
yx=yx:gsub('OO421','"'..OO421..'"')
yx=yx:gsub('OO422','"'..OO422..'"')
yx=yx:gsub('OO423','"'..OO423..'"')
yx=yx:gsub('OO424','"'..OO424..'"')
yx=yx:gsub('OO425','"'..OO425..'"')
yx=yx:gsub('OO426','"'..OO426..'"')
yx=yx:gsub('OO427','"'..OO427..'"')
yx=yx:gsub('OO428','"'..OO428..'"')
yx=yx:gsub('OO429','"'..OO429..'"')
yx=yx:gsub('OO430','"'..OO430..'"')
yx=yx:gsub('OO431','"'..OO431..'"')
yx=yx:gsub('OO432','"'..OO432..'"')
yx=yx:gsub('OO433','"'..OO433..'"')
yx=yx:gsub('OO434','"'..OO434..'"')
yx=yx:gsub('OO435','"'..OO435..'"')
yx=yx:gsub('OO436','"'..OO436..'"')
yx=yx:gsub('OO437','"'..OO437..'"')
yx=yx:gsub('OO438','"'..OO438..'"')
yx=yx:gsub('OO439','"'..OO439..'"')
yx=yx:gsub('OO440','"'..OO440..'"')
yx=yx:gsub('OO441','"'..OO441..'"')
yx=yx:gsub('OO442','"'..OO442..'"')
yx=yx:gsub('OO443','"'..OO443..'"')
yx=yx:gsub('OO444','"'..OO444..'"')
yx=yx:gsub('OO445','"'..OO445..'"')
yx=yx:gsub('OO446','"'..OO446..'"')
yx=yx:gsub('OO447','"'..OO447..'"')
yx=yx:gsub('OO448','"'..OO448..'"')
yx=yx:gsub('OO449','"'..OO449..'"')
yx=yx:gsub('OO450','"'..OO450..'"')
io.open(y[1].."转.lua","w"):write(yx)