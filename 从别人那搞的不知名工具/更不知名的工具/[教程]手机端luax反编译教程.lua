建议使用MT管理器进行阅读，不然文本格式可能会有点问题，造成阅读困难




1.首先用钛备份导入我的NeoTerm的备份；
再下载unluac.jar；
NeoTerm下载链接：
https://pan.baidu.com/s/1RaO_jkZmCc9fAkuKOSibSg
密码:25b8

unluac.jar下载链接：
https://pan.baidu.com/s/1YxzTRY86cd5iwgbfcCHQEA
密码:72hu



2.在   "/sdcard/"   路径下面创建一个新的文件夹（名称随意）
示例："/sdcard/反编译"



3.然后将unluac.jar移到刚才创建的文件夹里面



4.将需要反编译的脚本改一下名字（也可以不改，但是为了方便，建议改了），移到刚才创建的文件夹里面
示例：   文件名字：  "1.lua"
然后再在文件夹里面创建一个新的文件（用来接收反编译的内容）
示例：   文件名字：  "2.lua"



5.打开NeoTerm，输入指令   
  "java -jar /sdcard/反编译/unluac.jar --rawstring /sdcard/反编译/1.lua > /sdcard/反编译/2.lua​"
然后按下输入法的回车，如果显示单个的"$"就证明成功了，接下来去"2.lua"查看反编译后的内容即可
如果按下回车后，并不是直接显示"$"，前面还加了一些英文提示的话，那就是没成功，自己再检验一下哪里出错了













































教程编写作者：get√   QQ：2659349156
教程并非本人原创，只是加以改善
本教程完全免费，请勿倒卖！