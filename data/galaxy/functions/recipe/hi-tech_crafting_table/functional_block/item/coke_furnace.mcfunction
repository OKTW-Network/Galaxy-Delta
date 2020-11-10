data modify storage galaxy:get item set value []
function galaxy:block/get/coke_furnace
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:furnace",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:smooth_stone",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:clay",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:sand",Count:6b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
