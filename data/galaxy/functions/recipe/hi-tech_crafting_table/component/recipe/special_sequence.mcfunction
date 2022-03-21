data modify storage galaxy:get item set value []
function galaxy:component/get/special_sequence
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:emerald",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:glowstone_dust",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:repeater",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.special_sequence"
