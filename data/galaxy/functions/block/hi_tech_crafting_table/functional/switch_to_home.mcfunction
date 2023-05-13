data remove entity @s data.galaxy.hi_tech_crafting_table.interfaceStack[]
data modify entity @s data.galaxy.hi_tech_crafting_table.interface set value "overview"
data modify entity @s data.galaxy.hi_tech_crafting_table.overview set from storage galaxy:recipe hi_tech_crafting_table.overview[{id:"home"}]
data modify entity @s data.galaxy.hi_tech_crafting_table.categoryNumber set value 1
data modify entity @s data.galaxy.hi_tech_crafting_table.contentPageNumber set value 1
function galaxy:block/hi_tech_crafting_table/functional/category/get_new

tag @s add galaxy._task.gui.refresh

tag @s remove galaxy._task.hi_tech_crafting_table.switchToHome
