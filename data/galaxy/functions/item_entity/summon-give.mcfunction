execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:32767s,Silent:1b,Tags:["processing","haveOwner"]}
data modify entity @e[tag=processing,limit=1] Item set from storage galaxy:get item[0]
data modify entity @e[tag=processing,limit=1] Owner set from entity @s UUID
scoreboard players set @e[tag=processing,limit=1] cdItemOwner 20
data modify entity @e[tag=processing,limit=1] PickupDelay set value 0s
tag @e[tag=processing,limit=1] remove processing
