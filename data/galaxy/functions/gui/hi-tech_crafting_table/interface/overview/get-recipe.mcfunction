data modify storage cu:value list.index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.hi-tech_crafting.recipePage
scoreboard players operation #value.list.index.min cu = #gui.hi-tech_crafting_table.requestRecipe galaxy
scoreboard players remove #value.list.index.min cu 1
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipe set from storage cu:value list.index.result[0]
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.recipe merge value {Slot:16b,tag:{CustomData:{galaxy:{trigger:"htct_request_craft"}}}}
execute store result score @s galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.requirePageTotal
