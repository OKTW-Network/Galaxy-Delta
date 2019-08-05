# wrench
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:iron_ingot 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. store result score @s sucHTctRcp run clear @s minecraft:command_block{ingotSteel:1} 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 3.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:iron_ingot 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:command_block{ingotSteel:1} 3
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:tool/get/wrench
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/get/wrench

# structure empower
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:blaze_rod 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 4.. store result score @s sucHTctRcp run clear @s minecraft:gold_ingot 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 2.. store result score @s sucHTctRcp run clear @s minecraft:glass_pane 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:blaze_rod 4
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:gold_ingot 2
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:glass_pane 1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:tool/get/structure_empower
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/get/structure_empower


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
