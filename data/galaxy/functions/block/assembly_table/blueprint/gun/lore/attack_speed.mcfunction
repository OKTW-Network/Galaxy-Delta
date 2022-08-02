scoreboard players set #1 calcu_temp 20000
execute store result score #2 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.interval
execute store result score #2 calcu_temp run scoreboard players operation #1 calcu_temp /= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num
execute store result score #3 calcu_temp run scoreboard players operation #2 calcu_temp %= #1000 num
scoreboard players operation #2 calcu_temp /= #10 num
scoreboard players operation #3 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 5.. run scoreboard players add #2 calcu_temp 1
data modify storage cu:string toStatic.input set value '{"translate":" %s: %s (%s)","with":[{"translate":"attribute.name.generic.attack_speed","color":"aqua"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"dark_green"},{"translate":"%st","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.interval","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
