item replace block ~ ~ ~ container.12 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.13 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
item replace block ~ ~ ~ container.14 with minecraft:potion{display:{Name:'{"text":""}'},HideFlags:63,CustomPotionColor:3663371,CustomModelData:10141,guiItem:1}
scoreboard players operation #input lengthDigit = @s sbldValue
scoreboard players set #ignoreNegative lengthDigit 1
function cu:length/digit
scoreboard players operation #3 calcu_temp = #result lengthDigit
execute store result score #1 calcu_temp run scoreboard players get @s sbldValue
execute if score #3 calcu_temp matches 1..3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 1..3 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 1..3 store result block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 2..3 store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
execute if score #3 calcu_temp matches 3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 3 run scoreboard players operation #2 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 3 store result block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData int 1 run scoreboard players add #2 calcu_temp 10131
