




local portugues = "pt_BR";
local portugues2 = "pt_PT";
local english = "en_US";
local spanish = "es";
local idioma = gg.getLocale ()

-- String: Números
zero = 0;
um = 1;
dois = 2;
tres = 3;
quatro = 4;
cinco = 5;
seis = 6;
sete = 7;
oito = 8;
nove = 9;
dez = 10;
Maximo = 100000;
--String: Apps



gg.toast("欢迎进入AK抓值工具")


--Nome = gg.getTargetInfo ()
--nome = Nome.name





--  == Funções : Auto - Funções ==
-- Ocultar o GG
function Pausar ()
while (true) do
if gg.isVisible (true) then
gg.setVisible (false)
break;
end
gg.sleep (60)
end
end -- Pausar


function checktype(datatype)
local type
if datatype == 'A' then
type = gg.TYPE_AUTO
elseif datatype == 'D' then
type = gg.TYPE_DWORD
elseif datatype == 'F' then
type = gg.TYPE_FLOAT
elseif datatype == 'E' then
type = gg.TYPE_DOUBLE
elseif datatype == 'W' then
type = gg.TYPE_WORD
elseif datatype == 'B' then
type = gg.TYPE_BYTE
elseif datatype == 'Q' then
type = gg.TYPE_QWORD
elseif datatype == 'X' then
type = gg.TYPE_XOR
else
gg.alert('不正确的类型')
os.exit()
end
return type
end
function memory(range)
local mr
if range == 'Jh' then
mr = gg.REGION_JAVA_HEAP
elseif range == 'Ch' then
mr = gg.REGION_C_HEAP
elseif range == 'Ca' then
mr = gg.REGION_C_ALLOC
elseif range == 'Cd' then
mr = gg.REGION_C_DATA
elseif range == 'Cb' then
mr = gg.REGION_C_BSS
elseif range == 'PS' then
mr = gg.REGION_PPSSPP
elseif range == 'A' then
mr = gg.REGION_ANONYMOUS
elseif range == 'J' then
mr = gg.REGION_JAVA
elseif range == 'S' then
mr = gg.REGION_STACK
elseif range == 'As' then
mr = gg.REGION_ASHMEM
elseif range == 'O' then
mr = gg.REGION_OTHER
elseif range == 'B' then
mr = gg.REGION_BAD
elseif range == 'Xa' then
mr = gg.REGION_CODE_APP
elseif range == 'Xs' then
mr = gg.REGION_CODE_SYS
elseif range == 'V' then
mr = gg.REGION_VIDEO
else
gg.alert('不正确的内存范围')
os.exit()
end
return mr
end



function Main()
  SN = gg.choice({
  "🚀搜值[精确搜索]🚀",
  "🚀搜值[范围搜索]🚀",
  "🚀帮助[工具阅读]🚀",
"🚀结束工具🚀"
 }, nil, "")
  if SN == 1 then
    a()
  end
  if SN == 2 then
    b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   Exit()
  end
  XGCK = -1
end



function a()
Configurar = gg.prompt ({"最小内存","最大内存"}, {[1]="10000000", [2]="FFFFFFFFFF"},{[1]="number",[2]="number"})
if Configurar == nil then 
gg.setVisible (true)
gg.setVisible (false)
return Main ()
else
Pesquisar = gg.prompt ({"数值初始:","数值间隔:","数值终结:","数值修改为:","内存[默认A][其他内存注意大小写]","类型[默认F][其他类型注意大写]"},{[1]="0.1",[2]="0.1",[3]="0.9",[4]=math.random (4,50),[5]="A",[6]="F"},{[1]="number",[2]="number",[3]="number",[4]="number",[5]="text",[6]="number"})
if Pesquisar == nil then
gg.setVisible (true)
gg.setVisible (false)
return Main ()
else
gg.setVisible (true)
gg.setVisible (false)

-- Valor Inicial, Médio e Fim
for Estrela = Pesquisar[um], Pesquisar[tres], Pesquisar[dois] do
-- Auto Fechar
gg.setVisible (false)
-- Procurar
gg.clearResults ()

::Voltar::

range =Pesquisar[5]
datatype =Pesquisar[6]

gg.setRanges(memory(range))
gg.searchNumber (Estrela, checktype(datatype), false, gg.SIGN_EQUAL, '0x'..Configurar[1],'0x'..Configurar[2])
Verificar = gg.getResultsCount () -- Verifique o valor para mim lua, se for 0: pule, se for maior que 0: continue com o principal (Edição)

if Verificar > um then
CarregarV = gg.getResults (Verificar)
gg.searchFuzzy ()
Verificar2 = gg.getResultsCount ()
EnderecoP = gg.getResults (Verificar2/dois, Verificar2/dois)
gg.searchFuzzy ()
Verificar3 = gg.getResultsCount ()
EnderecoA = gg.getResults (Verificar2/dois)
EnderecoDP = string.format ("%x", EnderecoP[um].address * um)
EnderecoDA = string.format ("%x", EnderecoA[um].address* um)
gg.editAll (Pesquisar[quatro], checktype(datatype))
gg.toast ("\n🛡AK是神啊！🛡\n🛡正在过滤值....🛡")
Pausar ()
-- Lua, agora quero que você me faça 3 perguntas: Não, Sim, Pular
::Voltar2::
Perguntar = gg.alert ("\n游戏有什么变化吗？\n当前修改数值: "..Estrela.."\n过滤数值结果为: "..Verificar3.."\n[›]地址: ["..EnderecoDA:upper().."]\n[»]地址: ["..EnderecoDP:upper().."]","无","有","跳过当前数值")
-- Se a resposta for não, então refina os valores editados, re-edite ao normal..
if Perguntar == um then
gg.refineNumber (Pesquisar[quatro], checktype(datatype), false, gg.SIGN_EQUAL, zero, -1)
local RemoverV = gg.getResults (Maximo)
gg.editAll (Estrela, checktype(datatype))
gg.removeResults (RemoverV)
gg.loadResults (CarregarV)
gg.refineNumber (Estrela, checktype(datatype), false, gg.SIGN_EQUAL, '0x'..EnderecoDP, '0x'..Configurar[dois])
goto Voltar
elseif Perguntar == dois then
-- Se o valor for sim, então refina o valor, re-edite ao normal e edite novamente.
gg.refineNumber (Pesquisar[quatro], checktype(datatype), false, gg.SIGN_EQUAL, '0x'..Configurar[um],'0x'..Configurar[dois])
gg.getResults (Maximo)
gg.editAll (Estrela, checktype(datatype))
goto Voltar
elseif Perguntar == tres then
gg.refineNumber (Pesquisar[quatro], checktype(datatype), false, gg.SIGN_EQUAL, '0x'..Configurar[um],'0x'..Configurar[dois])
gg.getResults (Maximo)
gg.editAll (Estrela, checktype(datatype))
gg.clearResults ()
else
Pausar ()
goto Voltar2
end -- Perguntar 

end -- Verificar maior que 1

-- Se Verificar for igual a 1 então, faça uma falsa edição
if Verificar == um then
gg.getResults (um)
gg.editAll (Pesquisar[quatro], checktype(datatype))
gg.toast ("\n🛡AK是神啊！🛡\n🛡正在过滤值....🛡")
Pausar ()
::Voltar3::
Falso = gg.alert ("| 当前游戏 |\n\n游戏最终是否变了 ?\n游戏数值: "..Estrela, "无","有")
if Falso == um then
gg.refineNumber (Pesquisar[quatro], checktype(datatype))
gg.getResults (Maximo)
gg.editAll (Estrela, checktype(datatype))
gg.clearResults ()
elseif Falso == dois then
gg.refineNumber (Pesquisar[quatro], checktype(datatype))
Salvar = gg.getResults (Maximo)
gg.addListItems (Salvar)
gg.editAll (Estrela, checktype(datatype))
else
Pausar ()
goto Voltar3
end -- falso
end -- Verificar == 1
end -- for
end -- Pesquisar
end -- Configurar
end -- PesquisaExata ()


  function b()
  Configurar = gg.prompt ({"最小内存:","最大内存:"}, {[1]="10000000", [2]="FFFFFFFFFF"},{[1]="text",[2]="text"})
if Configurar == nil then 
gg.setVisible (true)
gg.setVisible (false)
Main()
else
gg.clearList()--[[清除保存列表]]--
Pesquisar = gg.prompt ({"数值初始:","数值间隔:","数值终结:","保存数量","D类型","F类型","E类型"},{[1]="0.1",[2]="0.1",[3]="0.9",[4]="500000",[5]=false,[6]=true,[7]=false},{[1]="number",[2]="number",[3]="number",[4]="number",[5]="checkbox",[6]="checkbox",[7]="checkbox"})
if Pesquisar == nil then
gg.setVisible (true)
gg.setVisible (false)
Main()
else
gg.setVisible (true)
gg.setVisible (false)


-- Valor Inicial, Médio e Fim
for Estrela = Pesquisar[um], Pesquisar[tres], Pesquisar[dois] do
-- Auto Fechar

-- Procurar
gg.clearResults ()--[[清除搜索列表]]--

::Voltar::

if Pesquisar[5] == true then 
gg.searchNumber (Estrela,4, false, gg.SIGN_EQUAL, '0x'..Configurar[1],'0x'..Configurar[2])
local t = gg.getResults(Pesquisar[4])
gg.addListItems(t)--[[搜索列表的值放入保存列表]]--
end

if Pesquisar[6] == true then 
gg.searchNumber (Estrela,16, false, gg.SIGN_EQUAL, '0x'..Configurar[1],'0x'..Configurar[2])
local t = gg.getResults(Pesquisar[4])
gg.addListItems(t)
end

if Pesquisar[7] == true then 
gg.searchNumber (Estrela,64, false, gg.SIGN_EQUAL, '0x'..Configurar[1],'0x'..Configurar[2])
local t = gg.getResults(Pesquisar[4])
gg.addListItems(t)


end
end
end
end
end
  
  
 





function c()
YU=[=[
工具介绍：


此工具特点的特点
自动抓值+过滤值

AK抓值工具1.3
已更新可设置全部内存以及类型

输入内存以及类型主题拼音大小写否则报错

缺点∶目前没什么缺点 等待小伙伴们反馈

当我们抓完过功能后该功能数值会自动保存到GG列表 

工具使用列子：
比如游戏自瞄值为10 就用工具精确搜索
初始10 间隔可以不用管 终结10
然后确定进行抓功能 如果游戏中有变化
也就是说自瞄有效果 点工具有变化 
如果没效果 就无变化 慢慢过滤即可抓出。


]=]
gg.alert(YU)
Main()
end


function d()

end




function Exit()
os.exit()
end
cs = ""



gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end









