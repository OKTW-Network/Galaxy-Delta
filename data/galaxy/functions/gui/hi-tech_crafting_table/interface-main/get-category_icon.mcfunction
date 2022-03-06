data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.category
scoreboard players remove #1 calcu_temp 1
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
execute if score #index listIndex matches ..-1 run scoreboard players operation #index listIndex += #length listIndex
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryPrev.icon set from storage cu:list index.result.icon

data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.category
scoreboard players add #1 calcu_temp 1
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
execute if score #index listIndex >= #length listIndex run scoreboard players operation #index listIndex -= #length listIndex
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryNext.icon set from storage cu:list index.result.icon
