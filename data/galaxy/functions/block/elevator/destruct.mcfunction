execute if predicate galaxy:block/elevator run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.elevator"}'}}}}]
function galaxy:block/summon_item/elevator
