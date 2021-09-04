execute if score @s sbldValue matches 0 run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomModelData:100,guiItem:1}
execute if score @s sbldValue matches 1.. run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10142,guiItem:1}
execute if score @s sbldValue matches ..-1 run item replace block ~ ~ ~ container.10 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10143,guiItem:1}
item replace block ~ ~ ~ container.11 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.12 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.13 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.14 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.15 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.16 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.17 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
scoreboard players operation #input lengthDigit = @s sbldValue
scoreboard players set #ignoreNegative lengthDigit 1
function cu:length/digit
scoreboard players operation #3 calcu_temp = #result lengthDigit
execute store result score #1 calcu_temp run scoreboard players get @s sbldValue
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
