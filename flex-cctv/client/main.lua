local QBCore = exports["qb-core"]:GetCoreObject()
local PlayerJob = nil -- Define global variable
local currentCameraIndex, createdCamera = 0, 0
local camModels = {}
local currentCamera = {
    cameraID = 0
}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job.name -- Update PlayerJob to job name
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo.name -- Update PlayerJob to job name
end)

-- Cameramodelloop
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        if not IsPedInAnyVehicle(ped, false) then
            for k, v in pairs(Config.Surveillance.Cameras) do
                if not v.hacked and v.model.model then
                    local dist = #(pos - v.coords)
                    if dist < Config.maxCameraDistCheck then
                        if not v.model.spawned then
                            local camcoords = vec3(v.coords.x + v.model.xOffset, v.coords.y + v.model.yOffset, v.coords.z + v.model.zOffset)
                            if not DoesObjectOfTypeExistAtCoords(camcoords, 2.0, v.model.model, true) then
                                camModels[v.label] = CreateObject(v.model.model, camcoords.x, camcoords.y, camcoords.z, true, true, true)
                                SetEntityRotation(camModels[v.label], 0.0, 0.0, v.model.rotation, false, false)
                                SetEntityCollision(camModels[v.label], true)
                                FreezeEntityPosition(camModels[v.label], true)
                            end
                            v.model.spawned = true
                        end
                    else
                        if v.model.spawned then
                            if DoesEntityExist(camModels[v.label]) then
                                DeleteObject(camModels[v.label])
                            end
                            v.model.spawned = false
                        end
                    end
                end
            end
        else
            for k, v in pairs(camModels) do if DoesEntityExist(k) then DeleteObject(k) end end
        end
        Wait(1000 * Config.cameraCheckTime)
    end
end)

CreateThread(function()
    local allowedJobs = Config.Surveillance.AllowedJobs
    while true do -- Add loop to keep checking for job updates
        Wait(500)
        local hasAccess = false -- Reset hasAccess to false
        for i=1, #allowedJobs do
            if allowedJobs[i] == PlayerJob then -- Check PlayerJob instead of PlayerJob.name
                hasAccess = true
                break
            end
        end
        if hasAccess then
            if not Config.Surveillance.Target.CustomSpot then
                local target = Config.Surveillance.Target
                exports['qb-target']:AddBoxZone("CCTVMenu", target.points, target.width, target.length, {
                    name = "CCTVMenu",
                    heading = target.heading,
                    debugPoly = Config.Debug,
                    minZ = target.minZ,
                    maxZ = target.maxZ,
                }, {
                    options = {
                        {  
                            event = "flex-cctv:client:cctvmenu",
                            label = Lang:t('menu.cctv'),
                            icon = 'fas fa-video',
                        },
                    },
                    distance = target.distance,
                })
                break -- Exit the loop if access is granted
            end
        end
    end
end)

-- Camera Functions
function GetCurrentTime()
    local hours = GetClockHours()
    local minutes = GetClockMinutes()
    if hours < 10 then hours = tostring(0 .. GetClockHours()) end
    if minutes < 10 then minutes = tostring(0 .. GetClockMinutes()) end
    return tostring(hours .. ":" .. minutes)
end

function ChangeSecurityCamera(x, y, z, rotation)
    if createdCamera ~= 0 then DestroyCam(createdCamera, 0) createdCamera = 0 end
    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
    SetCamCoord(cam, x, y, z)
    SetCamRot(cam, rotation.x, rotation.y, rotation.z, 2)
    RenderScriptCams(1, 0, 0, 1, 1)
    Wait(250)
    createdCamera = cam
end

function CloseSecurityCamera()
    DestroyCam(createdCamera, 0)
    RenderScriptCams(0, 0, 1, 1, 1)
    createdCamera = 0
    ClearTimecycleModifier("scanline_cam_cheap")
    SetFocusEntity(GetPlayerPed(PlayerId()))
    if hideradar then DisplayRadar(true) end
end

function InstructionButton(ControlButton) N_0xe83a3e3557a56640(ControlButton) end

function InstructionButtonMessage(text)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end

function CreateInstuctionScaleform(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do Wait(0) end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(1)
    InstructionButton(GetControlInstructionalButton(1, 194, true))
    InstructionButtonMessage(Lang:t('info.close'))
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_BACKGROUND_COLOUR")
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(80)
    PopScaleformMovieFunctionVoid()
    return scaleform
end

-- Threads
function handleCameraRotation()
    local getCameraRot = GetCamRot(createdCamera, 2)
    -- ROTATE UP
    if IsControlPressed(0, 32) then if getCameraRot.x <= 0.0 then SetCamRot(createdCamera, getCameraRot.x + 0.7, 0.0, getCameraRot.z, 2) end end
    -- ROTATE DOWN
    if IsControlPressed(0, 8) then if getCameraRot.x >= -50.0 then SetCamRot(createdCamera, getCameraRot.x - 0.7, 0.0, getCameraRot.z, 2) end end
    -- ROTATE LEFT
    if IsControlPressed(0, 34) then SetCamRot(createdCamera, getCameraRot.x, 0.0, getCameraRot.z + 0.7, 2) end
    -- ROTATE RIGHT
    if IsControlPressed(0, 9) then SetCamRot(createdCamera, getCameraRot.x, 0.0, getCameraRot.z - 0.7, 2) end
end

CreateThread(function()
    while true do
        local sleep = 2000
        if createdCamera ~= 0 then
            sleep = 5
            local instructions = CreateInstuctionScaleform("instructional_buttons")
            DrawScaleformMovieFullscreen(instructions, 255, 255, 255, 255, 0)
            SetTimecycleModifier("scanline_cam_cheap")
            SetTimecycleModifierStrength(1.0)
            if hideradar then DisplayRadar(false) end
            -- CLOSE CAMERAS
            if IsControlJustPressed(1, 177) then
                DoScreenFadeOut(250)
                while not IsScreenFadedOut() do Wait(0) end
                CloseSecurityCamera()
                SendNUIMessage({ type = "disablecam", })
                DoScreenFadeIn(250)
				local PlayerPed = PlayerPedId()
				FreezeEntityPosition(PlayerPed, false)
                currentCamera.cameraID = nil
            end
            -- CAMERA ROTATION CONTROLS
            local cameraConfig = nil
            if Config.Surveillance.Cameras[currentCameraIndex].rotatable then
                cameraConfig = Config.Surveillance.Cameras[currentCameraIndex]
            end
            if cameraConfig ~= nil then handleCameraRotation() end
        end
        Wait(sleep)
    end
end)

-- Events
function HandleCameraEvent(cameraId)
    currentCamera.cameraID = cameraId
    local cameras = Config.Surveillance.Cameras
    if not cameras[cameraId] then
        if Config.NotificationType.client == "qbcore" then
            QBCore.Functions.Notify(Lang:t('error.nocamera'), "error")
        elseif Config.NotificationType.client == "astudios" then
            exports['astudios-notify']:notify("", Lang:t('error.nocamera'), 5000, 'error')
        elseif Config.NotificationType.client == "okok" then
            exports['okokNotify']:Alert("", Lang:t('error.nocamera'), 5000, 'error')
        end
        return
    end
    DoScreenFadeOut(250)
    while not IsScreenFadedOut() do Wait(0) end
    SendNUIMessage({ type = "enablecam", label = cameras[cameraId].label, id = cameraId, connected = true, time = GetCurrentTime(), })
    local firstCamx = cameras[cameraId].coords.x
    local firstCamy = cameras[cameraId].coords.y
    local firstCamz = cameras[cameraId].coords.z
    local firstCamr = cameras[cameraId].rotation
    SetFocusArea(firstCamx, firstCamy, firstCamz, firstCamx, firstCamy, firstCamz)
    ChangeSecurityCamera(firstCamx, firstCamy, firstCamz, firstCamr)
    currentCameraIndex = cameraId
    DoScreenFadeIn(250)
	local PlayerPed = PlayerPedId()
	if cameraId == 0 then FreezeEntityPosition(PlayerPed, false) else FreezeEntityPosition(PlayerPed, true) end
end

RegisterNetEvent('flex-cctv:client:camera', function(cameraId)
    if not Config.Surveillance.Cameras[cameraId].hacked then
        HandleCameraEvent(cameraId)
    else
        if Config.NotificationType.client == "qbcore" then
            QBCore.Functions.Notify(Lang:t('error.hacked'), "error")
        elseif Config.NotificationType.client == "astudios" then
            exports['astudios-notify']:notify("", Lang:t('error.hacked'), 5000, 'error')
        elseif Config.NotificationType.client == "okok" then
            exports['okokNotify']:Alert("", Lang:t('error.hacked'), 5000, 'error')
        end
    end
end)

RegisterNetEvent('flex-cctv:client:hackcamera', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local lastdist = nil
    local hackinfo = {
        camType = nil,
        camId = nil
    }
    if not IsPedInAnyVehicle(ped, false) then
        for k, v in pairs(Config.Surveillance.Cameras) do
            if not v.hacked then
                local dist = #(pos - v.coords)
                if lastdist ~= nil then
                    if lastdist > dist then
                        lastdist = dist
                        hackinfo.camId = k
                    end
                else
                    lastdist = dist
                    hackinfo.camId = k
                end
            end
        end
        if lastdist <= Config.hackDistance then
            RequestAnimDict('cellphone@female')
	        repeat Wait(1) until HasAnimDictLoaded('cellphone@female')
            TaskPlayAnim(ped, "cellphone@female", "cellphone_text_read_base_cover_low" ,2.0, 2.0, -1, 51, 0, false, false, false)
            local phone = QBCore.Functions.AttachProp(ped, 'prop_phone_ing', 28422, -0.0190, -0.0250, 0.0400, 19.17, -78.50, 14.97, 1)
            exports['ps-dispatch']:HackCamera()
            exports['boii-chiphack']:StartGame(function(success)
                if success then
                    ClearPedTasks(ped)
                    DeleteEntity(phone)
                    local cam = hackinfo.camId
                    TriggerServerEvent('flex-cctv:server:registerhacked', cam, true)
                    SetTimeout(1000*60*Config.TimeTillCamBack , function()
                        TriggerServerEvent('flex-cctv:server:registerhacked', cam, false)
                    end)
                    QBCore.Functions.Notify(Lang:t('success.camoff'), "success", 4500)
                else
                    ClearPedTasks(ped)
                    DeleteEntity(phone)
                    QBCore.Functions.Notify(Lang:t('error.failedhack'), "error", 4500)
                end
            end, 10, 60)
        end
    else
        for k, v in pairs(camModels) do if DoesEntityExist(k) then DeleteObject(k) end end
    end
end)

RegisterNetEvent('flex-cctv:client:registerhacked', function(camId, isHacked)
    Config.Surveillance.Cameras[camId].hacked = isHacked
    if currentCamera.cameraID == camId and isHacked then
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do Wait(0) end
        CloseSecurityCamera()
        SendNUIMessage({ type = "disablecam", })
        DoScreenFadeIn(250)
        local PlayerPed = PlayerPedId()
        FreezeEntityPosition(PlayerPed, false)
    end
end)

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
    for k, v in pairs(Config.Surveillance.Cameras) do
        if v.model.model then
            local camcoords = vec3(v.coords.x + v.model.xOffset, v.coords.y + v.model.yOffset, v.coords.z + v.model.zOffset)
            local obj = GetClosestObjectOfType(camcoords.x, camcoords.y, camcoords.z, 5.0, GetHashKey(v.model.model), false, true ,true)
            if DoesEntityExist(obj) then
                SetEntityAsMissionEntity(obj, false, false)
                DeleteObject(obj)
            end
        end
    end
end)