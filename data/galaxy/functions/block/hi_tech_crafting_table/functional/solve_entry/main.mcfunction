data modify entity @s data.galaxy.hi_tech_crafting_table.interface set from storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.type
execute if data storage galaxy:temp +block.hi_tech_crafting_table.solve_entry{type:"overview"} run function galaxy:block/hi_tech_crafting_table/functional/solve_entry/overview
execute if data storage galaxy:temp +block.hi_tech_crafting_table.solve_entry{type:"recipe"} run function galaxy:block/hi_tech_crafting_table/functional/solve_entry/recipe

data remove storage galaxy:temp +block.hi_tech_crafting_table.solve_entry
