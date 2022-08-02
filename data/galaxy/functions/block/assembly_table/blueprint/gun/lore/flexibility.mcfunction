execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.flexibility
scoreboard players operation #1 calcu_temp /= #10 num
scoreboard players operation #2 calcu_temp %= #10 num
data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.flexibility","color":"aqua"},{"translate":"%s/moving","with":[{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
