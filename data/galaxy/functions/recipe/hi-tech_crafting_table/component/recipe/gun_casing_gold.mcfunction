data modify storage galaxy:get item set value []
function galaxy:component/get/gun_casing_gold
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:gold_ingot",Count:6b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.gun_casing_gold"
