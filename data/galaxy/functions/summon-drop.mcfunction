summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:32767s,Silent:1b,Tags:["dropItem"],Motion:[0.0d,0.2d,0.0d]}
data modify entity @e[tag=dropItem,limit=1] Item set from storage galaxy:get item[0]
data modify entity @e[tag=dropItem,limit=1] PickupDelay set value 10s
tag @e[tag=dropItem,limit=1] remove dropItem
