登录
✔️脚本内存:   CPP格式 如下一模一样
Jh内存 gg.REGION_JAVA_HEAP 数字值 2  同AndLua+格式 序号7
Ch内存 gg.REGION_C_HEAP 数字值 1  同AndLua+格式 序号2
Ca内存 gg.REGION_C_ALLOC 数字值 4  同AndLua+格式 序号3
Cd内存 gg.REGION_C_DATA 数字值 8  同AndLua+格式 序号4
Cb内存 gg.REGION_C_BSS 数字值 16  同AndLua+格式 序号1
Ps内存 gg.REGION_PPSSPP 数字值 262144  同AndLua+格式 序号暂无
A内存 gg.REGION_ANONYMOUS 数字值 32  同AndLua+格式 序号8
J内存 gg.REGION_JAVA 数字值 65536  同AndLua+格式 序号暂无
S内存 gg.REGION_STACK 数字值 64  同AndLua+格式 序号5
As内存 gg.REGION_ASHMEM 数字值 524288  同AndLua+格式 序号暂无
V内存 gg.REGION_VIDEO 数字值 1048576  同AndLua+格式 序号6
O内存 gg.REGION_OTHER 数字值 -2080896  同AndLua+格式 序号暂无
B内存 gg.REGION_BAD 数字值 131072  同AndLua+格式 序号6
Xa内存 gg.REGION_CODE_APP 数字值 16384  同AndLua+格式 序号9
Xs内存 gg.REGION_CODE_SYS 数字值 32768  同AndLua+格式 序号10
✔️数据类型:   CPP格式 如下一模一样
A类型 gg.TYPE_AUTO 数字值 127  AndLua+格式 此格式无
B类型 gg.TYPE_BYTE 数字值 1  AndLua+格式 单字节byte
E类型 gg.TYPE_DOUBLE 数字值 64  AndLua+格式 双精度浮点数
D类型 gg.TYPE_DWORD 数字值 4  AndLua+格式 4字节整数
F类型 gg.TYPE_FLOAT 数字值 16  AndLua+格式 单精度浮点数
Q类型 gg.TYPE_QWORD 数字值 32  AndLua+格式 8字节长整数
W类型 gg.TYPE_WORD 数字值 2  AndLua+格式 2字节整数
X类型 gg.TYPE_XOR 数字值 8  AndLua+格式 此格式无
HEX_L AndLua+格式 小端16进制
HEX_B AndLua+格式 大端16进制
✔️脚本制作初步格式:
函数/功能 function
弹出提示窗口 gg.alert
屏幕中下方提示 gg.toast(内容)
弹出带有控件的提示窗 gg.prompt
弹出单选列表窗口 gg.choice
清除搜索结果 gg.clearResults
修改搜索结果 gg.editAll
获取当前脚本所在目录 gg.getFile
获得搜索结果 gg.getResults
获得搜索结果数量 gg.getResultCount
设置搜索内存 gg.setRanges
判断gg界面是否可见 gg.isVisible
弹出多选列表窗口 gg.multiChoice
结束当前选定应用 gg.processKill
搜索数据 gg.searchNumber
设置gg界面是否可见 gg.setVisible
读取行数 getline()
获取地值 getlocale0
获取内存区域内 getRanges()
获取内存区域列表 getRangeslist
获取计算结果 getResultCount
或许结果并加载 getResultso
获取加速 getSpeedo
获取目标信息 getTargetInfo
获取过包名gg内存 getTargetPackage0
脚本时间提示 gg.alert(os.date("%Y年-%m月-%d日 %H时:%M分:%S秒")) 本地时间总和 os.clock()
结束 end
✔
%a  星期简写
%A  星期大写
%b  月份简写
%B  月份大写
%c  日期时间
%d  月份天数
%H  小时[24进制]
%I  小时[12进制]
%j  年中第几天
%m  月份
%M 分钟
%p  am或pm
%S  秒数
%w  星期
%W  第几周
%x  日期
%X  时间
%y  两位数的年份
%Y 完整的年份
%z  时区
%% 百分号
✔
ddListItems()-----------添加项目到列表中
alert()-----------警告框
BUILD-----------建立
bytes()-----------字节
CACHE_DIR-----------缓存_显示文件列表
choice()-----------选择、选定
clearList()-----------清除列表
clearResults()-----------清除结果
copyMemory()-----------复制数据、内存
copyText()-----------将文本复制到剪贴板
dumpMemory()-----------丢、转到内存
editAll()-----------编辑所有
EXT_CACHE_DIR-----------缓存目录
EXT_FILES_DIR-----------文件目录
FILES_DIR-----------文件夹目录
FREEZE_IN_RANGE-----------冻结在这个范围里
FREEZE_MAY_DECREASE-----------冻结可以减少的值
FREEZE_MAY_INCREASE-----------冻结可以增加的值
FREEZE_NORMAL-----------冻结正常、常态的值
getFile()-----------获取文件名
getLine()-----------获取行数
getListItems()-----------获取列表项目
getLocale()-----------获取地点~~~
getRanges()-----------获取内存区域内的
getRangesList()-----------获取内存区域列表
getResultCount()-----------获取结果计数
getResults()-----------获取结果并加载
getSpeed()-----------获取加速
getTargetInfo()-----------获取目标信息
getTargetPackage()-----------获取进程包名
getValues()-----------获取值
getValuesRange()-----------获取值的范围
gotoAddress()-----------转到内存地址
isPackageInstalled()-----------检查包名安装
isProcessPaused()-----------进程是否暂停
isVisible()-----------UI是否可见
LOAD_APPEND-----------加载附加
LOAD_VALUES-----------加载值
LOAD_VALUES_FREEZE-----------加载值冻结
loadList()-----------加载列表
multiChoice()-----------多种选择
PACKAGE-----------包名
processKill()-----------杀死、结束进程
processPause()-----------暂停进程
processResume()-----------恢复进程
processToggle()-----------切换进程
prompt()-----------提示
REGION_ANONYMOUS-----------gg[以下是内存范围]
REGION_ASHMEM-----------gg        
REGION_BAD-----------gg                  
REGION_C_ALLOC-----------gg        
REGION_C_BSS-----------gg
REGION_C_DATA-----------gg
REGION_C_HEAP-----------gg
REGION_CODE_APP-----------gg
REGION_CODE_SYS-----------gg
REGION_JAVA-----------gg
REGION_JAVA_HEAP-----------gg
REGION_OTHER-----------gg
REGION_PPSSPP-----------gg
REGION_STACK-----------gg[到这里是内存范围]
removeListItems()-----------删除列表中的项目
removeResults()-----------移除列表中的结果
require()-----------gg
SAVE_AS_TEXT-----------保存as？文件
saveList()-----------保存列表
searchAddress()-----------搜索地址
searchFuzzy()-----------未知搜索
searchNumber()-----------指定数值搜索
setRanges()-----------设置范围
setSpeed()-----------设置速度
setValues()-----------设置值
setVisible()-----------设置可见
SIGN_EQUAL-----------标志、标记相同
SIGN_FUZZY_EQUAL-----------标记_未知_相同
SIGN_FUZZY_GREATER-----------更大
SIGN_FUZZY_LESS-----------更小
SIGN_FUZZY_NOT_EQUAL-----------标记_未知_不_相同
SIGN_GREATER_OR_EQUAL-----------标记_更大_或_相同
SIGN_LESS_OR_EQUAL-----------标记_未知_更小_或_相同
SIGN_NOT_EQUAL-----------标记_不_相同
skipRestoreState()-----------跳跃恢复状态
sleep()-----------休眠
startFuzzy()-----------开始模糊搜索
timeJump()-----------时间跳跃
toast()-----------显示弹窗消息(自动消失)
TYPE_AUTO-----------类型全部
TYPE_BYTE-----------类型字节
TYPE_DOUBLE-----------类型双浮点
TYPE_DWORD-----------类型四字节
TYPE_FLOAT-----------类型浮点数
TYPE_QWORD-----------类型
TYPE_WORD-----------类型单字
TYPE_XOR-----------类型
VERSION-----------版本
VERSION_INT-----------国际版本
✔
gg.alert(内容)
--第①种
gg.alert(内容1,按钮1)
--第②种
gg.alert(内容1,按钮1,按钮2)
--第③种
gg.alert(内容1,按钮1,按钮2,按钮3)
--第④种
✔
gg.searchNumber("2593773682", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[259377368是搜索内容,TYPE是搜索类型]]
✔
gg.editAll("修改数值",类型)
示例：
gg.editAll("2593773682",gg.TYPE_DOUBLE)--2593773682是修改的数值，TYPE是类型
✔
a = gg.prompt({"文字信息"},
{[1]=2593773682--[[编辑框文字]]},
{[1]="number"})[1]
gg.toast("你输入了"..a)