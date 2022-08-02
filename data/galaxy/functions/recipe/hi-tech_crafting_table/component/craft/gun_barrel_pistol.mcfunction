execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/gun_barrel_pistol
tag @s[gamemode=creative] add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/gun_barrel_pistol
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function galaxy:component/give/gun_barrel_pistol
