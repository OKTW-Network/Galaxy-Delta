data modify storage galaxy:get item set value []
function galaxy:component/get/upgrade_gun_flow
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_trapdoor",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:stick",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:comparator",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.upgrade_gun_flow"
