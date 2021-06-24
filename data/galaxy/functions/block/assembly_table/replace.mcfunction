item replace block ~ ~ ~ container.13 with air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.assembly_table"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.assembly_table"}'} replace
function galaxy:gui/assembly_table/update
