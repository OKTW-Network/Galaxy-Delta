data modify storage galaxy:get item set value []
function galaxy:component/get/casing_gun_steel
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []

function galaxy:material/get/steel_ingot
data modify storage cu:item simplify.item set from storage galaxy:get item[0]
function cu:item/simplify
data modify storage galaxy:get item[0] set from storage cu:item simplify.item
data modify storage galaxy:get item[0].tag merge value {HideFlags:63}
data modify storage galaxy:get item[0] merge value {Count:6b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
