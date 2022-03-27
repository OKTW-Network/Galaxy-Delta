execute positioned ~ ~1 ~ run kill @e[tag=galaxy.customFakeBlock,tag=galaxy.coke_furnace,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.coke_furnace"}'}}}}]
function galaxy:block/summon_item/coke_furnace
function galaxy:gui/remove-gui_item
kill @s
