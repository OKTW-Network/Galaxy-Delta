execute store result score #1 calcu_temp run clear @s minecraft:command_block{ingotSteel:1} 0
execute unless score #1 calcu_temp matches 14.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:dark_oak_planks 0
execute unless score #1 calcu_temp matches 6.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:iron_block 0
execute unless score #2 calcu_temp matches 1 if score #1 calcu_temp matches 2.. run tag @s add sucHTctRcp
