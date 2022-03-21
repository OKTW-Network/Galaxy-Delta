execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/casing_gun_gold
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/casing_gun_gold
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:component/give/casing_gun_gold
