execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/wrench
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/wrench
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:tool/give/wrench
