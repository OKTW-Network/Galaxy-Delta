execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"tool.galaxy.galaxy_delta"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/galaxy_delta
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"tool.galaxy.wrench"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/wrench
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"tool.galaxy.crowbar"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/crowbar
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"tool.galaxy.empower_lens"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/empower_lens

execute if score #recipe.craftingStatus galaxy matches 0 run function #galaxy:recipe/hi-tech_crafting_table/craft_tool
