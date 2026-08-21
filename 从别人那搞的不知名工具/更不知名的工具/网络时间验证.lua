A=gg.makeRequest('http://www.beijing-time.com/').content--获取网站数据

B=string.match(A,'<span id="bjtime">(.-)</span>')--捕获时间

C='2020-11-15 13:37:19'--这里填你想设置到期的时间

if B >=C then 
gg.alert("时间已到期")
while (true)
do
os.exit()
end
end

