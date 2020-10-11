scoreboard players remove #2 calcu_temp 1
scoreboard players operation #2 calcu_temp /= #5 num
scoreboard players add #2 calcu_temp 1
scoreboard players operation #2 calcu_temp *= #9 num
scoreboard players remove #2 calcu_temp 2
scoreboard players operation #3 calcu_temp %= #5 num
execute if score #3 calcu_temp matches 1.. run scoreboard players operation #3 calcu_temp -= #5 num
scoreboard players operation #2 calcu_temp += #3 calcu_temp

data modify storage galaxy:temp item prepend from storage galaxy:temp recipe[-1]
data modify storage cu:item simplify.item set from storage galaxy:temp item
function cu:item/simplify
data modify storage galaxy:temp item[0] set from storage cu:item simplify.item
data modify storage galaxy:temp item[0].tag merge value {HideFlags:63,guiItem:1}
execute store result storage galaxy:temp item[0].Slot byte 1 run scoreboard players get #2 calcu_temp

function math:calcu_temp/store_to_1

execute store result storage galaxy:temp item[0].requireTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp item[0].require
scoreboard players operation #1 calcu_temp /= #12 num
execute store result storage galaxy:temp item[0].requireInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #12 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:temp item[0].requirePageTotal int 1 run scoreboard players add #1 calcu_temp 1

execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 12
execute store result score #4 calcu_temp run data get storage galaxy:temp item[0].requireInFinalPage
execute unless score #4 calcu_temp matches 0 store result score #1 calcu_temp store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players get #4 calcu_temp
data modify storage galaxy:temp item[0].requireList set value []
function galaxy:recipe/hi-tech_crafting_table/build-require

function math:calcu_temp/extract_from_1

data remove storage galaxy:temp recipe[-1]
execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players remove #1 calcu_temp 1

execute if score #1 calcu_temp matches 0 run data modify storage galaxy:recipe HTct.category[-1].recipeList prepend from storage galaxy:temp item
execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp item set value []
execute if score #1 calcu_temp matches 0 store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15

execute if data storage galaxy:temp recipe[-1] run function galaxy:recipe/hi-tech_crafting_table/build-recipe
