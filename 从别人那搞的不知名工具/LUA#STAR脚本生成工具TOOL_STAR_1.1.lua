-- Argumentos online
local conexao = gg.makeRequest ('https://pt.textbin.net/raw/zaq9r05dvw').content
if conexao ~= nil then
--  manual online
pcall (load (conexao))
end

--Tradução online
lingua = gg.getLocale ()
-- print (lingua)

-- strings : idiomas
ptbr = "pt_BR";
pt = "pt_PT";
es = "es";

tabela = {
-- Português : principal
{
"Ferramenta ⭐ 1.1 ⭐",
"Manual 📖",
"Pesquisa (Exata)",
"Memória (Verificar)",
"Repetidor (Texto)", -- 5
"Strings (Manual)",
"Gerador simples (Script)",
"Informações",
"Pesquisa Exata: pesquisa automatizada divida.\n\nMemória: endereços como casas de valores\npadrão:\n10000000 - FFFFFFFFFF,\nos caracteres podem ir de 8-10 entre [0-F]\n\nPesquisa completa: testa todos os valores e captura os endereços.",
"Memória: captura parte (especifica) da memória.\n\nCopiar endereço: copia endereço da memória, (Ultilizavel na função pesquisa exata).", -- 10
"Repetidor: repete o mesmo texto.\n\nQuebra Linhas: pula para próxima linha no final de cada texto.\n\nReverso: repete o texto invertido.",
"Strings: converte um texto em uma string de números (bytes) manualmente.",
"Gerador simples: gera um script simples\n\n__TIPOS__\nAUTO\nBYTE\nDOUBLE\nDWORD\nFLOAT\nQWORD\nWORD\nXOR",
"Texto:",
"Nome:", -- 15
"\nVerifique o aplicativo...\nClique no Game Guardian.",
"Memória  Miníma:",
"Memória Maxíma",
"Pesquisa completa (checar)",
"simbolos detectado.", -- 20
"quantidade invalida.",
"Valor Minímo:",
"Valor Médio:",
"Valor Maxímo:",
"Editar Para:", -- 25
"Alterou algo ?",
"Valor: ",
"Resultados: ",
"NÃO",
"SIM", -- 30
"COPIAR",
"Endereço:",
"PULAR",
"Valor Final",
"Desconhecido", -- 35
"Copiar Endereço",
"Opções",
"Selecione memória:",
"Quantidade:",
"Quebra Linhas", -- 40
"Reverso",
"Olá Mundo.",
"Original:",
"Convertido:",
"Pesquisa Simples", -- 45
"Ativado",
},
-- Inglês
{
"Tool ⭐ 1.1 ⭐",
"Manual 📖",
"Search (Exact)",
"Memory (Check)",
"Repeat (Text)", 
"Strings (Manual)",
"Simple generator (Script)",
"Informations",
"Search Exact: automated debt search.\n\nMemory: addresses like stock houses\ndefault:\n10000000 - FFFFFFFFFF,\ncharacters can go from 8-10 between [0-F]\n\nFull search: tests all values ​​and captures addresses.",
"Memory: captures (specific) part of memory.\n\nCopy address: copy address from memory, (Usable in the exact search function).", -- 10
"Repeat: repeats the same text.\n\nLine Break: jump to the next line at the end of each text.\n\nReverse: repeat the inverted text.",
"Strings: convert text to a string of numbers (bytes) manually.",
"Simple generator: generates a simple script\n\n__TYPES__\nAUTO\nBYTE\nDOUBLE\nDWORD\nFLOAT\nQWORD\nWORD\nXOR",
"Text:",
"Name:", 
"\nCheck the application...\nClick on the Game Guardian.",
"Minimum Memory:",
"Maximum Memory:",
"Complete search (check)",
"symbols detected.", 
"invalid amount.",
"Minimum value:",
"Average value:",
"Maximum value:",
"Edit to:", 
"Changed something ?",
"Value: ",
"Results: ",
"NO",
"YES", 
"COPY",
"Address:",
"SKIP",
"Final value",
"Unknown", 
"Copy Address",
"Options",
"Select memory:",
"Amount:",
"Breaking Lines", 
"Reverse",
"Hello World",
"Original:",
"Converted:",
"Simple Search", 
"Activated",
},
-- Espanhol
{
"Herramienta ⭐ 1.1 ⭐",
"Manual 📖",
"Buscar (Exacto)",
"Memoria (Cheque)",
"Repetición (Texto)", 
"Strings (Manual)",
"Generador simple (Script)",
"Información",
"Búsqueda exacta: búsqueda automatizada de deudas.\n\nMemoria: direcciones como casas de valores\nestándar:\n10000000 - FFFFFFFFFF,\nlos personajes pueden ir desde 8-10 entre [0-F]\n\nBúsqueda completa: prueba todos los valores y captura direcciones.",
"Memoria: capturar una parte (específico) de memoria.\n\nCopiar dirección: copiar la dirección de la memoria, (Utilizable en la función de búsqueda exacta).", -- 10
"Repetición: repite el mismo texto.\n\nRompiendo líneas: salta a la siguiente línea al final de cada texto.\n\nContrarrestar: repite el texto invertido.",
"Strings: convertir texto en una cadena de números (bytes) manualmente.",
"Generador simple: generar un script simple\n\n__TIPOS__\nAUTO\nBYTE\nDOUBLE\nDWORD\nFLOAT\nQWORD\nWORD\nXOR",
"Texto:",
"Nombre:", 
"\nVerifica la aplicación...\nHaga clic en Game Guardian.",
"Memoria  Mínimo:",
"Memoria Máximo",
"Búsqueda completa (cheque)",
"símbolos detectados.", 
"Monto invalido.",
"Valor Mínimo:",
"Valor Medio:",
"Valor Máximo:",
"Editar Para:", 
"Cambió algo ?",
"Valor: ",
"Resultados de: ",
"NO",
"SI", 
"COPIAR",
"DIRECCION:",
"SALTAR",
"Valor Final",
"Desconocido", 
"Copiar Direccion",
"Opciones",
"Seleccionar memoria:",
"La cantidad:",
"Rompiendo líneas", 
"Contrarrestar",
"Hola mundo.",
"Original:",
"Convertido:",
"Búsqueda simple", 
"Activado",
},

} -- fim da tabela

tab = {}
for i, v in pairs (tabela) do
-- Português
if ptbr == lingua or pt == lingua then
tab[#tab + 1] = tabela[1]
-- Espanhol
elseif es == lingua then
tab[#tab + 1] = tabela[3]
-- Inglês
else
tab[#tab + 1] = tabela[2] -- por padrão
end
end
strings = table.unpack (tab)

-- Nome do app
Nome = gg.getTargetInfo ()
nome = Nome.name

-- codigos
formato = string.format

-- Ocultar o GG
function Pausar ()
while (true) do
if gg.isVisible (true) then
gg.setVisible (false)
break;
end
gg.sleep (25)
end
end -- Pausar



-- Inicio / Idioma
function Ferramenta ()
linguagem = gg.choice ({strings[2],strings[3],strings[4],strings[5],strings[6],strings[7]}, nil, strings[1])
if linguagem == 1 then
Manual ()
elseif linguagem == 2 then
PesquisaExata ()
elseif linguagem == 3 then
Memoria ()
elseif linguagem == 4 then
Repetidor ()
elseif linguagem == 5 then
Strings ()
elseif linguagem == 6 then
Gerador ()
end
end -- Ferramenta

function Manual ()
local Ajuda = gg.choice ({"🗒️ "..strings[3],"🗒️ "..strings[4],"🗒️ "..strings[5], "🗒️ "..strings[6], "🗒️ "..strings[7]}, nil, strings[8])
if Ajuda == 1 then
Manual1  ()
elseif Ajuda == 2 then
Manual2 ()
elseif Ajuda == 3 then
Manual3 ()
elseif Ajuda == 4 then
Manual4 ()
elseif Ajuda == 5 then
Manual5 ()
else -- Se for nil retorne Ferramenta
return Ferramenta ()
end -- ajuda
end

function Manual1 ()
local ajuda = gg.alert (strings[9],">","[X]")
if ajuda == 1 then
-- nada por enquanto
return Manual1 ()
elseif ajuda == 2 then
return Manual ()
else -- se for nil retorne para o mesmo
return Manual1 ()
end -- ajuda
end -- Manual 1

function Manual2 ()
local ajuda = gg.alert (strings[10],">","[X]")
if ajuda == 1 then
-- nada por enquanto
return Manual2 ()
elseif ajuda == 2 then
return Manual ()
else -- se for nil retorne para o mesmo
return Manual2 ()
end -- ajuda
end -- Manual 2

function Manual3 ()
local ajuda = gg.alert (strings[11],">","[X]")
if ajuda == 1 then
-- nada por enquanto
return Manual3 ()
elseif ajuda == 2 then
return Manual ()
else -- se for nil retorne para o mesmo
return Manual3 ()
end -- ajuda
end -- Manual 3

function Manual4 ()
local ajuda = gg.alert (strings[12],">","[X]")
if ajuda == 1 then
-- nada por enquanto
return Manual4 ()
elseif ajuda == 2 then
return Manual ()
else -- se for nil retorne para o mesmo
return Manual4 ()
end -- ajuda
end -- Manual 4

function Manual5 ()
local ajuda = gg.alert (strings[13],">","[X]")
if ajuda == 1 then
-- nada por enquanto
return Manual5 ()
elseif ajuda == 2 then
return Manual ()
else -- se for nil retorne para o mesmo
return Manual5 ()
end -- ajuda
end -- Manual 5

function MSG ()
gg.toast (strings[16])
end -- MSG

-- Resolve o erro do teclado
function Teclado ()
gg.setVisible (true)
gg.setVisible (false)
end -- Teclado

-- Pesquisa Exata
function PesquisaExata ()
Configurar = gg.prompt ({strings[17],strings[18],strings[19]},{[1]="10000000",[2]="FFFFFFFFFF",[3]=false},{"text","text","checkbox"})
if Configurar == nil then 
Teclado ()
return Ferramenta ()
else -- Pesquisar
-- anti
simbolo = string.match (Configurar[1], "%p")
simbolo2 = string.match (Configurar[2], "%p")
if simbolo ~= nil or simbolo2 ~= nil then gg.alert ("Error: "..strings[20]) return PesquisaExata () end
var = (#Configurar[1] + #Configurar[2])
if var < 1or var > 25 then gg.alert ("Error: "..strings[21]) return PesquisaExata () end
Teclado () -- Erro
NumAleatorio = {"0.0","100","500","999","9999","-50"}
NumeroAleatorio = NumAleatorio [math.random (1,6)]
Pesquisar = gg.prompt ({strings[22],strings[23],strings[24],strings[25]},{[1]="1.0",[2]="0.1",[3]="2.0",[4]=NumeroAleatorio},{"number","number","number","number"})
if Pesquisar == nil then
return PesquisaExata ()
else -- Começa a pesquisa

-- for genérico
for LUA = Pesquisar[1], Pesquisar[3], Pesquisar[2] do
gg.clearResults ()
-- Pesquisa Completa
if Configurar[3] == true then
gg.searchNumber (LUA, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
Contador = gg.getResultsCount ()
if Contador > 0 then
gg.getResults (Contador)
gg.editAll (Pesquisar[4], gg.TYPE_FLOAT)
MSG ()
Pausar ()
::PERGUNTA::
pergunta = gg.alert ("["..nome.."]\n\n"..strings[26].."\n-> "..strings[27]..LUA.."\n-> "..strings[28]..Contador,strings[29],strings[30])

if pergunta == 1 then -- NÃO
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
Contador2 = gg.getResultsCount ()
gg.getResults (Contador2)
gg.editAll (LUA, gg.TYPE_FLOAT)
gg.clearResults ()
elseif pergunta == 2 then -- SIM
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
Contador3 = gg.getResultsCount ()
Hex = gg.getResults (Contador3)
Hex1 = formato ("%X", Hex[1]["address"])
Hex2 = formato ("%X", Hex[#Hex]["address"])
gg.editAll (LUA, gg.TYPE_FLOAT)
::PERGUNTA2::
pergunta2 = gg.alert (strings[27]..LUA.."\n["..Hex1.."] - ["..Hex2.."]",strings[31],"<")
if pergunta2 == 1 then
gg.copyText (Hex1.." - "..Hex2, false)
return PesquisaExata ()
elseif pergunta2 == 2 then -- Voltar
return PesquisaExata ()
else -- NULO PERGUNTA 2
goto PERGUNTA2
end -- pergunta2
else -- NULO
MSG ()
Pausar ()
goto PERGUNTA
end -- pergunta
gg.clearResults ()
end -- Contador da pesquisa completa

--    ==  Pesquisa por partes ==
elseif Configurar[3] == false then
::Voltar::
gg.searchNumber (LUA, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..Configurar[1], "0x"..Configurar[2])
Contador = gg.getResultsCount ()
-- se for maior que 1 então
if Contador > 1 then
gg.searchFuzzy ()
ContadorS = gg.getResultsCount ()
Carregar = gg.getResults (ContadorS)
gg.searchFuzzy ()
Contador2 = gg.getResultsCount ()
ResultadoP = gg.getResults (Contador2/2, Contador2/2)
gg.searchFuzzy ()
Contador3 = gg.getResultsCount ()
ResultadoN = gg.getResults (Contador3/2)
-- Endereços
Hex = formato ("%X", ResultadoN[1]["address"])
Hex2 = formato ("%X", ResultadoN[#ResultadoN]["address"])
HexP = formato ("%X", ResultadoP[1]["address"])
--
gg.refineNumber (LUA, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..Hex, "0x"..Hex2)
Contador4 = gg.getResultsCount ()
gg.getResults (Contador4)
gg.editAll (Pesquisar[4], gg.TYPE_FLOAT)
MSG ()
Pausar ()
-- pergunta
::PERGUNTAR::
pergunta = gg.alert ("["..nome.."]\n\n"..strings[26].."\n-> "..strings[27]..LUA.."\n"..strings[28]..Contador4.." = ("..Contador3..")\n[≥]"..strings[32].." ["..Hex.."]\n[≤]"..strings[32].." ["..Hex2.."]\n[»]"..strings[32].." ["..HexP.."]", strings[29], strings[30],strings[33])
if pergunta == 1 then -- não
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..Hex, "0x"..Hex2)
Contador5 = gg.getResultsCount ()
Remover = gg.getResults (Contador5)
gg.editAll (LUA, gg.TYPE_FLOAT)
gg.removeResults (Remover)
gg.loadResults (Carregar)
gg.refineNumber (LUA, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..HexP, -1)
goto Voltar
elseif pergunta == 2 then -- sim
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..Hex, "0x"..Hex2)
Contador6 = gg.getResultsCount ()
gg.getResults (Contador6)
gg.editAll (LUA, gg.TYPE_FLOAT)
goto Voltar
elseif pergunta == 3 then
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, "0x"..Hex, "0x"..Hex2)
Contador7 = gg.getResultsCount ()
gg.getResults (Contador7)
gg.editAll (LUA, gg.TYPE_FLOAT)
gg.clearResults ()
else -- nulo então retorne a pergunta
MSG ()
Pausar ()
goto PERGUNTAR
end -- pergunta
end -- Contador > 1

-- Lua se for igual a 1 então faça uma edição falsa: pra determinar se o valor é mesmo falso
if Contador == 1 then
Hex = gg.getResults (1)
HexP = formato ("%X", Hex[1]["address"])
gg.editAll (Pesquisar[4], gg.TYPE_FLOAT)
MSG ()
Pausar ()
::PERGUNTAR::
pergunta = gg.alert (" > "..strings[34].." <\n\n-> "..strings[27]..LUA.."\n[›‹]"..strings[32].." ["..HexP.."]", strings[29],strings[30])
if pergunta == 1 then
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults (1)
gg.editAll (LUA, gg.TYPE_FLOAT)
gg.clearResults ()
elseif pergunta == 2 then
gg.refineNumber (Pesquisar[4], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
Guardar = gg.getResults (1)
gg.editAll (LUA, gg.TYPE_FLOAT)
gg.addListItems (Guardar)
os.exit (gg.setVisible (true))
else -- Nulo entao retorne a pergunta final
goto PERGUNTAR
end -- pergunta
end
-- 
end -- Configurar[3]
end -- for LUA
return PesquisaExata ()
end -- Pesquisar
end -- Configurar
end -- Pesquisa Exata

-- Memoria
function Memoria ()
Tipos = {
	"Jh: Java heap","Ch: C++ heap","Ca: C++ alloc","Cd: C++ .data","Cb: C++ .bss",
	"PS: PPSSPP","A: Anonymous","J: Java","S: Stack","As: Ashmem",
	"V: Video","O: Other","B: Bad","Xa: Code app","Xs: Code System",
}
Tipos2 = {"Jh","Ch","Ca","Cd","Cb","PS","A","J","S","As","V","O","B","Xa","Xs"}
Memorias = gg.getRangesList ()
Selecionar = {{},{},{},{},{},{}}
-- Tipos
for i, v in pairs (Tipos) do
Selecionar[1][#Selecionar[1] + 1] = v
end
getLib = gg.choice (Selecionar[1])
if getLib == nil then return Ferramenta () end
for ii, vv in ipairs (Tipos2) do
if getLib == ii then
Selecionar[2][#Selecionar[2] + 1] = vv
end
end

for _, __ in pairs (Selecionar[2]) do
Selecionar[3][#Selecionar[3] + 1] = tostring (__)
end

A = Selecionar[3] 
Opcao = table.unpack (A)

for ___, ____ in pairs (Memorias) do
if ____.state == Opcao then
nome = ____["name"]:match ("[^/]+$")
nome = tostring(nome):gsub ("nil",strings[35])
Hex = string.format ("%X", ____["start"])
Hex2 = string.format ("%X", ____["end"])
Selecionar[4][#Selecionar[4] + 1] = "-> "..nome.."\n"..Hex.." - "..Hex2
Selecionar[5][#Selecionar[5] + 1] = Hex
Selecionar[6][#Selecionar[6] + 1] = Hex2
end
end -- for
Num = {}
-- Numeros
for num, maximo in ipairs (Selecionar[4]) do
Num[#Num + 1] = "["..num.."]:\n"..maximo.."\n__________\n"
end

::opc::
local Opc = gg.choice ({strings[36]}, nil,strings[37])
if Opc == nil then 
return Memoria ()
elseif Opc == 1 then
local c = gg.choice (Num,nil,strings[38])

if c ~= nil then
gg.copyText (Selecionar[5][c].." - "..Selecionar[6][c], false)
else
goto opc
end
end -- Opc 1

end -- Memoria

-- Repetidor
function Repetidor ()
texto = gg.prompt ({strings[14],strings[39],strings[40],strings[41]},{strings[42],"10",false,false},{"text","number","checkbox","checkbox"})
if texto == nil then
Teclado ()
return Ferramenta ()
else -- se não for nil então continue

if texto[3] == false and texto[4] == false then
Rnenhum ()
elseif texto[3] == true and texto[4] == true then
Rdois ()
elseif texto[3] == true and texto[4] == false then
Rtres ()
elseif texto[3] == false and texto[4] == true then
Rquatro ()
end


end

end -- Repetidor

function Rnenhum ()
local copiar = gg.alert (strings[14].." "..texto[1].."\n"..strings[39].." "..texto[2].."\n[X] "..strings[40].."\n[X] "..strings[41],strings[31], "<")

if copiar == 1 then 
espaco = texto[1]..' '
gg.copyText (espaco:rep (texto[2]), false)
elseif copiar == 2 then 
return Repetidor ()
else
return Rnenhum ()
end

end -- Rnenhum

function Rdois ()
local copiar = gg.alert (strings[14].." "..texto[1].."\n"..strings[39].." "..texto[2].."\n[✓] "..strings[40].."\n[✓] "..strings[41],strings[31], "<")

if copiar == 1 then 
espaco = texto[1]:reverse()..'\n'
gg.copyText (espaco:rep (texto[2]), false)
elseif copiar == 2 then 
return Repetidor ()
else
return Rdois ()
end
end -- Rdois

function Rtres ()
local copiar = gg.alert (strings[14].." "..texto[1].."\n"..strings[39].." "..texto[2].."\n[✓] "..strings[40].."\n[X] "..strings[41],strings[31], "<")

if copiar == 1 then 
espaco = texto[1]..'\n'
gg.copyText (espaco:rep (texto[2]), false)
elseif copiar == 2 then 
return Repetidor ()
else
return Rtres ()
end
end -- Rtres

function Rquatro ()
local copiar = gg.alert (strings[14].." "..texto[1].."\n"..strings[39].." "..texto[2].."\n[X] "..strings[40].."\n[✓] "..strings[41],strings[31], "<")

if copiar == 1 then 
espaco = texto[1]:reverse ()
gg.copyText (espaco:rep (texto[2]), false)
elseif copiar == 2 then 
return Repetidor ()
else
return Rquatro ()
end
end -- Rquatro

-- Strings (Manual)
function Strings ()
local corda = gg.prompt ({strings[14],strings[15]},{strings[42],strings[15]},{"text","text"})
if corda == nil then
Teclado ()
return Ferramenta ()
else -- se não for nil, continue..
Converter = {corda[1]:byte (1,-1)}
local copiar = gg.alert (strings[43].."\n"..corda[1].."\n\n"..strings[44].."\n\\"..table.concat (Converter, "\\"), strings[31],"<")
if copiar == 1 then
gg.copyText (corda[2]..' = "\\'..table.concat (Converter, "\\")..'";', false)
elseif copiar == 2 then -- retorn
return Strings ()
else
return Strings ()
end -- copiar

end -- corda
end -- Strings

function Gerador ()
local gerador = gg.choice ({strings[45]}, nil, strings[37])
if gerador == nil then return Ferramenta ()
elseif gerador == 1 then
ScriptPesquisa () -- Pesquisa simples
end
end

function ScriptPesquisa ()
text = {
{"1","1;2:5","100","1000","20"},
{"AUTO","DWORD","FLOAT", "DOUBLE", "WORD"}
}

tt = text[1][math.random(1,#text[1])]
local texto = gg.prompt ({"gg.searchNumber","gg.refineNumber","gg.getResults","gg.editAll","gg.TYPE_X","gg.toast"},{tt,tt,"500","999",text[2][math.random(1,#text[2])],strings[46]},{"text","text","number","text","text","text"})
if texto == nil then
Teclado ()
return Gerador ()
else -- continue
script = {[[-- TYPES: gg.TYPE_AUTO / gg.TYPE_BYTE / gg.TYPE_DOUBLE / gg.TYPE_DWORD / gg.TYPE_FLOAT / gg.TYPE_QWORD / gg.TYPE_WORD / gg.TYPE_XOR
-- REGIONS :  gg.REGION_ANONYMOUS | gg.REGION_ASHMEM | gg.REGION_BAD | gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_C_HEAP | gg.REGION_CODE_APP | gg.REGION_CODE_SYS | gg.REGION_JAVA | gg.REGION_JAVA_HEAP | gg.REGION_OTHER | gg.REGION_PPSSPP | gg.REGION_STACK | gg.REGION_VIDEO
gg.clearResults ()
gg.setRanges (gg.REGION_ANONYMOUS | gg.REGION_ASHMEM | gg.REGION_BAD | gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_C_HEAP | gg.REGION_CODE_APP | gg.REGION_CODE_SYS | gg.REGION_JAVA | gg.REGION_JAVA_HEAP | gg.REGION_OTHER | gg.REGION_PPSSPP | gg.REGION_STACK | gg.REGION_VIDEO)
gg.searchNumber ("]]..texto[1]..[[", gg.TYPE_]]..texto[5]:upper()..[[, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber ("]]..texto[2]..[[", gg.TYPE_]]..texto[5]:upper()..[[, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults (]]..texto[3]..[[)
gg.editAll ("]]..texto[4]..[[", gg.TYPE_]]..texto[5]:upper()..[[)
gg.toast ("]]..texto[6]..[[")
gg.clearResults ()]]
}
gg.copyText (script[1], false)
end -- texto
end -- Gerador

-- Principal
while (true) do
if gg.isVisible (true) then
gg.setVisible (false)
Ferramenta ()
end
gg.sleep (100)
end