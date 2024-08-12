function hookfunction(old, hook)
    local funcName = debug.getinfo(old).name
    getgenv()[funcName] = function(...)
        return hook(...)
    end
    return false
end

getgenv().hookfunction = hookfunction
