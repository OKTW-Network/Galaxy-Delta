execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"functional_block.galaxy.hi_tech_crafting_table"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/hi-tech_crafting_table
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"functional_block.galaxy.coke_furnace"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/coke_furnace
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"functional_block.galaxy.advanced_blast_furnace"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/advanced_blast_furnace
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"functional_block.galaxy.assembly_table"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/assembly_table

execute if score #recipe.craftingStatus galaxy matches 0 run function #galaxy:recipe/hi-tech_crafting_table/craft_functional_block
