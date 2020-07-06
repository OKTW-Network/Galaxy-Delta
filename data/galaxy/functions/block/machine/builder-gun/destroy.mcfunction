function galaxy:block/machine/summon/builder-gun
execute positioned ~ ~1 ~ run kill @e[tag=builder-gun_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.builder-gun"}'}}}}]
function galaxy:gui/remove-gui_item
kill @s
