execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.speed
scoreboard players operation #1 calcu_temp /= #4 num
scoreboard players operation #2 calcu_temp %= #4 num
scoreboard players set #3 calcu_temp 25
execute store result score #2 calcu_temp run scoreboard players operation #3 calcu_temp *= #2 calcu_temp
data modify storage cu:string toStatic.input set value '{"translate":" %s: %sB/t","with":[{"translate":"attribute.projectile.speed","color":"aqua"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +gui.assembly_table.build-lore.result append from storage cu:string toStatic.result
