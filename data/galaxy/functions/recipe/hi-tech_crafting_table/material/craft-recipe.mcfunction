# steel ingot
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:material/get/steel_ingot
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:material/get/steel_ingot


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
