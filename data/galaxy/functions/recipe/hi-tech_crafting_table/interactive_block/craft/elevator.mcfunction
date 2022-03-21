execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/elevator
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/elevator
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:block/give/elevator
