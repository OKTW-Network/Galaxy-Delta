execute if data storage galaxy:recipe hi_tech_crafting_table.craft{recipeID:"interactive_block.galaxy.elevator"} run function galaxy:recipe/hi_tech_crafting_table/interactive_block/craft/elevator
execute if data storage galaxy:recipe hi_tech_crafting_table.craft{recipeID:"interactive_block.galaxy.katana_display_stand-1"} run function galaxy:recipe/hi_tech_crafting_table/interactive_block/craft/katana_display_stand-1
execute if data storage galaxy:recipe hi_tech_crafting_table.craft{recipeID:"interactive_block.galaxy.katana_display_stand-2"} run function galaxy:recipe/hi_tech_crafting_table/interactive_block/craft/katana_display_stand-2
execute if data storage galaxy:recipe hi_tech_crafting_table.craft{recipeID:"interactive_block.galaxy.katana_display_stand-3"} run function galaxy:recipe/hi_tech_crafting_table/interactive_block/craft/katana_display_stand-3

execute if score #recipe.craftingStatus galaxy matches 0 run function #galaxy:recipe/hi_tech_crafting_table/craft_interactive_block
