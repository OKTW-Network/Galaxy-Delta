execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/special_dual
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/special_dual
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:component/give/special_dual
