data modify storage galaxy:temp +weapon.gun.lore._cooling_delay set value '{"text":"100%","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.cooling_delay run data modify storage galaxy:temp +weapon.gun.lore._cooling_delay set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.cooling_delay","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.cooling_delay_modifier run function galaxy:weapon/gun/lore/cooling/cooling_delay-modifier

data modify storage galaxy:temp +weapon.gun.lore._cooling set value '{"text":"100%","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.cooling run data modify storage galaxy:temp +weapon.gun.lore._cooling set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.cooling","color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.cooling_modifier run function galaxy:weapon/gun/lore/cooling/modifier

data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"text.express.through","with":[{"translate":"text.value_unit.tick","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._cooling_delay","interpret":true,"color":"dark_green"}],"color":"dark_gray"},{"translate":"text.value_unit.per_tick","with":[{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._cooling","interpret":true,"color":"dark_green"}]}],"color":"dark_gray"}]}'

data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.cooling","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
