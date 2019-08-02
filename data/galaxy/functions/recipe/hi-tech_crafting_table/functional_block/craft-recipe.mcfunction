# katana showcase type 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:block/functional/get/katana_showcase-1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_showcase-1

# katana showcase type 2
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:block/functional/get/katana_showcase-2
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_showcase-2


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
