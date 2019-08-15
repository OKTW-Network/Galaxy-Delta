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

# coke furnace
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:clay_ball 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 12.. store result score @s sucHTctRcp run clear @s minecraft:sand 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 8.. store result score @s sucHTctRcp run clear @s minecraft:furnace 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. store result score @s sucHTctRcp run clear @s minecraft:smooth_stone 0
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:clay_ball 12
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:sand 8
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:furnace 1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:smooth_stone 1
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/machine/get/coke_furnace
execute if score @s reqRcpHTct matches 2 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/machine/get/coke_furnace

# advanced blast furnace
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] store result score @s sucHTctRcp run clear @s minecraft:obsidian 0
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 6.. store result score @s sucHTctRcp run clear @s minecraft:iron_block 0
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 2.. store result score @s sucHTctRcp run clear @s minecraft:blast_furnace 0
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. store result score @s sucHTctRcp run clear @s minecraft:smooth_stone 0
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=!creative] if score @s sucHTctRcp matches 1.. run scoreboard players set @s sucHTctRcp -1
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:obsidian 6
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:iron_block 2
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:blast_furnace 1
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run clear @s minecraft:smooth_stone 1
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..,sucHTctRcp=-1},gamemode=!creative] run function galaxy:block/machine/get/advanced_blast_furnace
execute if score @s reqRcpHTct matches 3 run execute as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/machine/get/advanced_blast_furnace


execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s sucHTctRcp 0
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
