scoreboard players remove #2 calcu_temp 1
scoreboard players operation #2 calcu_temp /= #4 num
scoreboard players add #2 calcu_temp 1
scoreboard players operation #2 calcu_temp *= #9 num
scoreboard players remove #2 calcu_temp 5
scoreboard players operation #3 calcu_temp %= #4 num
execute if score #3 calcu_temp matches 1.. run scoreboard players operation #3 calcu_temp -= #4 num
scoreboard players operation #2 calcu_temp += #3 calcu_temp

data modify storage galaxy:temp require prepend from storage galaxy:temp recipe[-1].require[-1]
data modify storage cu:item simplify.item set from storage galaxy:temp require
function cu:item/simplify
data modify storage galaxy:temp require[0] set from storage cu:item simplify.item
data modify storage galaxy:temp require[0].tag merge value {HideFlags:63,guiItem:1}
execute store result storage galaxy:temp require[0].Slot byte 1 run scoreboard players get #2 calcu_temp

data remove storage galaxy:temp recipe[-1].require[-1]
execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players remove #1 calcu_temp 1

execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp item[0].requireList prepend from storage galaxy:temp require
execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp require set value []
execute if score #1 calcu_temp matches 0 store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 12

execute if data storage galaxy:temp recipe[-1].require[-1] run function galaxy:recipe/hi-tech_crafting_table/build-require
