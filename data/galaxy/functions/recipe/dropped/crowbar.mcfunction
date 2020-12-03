execute as @e[type=minecraft:item,tag=dropRcpCrowbar_1,nbt={Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpCrowbar_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}}] run tag @s add dropRcpCrowbar_1

execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2,nbt={Item:{id:"minecraft:stick"}},nbt=!{Item:{Count:2b}}] run tag @s remove dropRcpCrowbar_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:2b}}] run tag @s add dropRcpCrowbar_2

execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] at @s store success score @s sucDropRcp run execute if entity @e[type=minecraft:item,tag=dropRcpCrowbar_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] if score @s sucDropRcp matches 1 run scoreboard players set @s sucDropRcp -1
execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] at @s if score @s sucDropRcp matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] at @s if score @s sucDropRcp matches -1 run function galaxy:tool/summon/crowbar
execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] at @s if score @s sucDropRcp matches -1 run kill @e[type=minecraft:item,tag=dropRcpCrowbar_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpCrowbar_2] if score @s sucDropRcp matches -1 run kill @s
