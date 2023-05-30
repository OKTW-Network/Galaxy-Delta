execute store result score #1 temp run data get storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.projectile.extra
scoreboard players add #1 temp 1
execute unless score #1 temp matches 2.. run data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+recipe.assembly_table.assemble._customAttribute.projectile.damage","color":"dark_green"}],"color":"gray","italic":false}'
execute if score #1 temp matches 2.. run data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.damage","color":"aqua"},{"translate":"%s*%s","with":[{"storage":"galaxy:temp","nbt":"+recipe.assembly_table.assemble._customAttribute.projectile.damage","color":"dark_green"},{"score":{"name":"#1","objective":"temp"},"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append from storage cu:value string.static.result
