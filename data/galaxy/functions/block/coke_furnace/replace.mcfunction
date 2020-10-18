setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove-gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.coke_furnace"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.coke_furnace"}'} replace
function galaxy:gui/coke_furnace/update
