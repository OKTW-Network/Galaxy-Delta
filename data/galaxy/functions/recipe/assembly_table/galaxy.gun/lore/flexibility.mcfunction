execute store result score #1 temp store result score #2 temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.flexibility
scoreboard players operation #1 temp /= #10 num
scoreboard players operation #2 temp %= #10 num
data modify storage cu:value string.static.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.flexibility","color":"aqua"},{"translate":"%s/moving","with":[{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"temp"}},{"score":{"name":"#2","objective":"temp"}}],"color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
