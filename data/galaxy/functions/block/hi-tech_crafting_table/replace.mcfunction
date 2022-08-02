setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/kill-gui_item_entity
function galaxy:gui/remove_player_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.hi_tech_crafting"}'}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace
function galaxy:gui/hi-tech_crafting_table/update
