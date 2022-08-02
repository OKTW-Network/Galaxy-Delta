data modify storage cu:list index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.category.recipeList
execute store result score #list.length cu run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.recipeSubjectListPage
execute store result score #list.index cu run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipePage set from storage cu:list index.result
execute store result score @s galaxy.GUI.HTct.recipeSubjectListSlotMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.recipePage
