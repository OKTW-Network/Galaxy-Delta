replaceitem block ~ ~ ~ container.16 air
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.super_builder-gun\"}"}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.super_builder-gun\"}"} replace
function galaxy:gui/super_builder-gun/update
