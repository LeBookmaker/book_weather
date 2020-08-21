RegisterCommand('weather', function(source, args, rawCommand)
    if args[1] == nil then
        TriggerEvent("vorp:TipBottom", "~COLOR_RED~ERROR: ~q~/weather [Weather Type]", 3000)
    else
        local index = args[1]
        for k,v in pairs(Config.weather) do
            if index == Config.weather[k] then
                Citizen.InvokeNative(0x59174F1AFE095B5A, GetHashKey(Config.weather[k]), true, false, true, true, false)
            end
        end
    end
end)