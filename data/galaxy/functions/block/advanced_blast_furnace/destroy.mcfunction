execute positioned ~ ~0.5 ~ run kill @e[tag=galaxy.block_mask.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.advanced_blast_furnace"}'}}}}]
function galaxy:block/summon_item/advanced_blast_furnace
function galaxy:gui/cleanup_gui_item
kill @s
