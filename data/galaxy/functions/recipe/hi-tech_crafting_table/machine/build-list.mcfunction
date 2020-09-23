scoreboard players remove #2 calcu_temp 1
scoreboard players operation #2 calcu_temp /= #5 num
scoreboard players add #2 calcu_temp 1
scoreboard players operation #2 calcu_temp *= #9 num
scoreboard players remove #2 calcu_temp 2
scoreboard players operation #3 calcu_temp %= #5 num
execute if score #3 calcu_temp matches 1.. run scoreboard players operation #3 calcu_temp -= #5 num
scoreboard players operation #2 calcu_temp += #3 calcu_temp

data modify storage galaxy:temp item prepend from storage galaxy:get item[0]
data modify storage galaxy:temp item[0].tag merge value {guiItem:1}
execute store result storage galaxy:temp item[0].Slot byte 1 run scoreboard players get #2 calcu_temp

data remove storage galaxy:get item[0]
execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players remove #1 calcu_temp 1

execute if score #1 calcu_temp matches 0 run data modify storage galaxy:recipe HTct.categories.machine.list prepend from storage galaxy:temp item
execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp item set value []
execute if score #1 calcu_temp matches 0 store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15

execute if data storage galaxy:get item[0] run function galaxy:recipe/hi-tech_crafting_table/machine/build-list
