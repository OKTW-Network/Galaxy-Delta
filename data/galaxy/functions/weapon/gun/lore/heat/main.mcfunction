data modify storage galaxy:temp +weapon.gun.lore._finalValue set value ""
execute if data storage galaxy:temp +weapon.gun.lore.input.heat run data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"+%s","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.heat"}],"color":"dark_green"}'
execute if data storage galaxy:temp +weapon.gun.lore.input.heat_modifier run function galaxy:weapon/gun/lore/heat/modifier
data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.heat","color":"aqua"},{"translate":"text.express.each_shot","with":[{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"dark_gray"}]}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
