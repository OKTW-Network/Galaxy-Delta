execute store result score #1 temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.extra
scoreboard players add #1 temp 1
execute unless score #1 temp matches 2.. run data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.projectile.damage","color":"dark_green"}],"color":"gray","italic":false}'
execute if score #1 temp matches 2.. run data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.damage","color":"aqua"},{"translate":"%s*%s","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.projectile.damage","color":"dark_green"},{"score":{"name":"#1","objective":"temp"},"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
