local Translations = {
    error = {
        hacked = 'Deze camera is gehacked..',
        nocamera = 'Geen camera gevonden..',
        failedhack = 'Aii je faalde..',
    },
    success = {
        camoff = 'Tis je gelukt de camera uit te schakelen!',
    },
    info = {
        close = 'Sluit Camera'
    },
    menu = {
        cctv = 'CCTV',
        exit = '< Sluit',
        bank = 'Bank',
        stores = 'Winkels',
        company = 'Bedrijven',
        other = 'Andere',
    },
    command = {
        command = 'Bekijk Beveilegingscameras',
        info = 'Camera ID of niets'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
