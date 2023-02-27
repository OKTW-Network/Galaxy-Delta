setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.advanced_blast_furnace"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.advanced_blast_furnace"}'} replace
function galaxy:gui/advanced_blast_furnace/update
