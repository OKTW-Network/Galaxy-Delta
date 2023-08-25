data modify storage galaxy:temp +weapon.gun.lore._finalValue set value ""
execute if score #weapon.gun.lore._buildFireRate galaxy matches 1..2 run function galaxy:weapon/gun/lore/fire_rate/value
execute if score #weapon.gun.lore._buildFireRate galaxy matches 3 run function galaxy:weapon/gun/lore/fire_rate/modifier
data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.fire_rate","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
