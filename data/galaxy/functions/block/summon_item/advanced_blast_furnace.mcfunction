data modify storage galaxy:get item set value []
function galaxy:block/get/advanced_blast_furnace
data modify storage cu:item input set from storage galaxy:get item[0]
data modify storage cu:item pickupDelay set value 10s
function cu:item/summon
