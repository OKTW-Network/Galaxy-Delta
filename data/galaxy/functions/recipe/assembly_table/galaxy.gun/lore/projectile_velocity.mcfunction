execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.velocity
scoreboard players operation #1 calcu_temp /= #4 num
scoreboard players operation #2 calcu_temp %= #4 num
scoreboard players set #3 calcu_temp 25
scoreboard players operation #2 calcu_temp *= #3 calcu_temp
data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.projectile.velocity","color":"aqua"},{"translate":"%sB/t","with":[{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
