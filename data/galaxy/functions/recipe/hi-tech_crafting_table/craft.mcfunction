scoreboard players set #recipe.craftingStatus galaxy 0

execute if data storage galaxy:recipe hi-tech_crafting_table.craft{categoryID:"tool"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{categoryID:"functional_block"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{categoryID:"interactive_block"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{categoryID:"component"} run function galaxy:recipe/hi-tech_crafting_table/component/craft
execute if data storage galaxy:recipe hi-tech_crafting_table.craft{categoryID:"weapon"} run function galaxy:recipe/hi-tech_crafting_table/weapon/craft

execute if score #recipe.craftingStatus galaxy matches 0 run function #galaxy:recipe/hi-tech_crafting_table/craft_external
