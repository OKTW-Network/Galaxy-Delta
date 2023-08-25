data modify storage galaxy:temp +weapon.gun.lore._finalValue set value ""
execute if score #weapon.gun.lore._buildProjectileRange galaxy matches 1..2 run data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.projectile.distance","color":"dark_green"}'
execute if score #weapon.gun.lore._buildProjectileRange galaxy matches 3 run function galaxy:weapon/gun/lore/projectile_range/modifier
data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.projectile.range","color":"aqua"},{"translate":"text.value_unit.block","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"dark_gray"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
