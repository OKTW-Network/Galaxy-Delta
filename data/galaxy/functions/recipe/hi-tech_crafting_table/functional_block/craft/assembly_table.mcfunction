execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/assembly_table
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/assembly_table
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:block/give/assembly_table
