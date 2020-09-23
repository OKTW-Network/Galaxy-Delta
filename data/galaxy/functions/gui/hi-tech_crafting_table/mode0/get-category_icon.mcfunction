data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s htctCategory
scoreboard players remove #1 calcu_temp 1
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
execute if score #index listIndex matches ..-1 run scoreboard players operation #index listIndex += #length listIndex
data remove storage cu:list index.result
function cu:list/index
data modify entity @s HandItems[0].tag.GUI.categoryPrev.icon set from storage cu:list index.result.icon

data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s htctCategory
scoreboard players add #1 calcu_temp 1
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
execute if score #index listIndex >= #length listIndex run scoreboard players operation #index listIndex -= #length listIndex
data remove storage cu:list index.result
function cu:list/index
data modify entity @s HandItems[0].tag.GUI.categoryNext.icon set from storage cu:list index.result.icon
