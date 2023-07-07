data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:cooling_system_t3",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/cooling_system_t3
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_nugget",Count:10b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:blue_ice",Count:6b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:sponge",Count:1b}
