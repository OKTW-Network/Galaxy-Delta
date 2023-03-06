setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.hi_tech_crafting"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace
tag @s add galaxy._task.gui.refresh
