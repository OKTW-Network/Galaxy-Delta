data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:gun_sight_scope",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/gun_sight_scope
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:glass",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:hopper",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:heart_of_the_sea",Count:1b}
