data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:elevator",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:block/get/elevator
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_ingot",Count:8b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:ender_pearl",Count:1b}
