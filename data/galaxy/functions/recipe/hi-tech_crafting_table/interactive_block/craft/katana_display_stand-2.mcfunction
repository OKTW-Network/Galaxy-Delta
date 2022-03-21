execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/katana_display_stand
tag @s[gamemode=creative] add galaxy.success.HTct.recipeRequirementCheck
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/katana_display_stand
execute if entity @s[tag=galaxy.success.HTct.recipeRequirementCheck] run function galaxy:entity/give/katana_display_stand-2
