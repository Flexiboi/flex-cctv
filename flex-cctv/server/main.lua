local QBCore = exports["qb-core"]:GetCoreObject()

-- Define function for registering events
local function registerCameraEvent(eventName, clientEventName)
    RegisterNetEvent(eventName, function(args)
        local cam = tonumber(args[1])
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        TriggerClientEvent(clientEventName, src, cam)
    end)
end

-- Register events for different camera types
registerCameraEvent('flex-cctv:server:camera', 'flex-cctv:client:camera')

QBCore.Functions.CreateUseableItem(Config.hackItem, function(source,item)
    TriggerClientEvent('flex-cctv:client:hackcamera', source)
end)

RegisterNetEvent('flex-cctv:server:registerhacked', function(cam, state)
    TriggerClientEvent("flex-cctv:client:registerhacked", -1, cam, state)
end)


QBCore.Commands.Add("cam", Lang:t('command.command'), {{ name = 'ID', help = Lang:t("command.info") }}, false, function(source, args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if (player.PlayerData.job.name == 'police' and player.PlayerData.job.onduty) then
        if type(tonumber(args[1])) == "number" then
            TriggerClientEvent('flex-cctv:client:camera', src, tonumber(args[1]))
        else
            TriggerClientEvent('flex-cctv:client:cctvmenu', src)
        end
    end
end)

QBCore.Commands.Add("debugcam", Lang:t('command.command'), {{ name = 'ID', help = Lang:t("command.info") }}, false, function(source, args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    --if (player.PlayerData.job.name == 'police' and player.PlayerData.job.onduty) then
        if type(tonumber(args[1])) == "number" then
            TriggerClientEvent('flex-cctv:client:camera', src, tonumber(args[1]))
        else
            TriggerClientEvent('flex-cctv:client:cctvmenu', src)
        end
    --end
end, 'admin')