data modify storage cu:list index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.requireList
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.recipeRequirementListPage
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.requirePage set from storage cu:list index.result
execute store result score @s galaxy.GUI.HTct.recipeRequirementListSlotMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.requirePage
