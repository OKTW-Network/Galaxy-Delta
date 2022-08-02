execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-check/steel
tag @s[gamemode=creative] add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-remove/steel
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function galaxy:weapon/give/steel
