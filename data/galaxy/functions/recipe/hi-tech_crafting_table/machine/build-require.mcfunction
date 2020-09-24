scoreboard players remove #2 calcu_temp 1
scoreboard players operation #2 calcu_temp /= #4 num
scoreboard players add #2 calcu_temp 1
scoreboard players operation #2 calcu_temp *= #9 num
scoreboard players remove #2 calcu_temp 5
scoreboard players operation #3 calcu_temp %= #4 num
execute if score #3 calcu_temp matches 1.. run scoreboard players operation #3 calcu_temp -= #4 num
scoreboard players operation #2 calcu_temp += #3 calcu_temp

data modify storage galaxy:temp requirement prepend from storage galaxy:recipe HTct.requirement[0].[0]
data modify storage galaxy:temp tag set value {}
execute if data storage galaxy:temp requirement[0].tag.CustomModelData run data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:temp requirement[0].tag.CustomModelData
execute if data storage galaxy:temp requirement[0].tag.display run data modify storage galaxy:temp tag.display set from storage galaxy:temp requirement[0].tag.display
execute if data storage galaxy:temp requirement[0].tag.Potion run data modify storage galaxy:temp tag.Potion set from storage galaxy:temp requirement[0].tag.Potion
data modify storage galaxy:temp requirement[0].tag set from storage galaxy:temp tag
data modify storage galaxy:temp requirement[0].tag merge value {HideFlags:63,guiItem:1}
execute store result storage galaxy:temp requirement[0].Slot byte 1 run scoreboard players get #2 calcu_temp

data remove storage galaxy:recipe HTct.requirement[0].[0]
execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players remove #1 calcu_temp 1

execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp item[0].requirement prepend from storage galaxy:temp requirement
execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp requirement set value []
execute if score #1 calcu_temp matches 0 store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 12

execute if data storage galaxy:recipe HTct.requirement[0].[0] run function galaxy:recipe/hi-tech_crafting_table/machine/build-require
