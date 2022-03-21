data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_ingot",Count:3b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:stick",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "tool.galaxy.wrench"
