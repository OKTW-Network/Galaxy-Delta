function galaxy:block/machine/summon/super_builder-gun
execute positioned ~ ~1 ~ run kill @e[tag=super_builder-gun_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.super_builder-gun\"}"}}}}]
function galaxy:gui/remove-gui_item
kill @s
