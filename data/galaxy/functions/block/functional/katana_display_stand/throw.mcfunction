summon minecraft:item ~ ~ ~ {Tags:["throwItem"],PickupDelay:10s,Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=throwItem,limit=1] Item set from entity @s HandItems[0]
replaceitem entity @s weapon.mainhand air
tag @e[tag=throwItem] remove throwItem
