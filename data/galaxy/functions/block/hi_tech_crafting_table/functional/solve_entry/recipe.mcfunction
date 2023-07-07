data modify entity @s data.galaxy.hi_tech_crafting_table.recipe merge from storage galaxy:temp +block.hi_tech_crafting_table.solve_entry
data modify entity @s data.galaxy.hi_tech_crafting_table.requirementPageNumber set value 1
function galaxy:block/hi_tech_crafting_table/functional/requirement_page/get_new
