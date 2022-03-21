execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/advanced_blast_furnace
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/advanced_blast_furnace
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:block/give/advanced_blast_furnace
