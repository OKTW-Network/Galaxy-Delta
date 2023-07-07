data modify storage galaxy:temp +block.hi_tech_crafting_table.solve_entry set from entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[-1]
data remove entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[-1]
function galaxy:block/hi_tech_crafting_table/functional/remove_overview_data
function galaxy:block/hi_tech_crafting_table/functional/remove_recipe_data

function galaxy:block/hi_tech_crafting_table/functional/solve_entry/main

tag @s add galaxy._task.gui.refresh

tag @s remove galaxy._task.hi_tech_crafting_table.switchBack
