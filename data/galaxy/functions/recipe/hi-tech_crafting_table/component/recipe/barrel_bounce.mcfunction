data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_bounce
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:terracotta",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:quartz_pillar",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:slime_ball",Count:4b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.barrel_bounce"
