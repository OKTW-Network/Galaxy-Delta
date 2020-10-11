data modify storage galaxy:get item set value []
function galaxy:component/get/color_lens_brown
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:terracotta",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:brown_stained_glass",Count:1b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
