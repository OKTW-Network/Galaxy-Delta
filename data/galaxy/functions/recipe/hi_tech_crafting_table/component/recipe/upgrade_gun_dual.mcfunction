data modify storage galaxy:get item set value []
function galaxy:component/get/upgrade_gun_dual
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:string",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:tripwire_hook",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.upgrade_gun_dual"