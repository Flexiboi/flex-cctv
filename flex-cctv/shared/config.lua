Config = {}

Config.Debug = false -- True / False for Debug System
Config.maxCameraDistCheck = 20 -- Check distance if need to spawn camera
Config.cameraCheckTime = 0.5 -- Secoonds before camera model check
Config.hackDistance = 20 -- Max distance to hack
Config.TimeTillCamBack = 15 --Minutes

Config.hackItem = 'camerhacker'

-- Notifications
Config.NotificationType = { -- 'qbcore' / 'astudios' / 'okok' Choose your notification script.
    server = 'qbcore',
    client = 'qbcore' 
}

-- Surveillance
Config.Surveillance = {
    Target = {
        CustomSpot = true, -- If true, you are not using the information below.
        points = vector3(437.19, -995.38, 30.69), -- Target location
        heading = 270.0, -- Target heading
        minZ = 30.0, -- Target min Z
        maxZ = 31.0, -- Target max Z
        length = 1.4, -- Target length
        width = 2.55, -- Target width
        distance = 2.0, -- Target distance
    },
    AllowedJobs = {'police'}, -- Job Name: 'police' by default - You can add more jobs here, if you want to (e.g. 'police', 'bcso', 'sasp')
    Cameras = {
        [1] = {
            label = "Pacific Bank CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(257.45, 210.07, 109.08), 
            rotation = {
                x = -25.0, -- This is the tilt of the camera (-) = down and (+) = up 
                y = 0.0, -- This is pitch left or right - We recommend not touching it, unless you know what you are doing. 
                z = 28.05, -- This is the direction the camera is facing. Would also be the last number in vector4(x, y, z, w)
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [2] = {
            label = "Pacific Bank CAM#2", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(232.86, 221.46, 107.83), 
            rotation = {
                x = -25.0,
                y = 0.0,
                z = -140.91
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [3] = {
            label = "Pacific Bank CAM#3", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(252.27, 225.52, 103.99), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -74.87
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [4] = {
            label = "Pacific Bank CAM#3", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-53.1433, -1746.714, 31.546), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -168.9182
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [5] = {
            label = "Rob's Liqour Prosperity St. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-1482.9, -380.463, 42.363), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 79.53281
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [6] = {
            label = "Rob's Liqour San Andreas Ave. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-1224.874, -911.094, 14.401), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -6.778894
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [7] = {
            label = "Limited Ltd Ginger St. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-718.153, -909.211, 21.49), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -137.1431
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [8] = {
            label = "Delhaize Innocence Blvd. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(23.885, -1342.441, 31.552), 
            rotation = {
                x = -35.0,
                y = -0.3,
                z = -142.9191
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [9] = {
            label = "Rob's Liqour El Rancho Blvd. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1133.024, -978.712, 48.515), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -137.302
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [10] = {
            label = "Limited Ltd West Mirror Drive CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1151.93, -320.389, 71.33), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -119.4468
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [11] = {
            label = "Delhaize Clinton Ave CAM#1",
            category = 'store', -- bank, store, company, other
            coords = vector3(373.19, 331.16, 105.541), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 188.585
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [12] = {
            label = "Limited Ltd Banham Canyon Dr CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-1832.057, 789.389, 140.436), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -91.481
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [13] = {
            label = "Rob's Liqour Great Ocean Hwy CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-2966.15, 387.067, 17.393), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 32.92229
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [14] = {
            label = "Delhaize Ineseno Road CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-3043.53, 582.54, 9.808), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -15.673
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [15] = {
            label = "Delhaize Barbareno Rd. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-3247.02, 999.75, 14.705), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -35.2151
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [16] = {
            label = "Delhaize Route 68 CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(550.06, 2666.32, 44.056), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 32.947
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [17] = {
            label = "Rob's Liqour Route 68 CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1169.855, 2711.493, 40.432), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 127.17
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [18] = {
            label = "Delhaize Senora Fwy CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(2673.64, 3281.52, 57.171), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -70.242
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [19] = {
            label = "Delhaize Alhambra Dr. CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1957.36, 3743.98, 34.143), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -98.065
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [20] = {
            label = "Delhaize Senora Fwy CAM#2", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1729.75, 6419.67, 37.262), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -160.089
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [21] = {
            label = "Fleeca Bank Hawick Ave CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(309.341, -281.439, 55.88), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -146.1595
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [22] = {
            label = "Fleeca Bank Legion Square CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(144.871, -1043.044, 31.017), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -143.9796
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [23] = {
            label = "Fleeca Bank Hawick Ave CAM#2", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-355.7643, -52.506, 50.746), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -143.8711
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [24] = {
            label = "Fleeca Bank Del Perro Blvd CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-1214.226, -335.86, 39.515), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -97.862
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [25] = {
            label = "Fleeca Bank Great Ocean Hwy CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-2958.885, 478.983, 17.406), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -34.69595
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [26] = {
            label = "Paleto Bank CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-102.939, 6467.668, 33.424), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 24.66
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [27] = {
            label = "Del Vecchio Liquor Paleto Bay", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-163.75, 6323.45, 33.424), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 260.00
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [28] = {
            label = "Don's Country Store Paleto Bay CAM#1", 
            category = 'store', -- bank, store, company, other
            coords = vector3(166.42, 6634.4, 33.69), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 32.00
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [29] = {
            label = "Don's Country Store Paleto Bay CAM#2", 
            category = 'store', -- bank, store, company, other
            coords = vector3(163.74, 6644.34, 33.69), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 168.00
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [30] = {
            label = "Don's Country Store Paleto Bay CAM#3", 
            category = 'store', -- bank, store, company, other
            coords = vector3(169.54, 6640.89, 33.69), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 5.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [31] = {
            label = "Vangelico Jewelery CAM#1", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-627.54, -239.74, 40.33), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 5.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [32] = {
            label = "Vangelico Jewelery CAM#2", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-627.51, -229.51, 40.24), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = -95.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [33] = {
            label = "Vangelico Jewelery CAM#3", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-620.3, -224.31, 40.23), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 165.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [34] = {
            label = "Vangelico Jewelery CAM#4", 
            category = 'bank', -- bank, store, company, other
            coords = vector3(-622.57, -236.3, 40.31), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 5.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [35] = {
            label = "Politiebureau Buiten", 
            category = 'company', -- bank, store, company, other
            coords = vector3(433.63, -978.31, 33.04), 
            rotation = {
                x = -35.0,
                y = 0.0,
                z = 145.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [36] = {
            label = "Politiebureau Balie", 
            category = 'company', -- bank, store, company, other
            coords = vector3(439.43, -976.42, 34.58), 
            rotation = {
                x = -30.0,
                y = 0.0,
                z = 220.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'v_serv_securitycam_03',
                xOffset = -0.1,
                yOffset = 0.2,
                zOffset = 2.6,
                rotation = 25.0,
            }
        },
        [37] = {
            label = "Politiebureau Parking Achter", 
            category = 'company', -- bank, store, company, other
            coords = vector3(467.96, -1022.19, 32.67), 
            rotation = {
                x = -40.0,
                y = 0.0,
                z = -30.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'prop_cctv_cam_01b',
                xOffset = -0.24,
                yOffset = 0,
                zOffset = 0,
                rotation = 85.0,
            }
        },
        [38] = {
            label = "Politiebureau Parking Voor", 
            category = 'company', -- bank, store, company, other
            coords = vector3(437.22, -999.47, 33.08), 
            rotation = {
                x = -10.0,
                y = 0.0,
                z = 185.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 1,
                rotation = 0.0,
            }
        },
        [39] = {
            label = "XOTO Mechaniekers #1", 
            category = 'company', -- bank, store, company, other
            coords = vector3(-959.08, -2070.77, 12.02), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -5.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'v_serv_securitycam_03',
                xOffset = 0,
                yOffset = 0,
                zOffset = 2.0,
                rotation = 195.0,
            }
        },
        [40] = {
            label = "XOTO Mechaniekers #2", 
            category = 'company', -- bank, store, company, other
            coords = vector3(-922.16, -2047.83, 11.63), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -280.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'v_serv_securitycam_03',
                xOffset = 0,
                yOffset = 0,
                zOffset = 2.2,
                rotation = 265.0,
            }
        },
        [41] = {
            label = "XOTO Balie", 
            category = 'company', -- bank, store, company, other
            coords = vector3(-902.27, -2028.55, 12.15), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -280.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'v_serv_securitycam_03',
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 265.0,
            }
        },
        [42] = {
            label = "Zeeman carwash", 
            category = 'store', -- bank, store, company, other
            coords = vector3(81.85, -1400.78, 31.0), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = 0.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 265.0,
            }
        },
        [43] = {
            label = "Zeeman Blokkenpark", 
            category = 'store', -- bank, store, company, other
            coords = vector3(419.01, -798.1, 31.50), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = 212.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 265.0,
            }
        },
        [44] = {
            label = "Zeeman Politie", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-826.05, -1082.91, 13.31), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -22.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [45] = {
            label = "Zeeman 7190", 
            category = 'store', -- bank, store, company, other
            coords = vector3(119.12, -230.01, 56.93), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -22.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [46] = {
            label = "Zeeman 5034", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-3177.67, 1037.66, 21.9), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -22.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [47] = {
            label = "Zeeman 5004", 
            category = 'store', -- bank, store, company, other
            coords = vector3(-1103.09, 2700.4, 21.04), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -22.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [48] = {
            label = "Zeeman 4020", 
            category = 'store', -- bank, store, company, other
            coords = vector3(617.7, 2771.43, 44.23), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = 185.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [49] = {
            label = "Zeeman 4024", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1188.68, 2703.56, 40.21), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -55.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [50] = {
            label = "Zeeman 2010", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1686.72, 4829.88, 44.11), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -135.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [51] = {
            label = "Zeeman 1060", 
            category = 'store', -- bank, store, company, other
            coords = vector3(6.14, 6522.19, 33.86), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -190.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.7,
                rotation = 65.0,
            }
        },
        [52] = {
            label = "Zeeman 3007", 
            category = 'store', -- bank, store, company, other
            coords = vector3(1876.39, 3810.14, 35.25), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -120.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = -0.0,
                rotation = 65.0,
            }
        },
        [53] = {
            label = "Advocatenbureau office", 
            category = 'company', -- bank, store, company, other
            coords = vector3(-602.44, -706.98, 119.4), 
            rotation = {
                x = -28.0,
                y = 0.0,
                z = -120.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = -0.0,
                rotation = 65.0,
            }
        },
        [54] = {
            label = "Advocatenbureau trap boven", 
            category = 'company', -- bank, store, company, other
            coords = vector3(-577.12, -725.38, 123.2), 
            rotation = {
                x = -32.0,
                y = 0.0,
                z = -60.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'v_serv_securitycam_03',
                xOffset = 0,
                yOffset = 0,
                zOffset = 0.5,
                rotation = 135.0,
            }
        },
        [55] = {
            label = "Ambu Balie", 
            category = 'company', -- bank, store, company, other
            coords = vector3(328.96, -589.97, 45.83), 
            rotation = {
                x = -40.0,
                y = 0.0,
                z = 65.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = nil,
                xOffset = 0,
                yOffset = 0,
                zOffset = -0.0,
                rotation = 65.0,
            }
        },
        [56] = {
            label = "Ambu Voorkant", 
            category = 'company', -- bank, store, company, other
            coords = vector3(316.06, -586.77, 46.3), 
            rotation = {
                x = -15.0,
                y = 0.2,
                z = 55.78
            }, 
            rotatable = false, -- If true the camera can be rotated by using "WASD"
            hacked = false, -- If it is hacked
            model = {
                spawned = false,
                model = 'prop_cctv_cam_01b',
                xOffset = 3.0,
                yOffset = -0.8,
                zOffset = 0.0,
                rotation = -110.0,
            }
        },
    }
}