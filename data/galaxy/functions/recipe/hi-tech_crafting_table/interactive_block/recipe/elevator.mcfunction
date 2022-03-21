data modify storage galaxy:get item set value []
function galaxy:block/get/elevator
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_ingot",Count:8b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:ender_pearl",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "interactive_block.galaxy.elevator"
