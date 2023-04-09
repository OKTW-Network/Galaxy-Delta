data modify storage galaxy:get item set value []
function galaxy:block/get/coke_furnace
data modify storage cu:item give.input set from storage galaxy:get item[0]
data modify storage cu:item give.owner set from entity @s UUID
execute at @s run function cu:item/give/main
