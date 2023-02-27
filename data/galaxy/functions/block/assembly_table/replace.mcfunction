item replace block ~ ~ ~ container.13 with minecraft:air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/cleanup_gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.assembly_table"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.assembly_table"}'} replace
function galaxy:gui/assembly_table/update
