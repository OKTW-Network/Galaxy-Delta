data modify storage cu:value object.find_match.source set from storage galaxy:recipe hi_tech_crafting_table.overview
data modify storage cu:value object.find_match.input set value {id:""}
data modify storage cu:value object.find_match.input.id set from storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.id
scoreboard players set #value.object.find_match.method cu 1
function cu:value/object/find_match/main
data modify entity @s data.galaxy.hi_tech_crafting_table.overview set from storage cu:value object.find_match.result[0]
data modify entity @s data.galaxy.hi_tech_crafting_table.categoryNumber set value 1
data modify entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber set value 1
execute if data storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.categoryNumber run data modify entity @s data.galaxy.hi_tech_crafting_table.categoryNumber set from storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.categoryNumber
execute if data storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.contentPageNumber run data modify entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber set from storage galaxy:temp +block.hi_tech_crafting_table.solve_entry.contentPageNumber
function galaxy:block/hi_tech_crafting_table/functional/category/get_new
