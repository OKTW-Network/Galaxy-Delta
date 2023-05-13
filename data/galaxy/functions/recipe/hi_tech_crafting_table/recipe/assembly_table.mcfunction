data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:assembly_table",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:block/get/assembly_table
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append from storage galaxy:get item[0]
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement[-1] merge value {Count:14b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:dark_oak_planks",Count:6b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_block",Count:2b}
