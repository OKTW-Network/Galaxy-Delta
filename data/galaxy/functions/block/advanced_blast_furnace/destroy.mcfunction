execute positioned ~ ~1 ~ run kill @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.advanced_blast_furnace"}'}}}}]
function galaxy:block/summon_item/advanced_blast_furnace
function galaxy:gui/remove_player_gui_item
kill @s
