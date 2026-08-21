GETTABUP v0 u0 "load"

LOADK v1 " io.open('nr.lua','w')    nr={}    function hook()        o,v=debug.getlocal(3,4)        if v~=nil and type(v)=='table' and not nr[v] then            nr[v]=2            io.open('nr.lua','a'):write(tostring(v)..'\n')        end    end    debug.sethook(hook,'',1)"

CALL v0..v1 v0..v0

CALL v0..v0
