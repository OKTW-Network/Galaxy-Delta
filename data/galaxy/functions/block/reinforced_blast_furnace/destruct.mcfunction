execute if predicate galaxy:block/reinforced_blast_furnace run setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.reinforced_blast_furnace"}'}}}}]
function galaxy:block/summon_item/reinforced_blast_furnace
