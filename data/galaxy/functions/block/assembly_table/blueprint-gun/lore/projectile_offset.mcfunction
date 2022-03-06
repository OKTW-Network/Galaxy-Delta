execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.offset
scoreboard players operation #1 calcu_temp /= #10 num
scoreboard players operation #2 calcu_temp %= #10 num
execute store result score #3 calcu_temp store result score #4 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.aim_offset
scoreboard players operation #3 calcu_temp /= #10 num
scoreboard players operation #4 calcu_temp %= #10 num
data modify storage cu:string toStatic.input set value '{"translate":" %s: <%s°>, >%s°<","with":[{"translate":"attribute.projectile.offset","color":"aqua"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"gray"},{"translate":"%s.%s","with":[{"score":{"name":"#3","objective":"calcu_temp"}},{"score":{"name":"#4","objective":"calcu_temp"}}],"color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.special{id:"gun.special.type3.sequence"} run data modify storage cu:string toStatic.input set value '{"translate":" %s: %s°","with":[{"translate":"attribute.projectile.offset","color":"aqua"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
