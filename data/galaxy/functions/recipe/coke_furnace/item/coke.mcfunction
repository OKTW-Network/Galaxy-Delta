data modify storage galaxy:get item set value []
function galaxy:material/get/coke
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

#input1
data modify storage galaxy:get recipe[-1].input append value {id:"minecraft:coal",Count:1b}
