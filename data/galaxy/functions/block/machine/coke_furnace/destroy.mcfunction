function galaxy:block/machine/summon/coke_furnace
execute positioned ~ ~1 ~ run kill @e[tag=coke_furnace_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.coke_furnace"}'}}}}]
function galaxy:gui/remove-gui_item
kill @s
