data modify storage galaxy:temp +weapon.gun.lore._finalValue set value ""
execute if data storage galaxy:temp +weapon.gun.lore.input.projectile.velocity run function galaxy:weapon/gun/lore/projectile_velocity/value
execute if data storage galaxy:temp +weapon.gun.lore.input.projectile.velocity_modifier run function galaxy:weapon/gun/lore/projectile_velocity/modifier
data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.projectile.velocity","color":"aqua"},{"translate":"text.value_unit.block_per_tick","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore._finalValue","interpret":true}],"color":"dark_gray"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
