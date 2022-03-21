execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/crowbar
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/crowbar
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:tool/give/crowbar
