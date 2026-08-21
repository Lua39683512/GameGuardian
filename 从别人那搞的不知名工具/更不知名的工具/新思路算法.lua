function L(S, Q)
  data=""
  k=0
  for i=1,#S do
    k=k+1
    data=data..string.char((S:byte(i))~(Q:byte(k)))
    if k==#Q then
      k=0
    end
  end
  return data
end

a=gg.prompt({"选择脚本","若加密请勾选"},{gg.getFile(),false},{"file","checkbox"})
S=io.open(a[1],"r"):read("*a")



A=L(S,gg.prompt({"输入密钥"},{""},{"text"})[1])
if a[2]== true then
  io.open(a[1]..".lua","w"):write(A)
  gg.setVisible(true)
  print("加密成功!\n脚本生成在:"..a[1]..".lua\n执行请用本脚本")
else
load(A)()
end