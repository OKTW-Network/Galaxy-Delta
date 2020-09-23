summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:32767s,Silent:1b,Tags:["giveItem"]}
data modify entity @e[tag=giveItem,limit=1] Item set from storage galaxy:get item[0]
data modify entity @e[tag=giveItem,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=giveItem,limit=1] PickupDelay set value 0s
tag @e[tag=giveItem,limit=1] remove giveItem
