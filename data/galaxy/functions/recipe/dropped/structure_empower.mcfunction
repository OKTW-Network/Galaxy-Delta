execute as @e[type=minecraft:item,tag=dropRcpStrEmp_1,nbt={Item:{id:"minecraft:blaze_rod"}},nbt=!{Item:{Count:6b}}] run tag @s remove dropRcpStrEmp_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod",Count:6b}}] run tag @s add dropRcpStrEmp_1

execute as @e[type=minecraft:item,tag=dropRcpStrEmp_2,nbt={Item:{id:"minecraft:gold_ingot"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpStrEmp_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot",Count:4b}}] run tag @s add dropRcpStrEmp_2

execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3,nbt={Item:{id:"minecraft:glass_pane"}},nbt=!{Item:{Count:2b}}] run tag @s remove dropRcpStrEmp_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_pane",Count:2b}}] run tag @s add dropRcpStrEmp_3

execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s store success score @s sucDropRcp run execute if entity @e[type=minecraft:item,tag=dropRcpStrEmp_1,distance=..0.5] if entity @e[type=minecraft:item,tag=dropRcpStrEmp_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] if score @s sucDropRcp matches 1 run scoreboard players set @s sucDropRcp -1
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s if score @s sucDropRcp matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s if score @s sucDropRcp matches -1 run function galaxy:tool/summon/structure_empower
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s if score @s sucDropRcp matches -1 as @a[distance=..4,predicate=!galaxy:advancement/reached-structure_empower] run function galaxy:advancement/structure_empower
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s if score @s sucDropRcp matches -1 run kill @e[type=minecraft:item,tag=dropRcpStrEmp_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] at @s if score @s sucDropRcp matches -1 run kill @e[type=minecraft:item,tag=dropRcpStrEmp_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpStrEmp_3] if score @s sucDropRcp matches -1 run kill @s
