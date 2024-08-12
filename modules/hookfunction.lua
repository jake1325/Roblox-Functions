--[[
    hookfunction.lua

    Trash Hookfunction For Celery
    No Credits to Void (me) and free to use.
]]

function hookfunction(old, hook)
    local funcName = debug.getinfo(old).name
    getgenv()[funcName] = function(...)
        return hook(...)
    end
    return false
end

getgenv().hookfunction = hookfunction
print("loaded trash hookfunction")
