data modify storage galaxy:get item set value []
function galaxy:component/get/sight_scope
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:glass",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:hopper",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:heart_of_the_sea",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.sight_scope"
