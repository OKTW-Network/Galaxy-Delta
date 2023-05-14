scoreboard players set #1 temp 20000
execute store result score #2 temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.interval
execute store result score #2 temp run scoreboard players operation #1 temp /= #2 temp
scoreboard players operation #1 temp /= #1000 num
execute store result score #3 temp run scoreboard players operation #2 temp %= #1000 num
scoreboard players operation #2 temp /= #10 num
scoreboard players operation #3 temp %= #10 num
execute if score #3 temp matches 5.. run scoreboard players add #2 temp 1
data modify storage cu:value string.static.input set value '{"translate":" %s: %s (%s)","with":[{"translate":"attribute.name.generic.attack_speed","color":"aqua"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"temp"}},{"score":{"name":"#2","objective":"temp"}}],"color":"dark_green"},{"translate":"%st","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.interval","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
