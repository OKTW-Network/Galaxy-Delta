execute positioned ~ ~0.5 ~ run kill @e[tag=galaxy.customFakeBlock,tag=galaxy.elevator,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.elevator"}'}}}}]
function galaxy:block/summon_item/elevator
kill @s
