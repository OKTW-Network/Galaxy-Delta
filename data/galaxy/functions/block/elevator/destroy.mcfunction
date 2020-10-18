execute positioned ~ ~1 ~ run kill @e[tag=elevator_fake_block,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.elevator"}'}}}}]
function galaxy:block/summon/elevator
kill @s
