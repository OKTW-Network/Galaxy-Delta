execute if predicate galaxy:block/coke_furnace run setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.coke_furnace"}'}}}}]
function galaxy:block/summon_item/coke_furnace
