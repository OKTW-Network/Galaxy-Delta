execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_pure
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_pure
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:component/give/barrel_pure
