execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/sight_scope
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/sight_scope
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:component/give/sight_scope
