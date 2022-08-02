execute if data storage galaxy:recipe HTct.craft{recipeID:"interactive_block.galaxy.elevator"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft/elevator
execute if data storage galaxy:recipe HTct.craft{recipeID:"interactive_block.galaxy.katana_display_stand-1"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft/katana_display_stand-1
execute if data storage galaxy:recipe HTct.craft{recipeID:"interactive_block.galaxy.katana_display_stand-2"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft/katana_display_stand-2
execute if data storage galaxy:recipe HTct.craft{recipeID:"interactive_block.galaxy.katana_display_stand-3"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft/katana_display_stand-3

execute if entity @s[tag=galaxy._request.HTct.craft,tag=!galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function #galaxy:recipe/hi-tech_crafting_table/_craft_interactive_block
