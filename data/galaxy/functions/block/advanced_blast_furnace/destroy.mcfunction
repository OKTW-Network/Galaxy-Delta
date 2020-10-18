execute positioned ~ ~1 ~ run kill @e[tag=advanced_blast_furnace_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.advanced_blast_furnace"}'}}}}]
function galaxy:block/summon/advanced_blast_furnace
function galaxy:gui/remove-gui_item
kill @s
