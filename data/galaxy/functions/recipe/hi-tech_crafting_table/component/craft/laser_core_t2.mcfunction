execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/laser_core_t2
tag @s[gamemode=creative] add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/laser_core_t2
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function galaxy:component/give/laser_core_t2
