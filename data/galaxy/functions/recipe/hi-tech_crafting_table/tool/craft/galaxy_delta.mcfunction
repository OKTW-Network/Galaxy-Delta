execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/galaxy_delta
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/galaxy_delta
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:book/give/galaxy_delta
