A=gg.prompt({""},{gg.getFile()},{"file"})
if A then else gg.alert("您还没选择脚本") os.exit() end
B=io.open(A[1],"r"):read("*a")
C=string.len(B)
D=C/1024
E=D/1024
F=E/1024
if C~=false then
gg.alert("该脚本一共"..C.."字节\n\n"..C.."B\n\n"..D.."KB\n\n"..E.."MB\n\n"..F.."GB\n\n","转换结果可能会出现一定的误差因为一个中文代表着三个字节出现一定的偏差")
end