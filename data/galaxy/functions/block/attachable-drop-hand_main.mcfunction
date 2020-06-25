summon item ~ ~ ~ {Tags:["unattachedDropHandMain"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=unattachedDropHandMain,limit=1] Item set from entity @s HandItems[0]
replaceitem entity @s weapon.mainhand air
tag @e[tag=unattachedDropHandMain] remove unattachedDropHandMain
