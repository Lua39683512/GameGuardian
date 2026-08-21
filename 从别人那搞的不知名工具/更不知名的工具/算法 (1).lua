
function FSSjngitl(A0_6) 
L1_7 = jpfhElrc 
return (A0_6:gsub("%x%x", function(A0_8) 
L1_9 = L1_7 
L2_10 = mmdhwvbz 
L1_9 = L1_9 % L2_10 
L3_4 = kvfjSStU
L3_4 = 2448 + L3_4
L2_10 = L1_7 
L2_10 = L2_10 - L1_9 
L3_11 = mmdhwvbz 
L2_10 = L2_10 / L3_11 
L3_11 = L2_10 % 128 
A0_8 = tonumber(A0_8, 16) 
L1_7 = L1_9 * L3_4 + L2_10 + A0_8 + (A0_8 + (L2_10 - L3_11) / 128) * (2 * L3_11 + 1) % 256 
return string.char((A0_8 + (L2_10 - L3_11) / 128) * (2 * L3_11 + 1) % 256) end )) 
end 
 
