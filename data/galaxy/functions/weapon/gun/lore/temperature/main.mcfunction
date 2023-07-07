data modify storage galaxy:temp +weapon.gun.lore._temperatureMin set value '{"text":"100%","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.temperature_min run data modify storage galaxy:temp +weapon.gun.lore._temperatureMin set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.temperature_min","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.temperature_min_modifier run function galaxy:weapon/gun/lore/temperature/temperature_min-modifier

data modify storage galaxy:temp +weapon.gun.lore._temperatureMax set value '{"text":"100%","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.temperature_max run data modify storage galaxy:temp +weapon.gun.lore._temperatureMax set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.temperature_max","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.temperature_max_modifier run function galaxy:weapon/gun/lore/temperature/temperature_max-modifier

data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"text.express.between","with":[{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._temperatureMin","interpret":true}],"color":"dark_gray"},{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._temperatureMax","interpret":true}],"color":"dark_gray"}]}'

data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.temperature","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
