data modify storage galaxy:get item set value []
function galaxy:component/get/special_dual
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:string",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:tripwire_hook",Count:1b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
