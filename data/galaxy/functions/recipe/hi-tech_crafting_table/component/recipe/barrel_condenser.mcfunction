data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_condenser
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:crying_obsidian",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:purpur_pillar",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:prismarine_shard",Count:8b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.barrel_condenser"
