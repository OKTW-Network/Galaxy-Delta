data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:steel_katana",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:weapon/get/steel
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append from storage galaxy:get item[0]
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement[-1] merge value {Count:3b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:stick",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:gold_nugget",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:stripped_dark_oak_log",Count:1b}
