execute positioned ~ ~1 ~ run kill @e[tag=super_assembler_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.super_assembler"}'}}}}]
kill @e[type=minecraft:item,nbt={Item:{tag:{gun:{}}}},sort=nearest,limit=1]
function galaxy:block/summon/super_assembler
function galaxy:gui/remove-gui_item
kill @s
