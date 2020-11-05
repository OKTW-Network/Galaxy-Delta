replaceitem block ~ ~ ~ container.16 air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.super_assembler"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.super_assembler"}'} replace
function galaxy:gui/assembly_table/super/update
