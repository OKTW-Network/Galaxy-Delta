execute positioned ~ ~1 ~ run kill @e[tag=customFakeBlock,tag=galaxy.elevator,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.elevator"}'}}}}]
function galaxy:block/summon/elevator
kill @s
