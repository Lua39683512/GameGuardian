L=gg.prompt({'选择文件'},{gg.getFile()},{'file'})

function gg.setRanges(a)
   print("gg.setRanges("..a..")")
end
   function gg.searchNumber(L,S,Q,N,B,Y)
C=gg.alert("检测到搜索列表是否保存\n"..L.."\n\n搜索的内存值是:"..S.."\n\n是否冻结:".."false".."\n\n".."gg.SIGN_EQUAL".."\n\n"..B.."\n\n"..Y)
   print("gg.searchNumber("..L..",",S..",",Q,"gg.SIGN_EQUAL"..",",B..",",Y..")")    
end
   function gg.getResults(Q)
   print("gg.getResults("..Q..")")
end
   function gg.editAll(Q,Y)
   print("gg.editAll("..Q..",",Y..")")
end
   function gg.toast(Q)
   print("gg.toast("..Q..")")
end
   loadfile(L[1])()