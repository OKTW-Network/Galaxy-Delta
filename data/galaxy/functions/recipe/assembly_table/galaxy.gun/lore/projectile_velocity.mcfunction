execute store result score #1 temp store result score #2 temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.velocity
scoreboard players operation #1 temp /= #4 num
scoreboard players operation #2 temp %= #4 num
scoreboard players set #3 temp 25
scoreboard players operation #2 temp *= #3 temp
data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.velocity","color":"aqua"},{"translate":"%sB/t","with":[{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"temp"}},{"score":{"name":"#2","objective":"temp"}}],"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
