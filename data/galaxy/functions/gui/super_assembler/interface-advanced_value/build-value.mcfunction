execute if score @s galaxy.GUI.attribute.value matches 0 run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomModelData:100,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.attribute.value matches 1.. run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10142,CustomData:{galaxy:{Type:"gui"}}}
execute if score @s galaxy.GUI.attribute.value matches ..-1 run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10143,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.11 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.12 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.13 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.14 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.15 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.16 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.17 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,CustomData:{galaxy:{Type:"gui"}}}
scoreboard players operation #value.digit.length.input cu = @s galaxy.GUI.attribute.value
scoreboard players set #value.digit.length.ignoreNegativeMark cu 1
function cu:value/digit/length/main
scoreboard players operation #3 calcu_temp = #value.digit.length.result cu
execute store result score #1 calcu_temp run scoreboard players get @s galaxy.GUI.attribute.value
execute if score #3 calcu_temp matches 1..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 1..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 1..7 store result block ~ ~ ~ Items[{Slot:17b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 2..7 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 2..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 2..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 2..7 store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 3..7 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 3..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 3..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 3..7 store result block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 4..7 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 4..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 4..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 4..7 store result block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 5..7 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 5..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 5..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 5..7 store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 6..7 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 6..7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 6..7 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 6..7 store result block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 7 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 7 run scoreboard players operation #2 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 7 store result block ~ ~ ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
