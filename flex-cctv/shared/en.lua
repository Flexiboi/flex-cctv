local Translations = {
    error = {
        hacked = 'This canera is hacked..',
        nocamera = 'No camera found..',
        failedhack = 'You failed..',
    },
    success = {
        camoff = 'You have hacked this camera!',
    },
    info = {
        close = 'Close'
    },
    menu = {
        cctv = 'CCTV',
        exit = '< Close',
        bank = 'Bank',
        stores = 'Shops',
        company = 'Companies',
        other = 'Other',
    },
    command = {
        command = 'Check cams',
        info = 'Camera ID or nothing'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
