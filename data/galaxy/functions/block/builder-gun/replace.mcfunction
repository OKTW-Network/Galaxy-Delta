replaceitem block ~ ~ ~ container.13 air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.builder-gun"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.builder-gun"}'} replace
function galaxy:gui/builder-gun/update
