data modify storage cu:value list.index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.hi-tech_crafting.category.recipeList
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.hi-tech_crafting.recipePage set from storage cu:value list.index.result[0]
execute store result score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.hi-tech_crafting.recipePage