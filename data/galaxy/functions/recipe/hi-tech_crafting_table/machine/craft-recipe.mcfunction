# hi-tech crafting table
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:redstone 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 2.. store result score @s sucHTctRcp run clear @s minecraft:lapis_lazuli 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 2.. store result score @s sucHTctRcp run clear @s minecraft:diamond 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. store result score @s sucHTctRcp run clear @s minecraft:iron_ingot 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 2.. store result score @s sucHTctRcp run clear @s minecraft:crafting_table 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. store result score @s sucHTctRcp run clear @s minecraft:obsidian 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:redstone 2
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:lapis_lazuli 2
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:diamond 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:iron_ingot 2
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:crafting_table 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:obsidian 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/machine/get/hi-tech_crafting_table
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/machine/get/hi-tech_crafting_table


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
