local QBCore = exports["qb-core"]:GetCoreObject()


CreateThread(function()
    local cctvmenu = {
        {
            header = Lang:t('menu.cctv'),
            icon = 'fas fa-university', 
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.bank'),
            icon = 'fas fa-university', 
            params = {
                event = 'flex-cctv:client:cctvbank'
            }
        },
        {
            header = Lang:t('menu.stores'),
            icon = 'fas fa-store', 
            params = {
                event = 'flex-cctv:client:cctvstores'
            }
        },
        {
            header = Lang:t('menu.company'),
            icon = 'fas fa-building', 
            params = {
                event = 'flex-cctv:client:cctvcompany'
            }
        },
        {
            header = Lang:t('menu.other'),
            icon = 'fas fa-building', 
            params = {
                event = 'flex-cctv:client:cctvother'
            }
        },
        {
            header = Lang:t('menu.exit'),
            icon = 'fas fa-store', 
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    }

    local cctvbank = {
        {
            header = Lang:t('menu.bank'),
            icon = 'fas fa-university', 
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.exit'),
            icon = 'fas fa-store', 
            params = {
                event = "flex-cctv:client:cctvmenu",
            }
        },
    }

    local cctvstores = {
        {
            header = Lang:t('menu.stores'),
            icon = 'fas fa-store', 
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.exit'),
            icon = 'fas fa-store', 
            params = {
                event = "flex-cctv:client:cctvmenu",
            }
        },
    }

    local cctvcompany = {
        {
            header = Lang:t('menu.company'),
            icon = 'fas fa-building', 
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.exit'),
            icon = 'fas fa-store', 
            params = {
                event = "flex-cctv:client:cctvmenu",
            }
        },
    }

    local cctvother = {
        {
            header = Lang:t('menu.other'),
            icon = 'fas fa-building', 
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.exit'),
            icon = 'fas fa-store', 
            params = {
                event = "flex-cctv:client:cctvmenu",
            }
        },
    }

    for k, v in pairs(Config.Surveillance.Cameras) do
        if not v.hacked then
            local camItem = {
                header = v.label,
                icon = 'fas fa-video',
                params = {
                    isServer = true,
                    event = 'flex-cctv:server:camera',
                    args = {k}
                }
            }

            if string.lower(v.category) == 'store' then
                table.insert(cctvstores, camItem)
            elseif string.lower(v.category) == 'bank' then
                table.insert(cctvbank, camItem)
            elseif string.lower(v.category) == 'company' then
                table.insert(cctvcompany, camItem)
            else
                table.insert(cctvother, camItem)
            end
        end
    end

    local menus = {
        cctvmenu = cctvmenu,
        cctvbank = cctvbank,
        cctvstores = cctvstores,
        cctvcompany = cctvcompany,
        cctvother = cctvother,
    }
    
    for menuName, menu in pairs(menus) do
        RegisterNetEvent('flex-cctv:client:' .. menuName, function()
            exports['qb-menu']:openMenu(menu)
        end)
    end
end)







