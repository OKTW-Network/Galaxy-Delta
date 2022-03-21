execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/hi-tech_crafting_table
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/hi-tech_crafting_table
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:block/give/hi-tech_crafting_table
