data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_trace
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:terracotta",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:chiseled_quartz_block",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:ender_eye",Count:4b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
