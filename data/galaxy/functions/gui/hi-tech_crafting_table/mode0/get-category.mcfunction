data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s htctCategory
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
data remove storage cu:list index.result
function cu:list/index
data modify entity @s HandItems[0].tag.GUI.category set from storage cu:list index.result
execute store result score @s htctCatgRcpMax run data get entity @s HandItems[0].tag.GUI.category.recipeTotal
execute store result score @s htctListPageMax run data get entity @s HandItems[0].tag.GUI.category.pageTotal
