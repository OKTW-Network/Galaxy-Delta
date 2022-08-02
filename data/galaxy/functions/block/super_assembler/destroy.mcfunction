execute positioned ~ ~1 ~ run kill @e[tag=galaxy.customFakeBlock,tag=galaxy.super_assembler,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.super_assemble"}'}}}}]
kill @e[type=minecraft:item,nbt={Item:{tag:{CustomData:{galaxy:{id:"gun"}}}}},sort=nearest,limit=1]
function galaxy:block/summon_item/super_assembler
function galaxy:gui/remove_player_gui_item
kill @s
