data modify storage galaxy:temp +weapon.gun.lore._finalValue set value ""
execute if score #weapon.gun.lore._buildAccuracy galaxy matches 1..2 run function galaxy:weapon/gun/lore/accuracy/value
execute if score #weapon.gun.lore._buildAccuracy galaxy matches 3 run function galaxy:weapon/gun/lore/accuracy/modifier
data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.accuracy","color":"aqua"},{"translate":"text.express.each_shot","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}]}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
