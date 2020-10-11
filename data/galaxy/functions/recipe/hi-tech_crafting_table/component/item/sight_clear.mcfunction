data modify storage galaxy:get item set value []
function galaxy:component/get/sight_clear
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:heavy_weighted_pressure_plate",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:glass",Count:2b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
