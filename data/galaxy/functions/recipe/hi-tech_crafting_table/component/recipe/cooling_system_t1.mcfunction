data modify storage galaxy:get item set value []
function galaxy:component/get/cooling_system_t1
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_nugget",Count:10b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:oak_leaves",tag:{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']}},Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.cooling_system_t1"
