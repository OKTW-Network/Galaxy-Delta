execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/galaxy_delta
tag @s[gamemode=creative] add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/galaxy_delta
execute if entity @s[tag=galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function galaxy:book/give/galaxy_delta
