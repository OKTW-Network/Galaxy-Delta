data modify storage galaxy:get item set value []
function galaxy:component/get/handle_gun_wood
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_ingot",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:stick",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:oak_log",tag:{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']}},Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.handle_gun_wood"
