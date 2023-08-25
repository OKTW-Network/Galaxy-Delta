data modify storage galaxy:temp +weapon.gun.lore._temperatureMin set value '{"text":"100%","color":"dark_green"}'
execute if score #weapon.gun.lore._buildTemperatureMin galaxy matches 1..2 run data modify storage galaxy:temp +weapon.gun.lore._temperatureMin set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.temperature_min","color":"dark_green"}'
execute if score #weapon.gun.lore._buildTemperatureMin galaxy matches 3 run function galaxy:weapon/gun/lore/temperature/temperature_min-modifier

data modify storage galaxy:temp +weapon.gun.lore._temperatureMax set value '{"text":"100%","color":"dark_green"}'
execute if score #weapon.gun.lore._buildTemperatureMax galaxy matches 1..2 run data modify storage galaxy:temp +weapon.gun.lore._temperatureMax set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.temperature_max","color":"dark_green"}'
execute if score #weapon.gun.lore._buildTemperatureMax galaxy matches 3 run function galaxy:weapon/gun/lore/temperature/temperature_max-modifier

data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.temperature","color":"aqua"},{"translate":"text.express.between","with":[{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._temperatureMin","interpret":true}],"color":"dark_gray"},{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._temperatureMax","interpret":true}],"color":"dark_gray"}]}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
