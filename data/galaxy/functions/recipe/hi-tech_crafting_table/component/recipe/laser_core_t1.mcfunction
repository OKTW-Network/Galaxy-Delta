data modify storage galaxy:get item set value []
function galaxy:component/get/laser_core_t1
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_ingot",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:redstone_lamp",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"#global:terracotta",Count:2b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.laser_core_t1"
