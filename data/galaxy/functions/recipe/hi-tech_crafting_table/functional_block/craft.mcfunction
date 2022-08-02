execute if data storage galaxy:recipe HTct.craft{recipeID:"functional_block.galaxy.hi-tech_crafting_table"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/hi-tech_crafting_table
execute if data storage galaxy:recipe HTct.craft{recipeID:"functional_block.galaxy.coke_furnace"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/coke_furnace
execute if data storage galaxy:recipe HTct.craft{recipeID:"functional_block.galaxy.advanced_blast_furnace"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/advanced_blast_furnace
execute if data storage galaxy:recipe HTct.craft{recipeID:"functional_block.galaxy.assembly_table"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft/assembly_table

execute if entity @s[tag=galaxy._request.HTct.craft,tag=!galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function #galaxy:recipe/hi-tech_crafting_table/_craft_functional_block
