execute positioned ~ ~1 ~ run kill @e[tag=super_builder-gun_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.super_builder-gun"}'}}}}]
kill @e[type=minecraft:item,nbt={Item:{tag:{gun:{}}}},sort=nearest,limit=1]
function galaxy:block/summon/super_builder-gun
function galaxy:gui/remove-gui_item
kill @s