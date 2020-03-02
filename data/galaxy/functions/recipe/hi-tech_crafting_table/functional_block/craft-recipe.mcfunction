# elevator
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:iron_ingot 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 8.. store result score @s sucHTctRcp run clear @s minecraft:ender_pearl 0
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:iron_ingot 8
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:ender_pearl 1
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/functional/get/elevator
execute if score @s reqRcpHTct matches 1 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/elevator

# katana display stand type 1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:dark_oak_slab 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 3.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:dark_oak_slab 3
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-1

# katana display stand type 2
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:dark_oak_slab 0
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 3.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:dark_oak_slab 3
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-2
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-2

# katana display stand type 3
execute if score @s reqRcpHTct matches 4 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:dark_oak_slab 0
execute if score @s reqRcpHTct matches 4 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 3.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 4 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:dark_oak_slab 3
execute if score @s reqRcpHTct matches 4 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-3
execute if score @s reqRcpHTct matches 4 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-3

# katana display stand type 4
execute if score @s reqRcpHTct matches 5 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:dark_oak_slab 0
execute if score @s reqRcpHTct matches 5 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 3.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 5 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:dark_oak_slab 3
execute if score @s reqRcpHTct matches 5 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-4
execute if score @s reqRcpHTct matches 5 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-4


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
