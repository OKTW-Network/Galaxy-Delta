item replace block ~ ~ ~ container.16 with minecraft:air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove_player_gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.super_assemble"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.super_assemble"}'} replace
function galaxy:gui/super_assembler/update
