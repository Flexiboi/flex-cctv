fx_version 'adamant'

game 'gta5'

author 'Flex'

description 'Credit to ASTUDIOS | Development for base script'

version '1.0.1'

lua54 'yes'

shared_scripts {
    'shared/config.lua',
    '@qb-core/shared/locale.lua',
    'shared/nl.lua',
}

client_scripts {
    'client/*.lua',
}
server_scripts {
    'server/*.lua'
}