data modify storage cu:list index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.recipePage
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.recipeNumber
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipe set from storage cu:list index.result
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.Slot set value 16b
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.tag merge value {CustomData:{galaxy:{trigger:"htct_request_craft"}}}
execute store result score @s htctRequMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.requireTotal
execute store result score @s galaxy.GUI.HTct.recipeRequirementListPageMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.requirePageTotal
