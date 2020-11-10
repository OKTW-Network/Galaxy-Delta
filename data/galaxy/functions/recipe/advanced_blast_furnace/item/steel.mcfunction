data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

#input1
data modify storage galaxy:get recipe[-1].input append value {id:"minecraft:iron_ingot",Count:1b}

#input2
data modify storage galaxy:get item set value []
function galaxy:material/get/coke
data modify storage galaxy:get recipe[-1].input append from storage galaxy:get item[0]
