function galaxy:gui/remove-gui_item
setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.coke_furnace\"}"}}}}]
setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.coke_furnace\"}"} replace
function galaxy:gui/coke_furnace/update
