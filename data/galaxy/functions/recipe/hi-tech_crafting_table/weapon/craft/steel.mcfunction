execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-check/steel
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-remove/steel
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:weapon/katana/give/steel
