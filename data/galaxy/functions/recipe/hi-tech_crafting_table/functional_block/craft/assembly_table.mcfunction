execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/assembly_table
tag @s[gamemode=creative] add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/assembly_table
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function galaxy:block/give/assembly_table
