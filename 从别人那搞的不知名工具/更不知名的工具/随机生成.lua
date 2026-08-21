function LSQ(W)
    Q = ""
    for i = 1, W do
        num = math.random(1, 26)                       
        if num % 2 == 0 then
            Q = Q .. string.char(num + 64)
        else
            Q = Q .. string.char(num + 96)
        end
    end
    return Q
end

print(LSQ(2))--这里面的数字是可以控制数量
