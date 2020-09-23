execute as @e[type=minecraft:item,tag=dropRcpWrench_1,nbt={Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{Count:3b}}] run tag @s remove dropRcpWrench_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:3b}}] run tag @s add dropRcpWrench_1

execute as @e[type=minecraft:item,tag=dropRcpWrench_2,nbt={Item:{id:"minecraft:stick"}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpWrench_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:1b}}] run tag @s add dropRcpWrench_2

execute as @e[type=minecraft:item,tag=dropRcpWrench_2] at @s store success score @s sucDropRcp run execute if entity @e[type=minecraft:item,tag=dropRcpWrench_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpWrench_2] if score @s sucDropRcp matches 1 run scoreboard players set @s sucDropRcp -1
execute as @e[type=minecraft:item,tag=dropRcpWrench_2] at @s if score @s sucDropRcp matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpWrench_2] at @s if score @s sucDropRcp matches -1 run function galaxy:tool/summon/wrench
execute as @e[type=minecraft:item,tag=dropRcpWrench_2] at @s if score @s sucDropRcp matches -1 run kill @e[type=minecraft:item,tag=dropRcpWrench_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpWrench_2] if score @s sucDropRcp matches -1 run kill @s
