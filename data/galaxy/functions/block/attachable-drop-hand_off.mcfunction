summon item ~ ~ ~ {Tags:["unattachedDropHandOff"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=unattachedDropHandOff,limit=1] Item set from entity @s HandItems[1]
replaceitem entity @s weapon.offhand air
tag @e[tag=unattachedDropHandOff] remove unattachedDropHandOff
