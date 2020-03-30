execute store result score #calculation_temp1 numeric run clear @s minecraft:iron_ingot 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:command_block{ingotSteel:1} 0
execute unless score #calculation_temp2 numeric matches 1 if score #calculation_temp1 numeric matches 3.. run tag @s add sucHTctRcp
