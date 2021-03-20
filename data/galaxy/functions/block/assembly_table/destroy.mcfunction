execute positioned ~ ~1 ~ run kill @e[tag=customFakeBlock,tag=galaxy.assembly_table,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.assembly_table"}'}}}}]
kill @e[type=minecraft:item,nbt={Item:{tag:{CustomData:{galaxy:{id:"gun"}}}}},sort=nearest,limit=1]
function galaxy:block/summon/assembly_table
function galaxy:gui/remove-gui_item
kill @s
