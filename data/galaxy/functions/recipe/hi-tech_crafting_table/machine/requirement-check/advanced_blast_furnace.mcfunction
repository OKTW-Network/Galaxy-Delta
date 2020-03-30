execute store result score #calculation_temp1 numeric run clear @s minecraft:obsidian 0
execute unless score #calculation_temp1 numeric matches 6.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:iron_block 0
execute unless score #calculation_temp1 numeric matches 2.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:blast_furnace 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:smooth_stone 0
execute unless score #calculation_temp2 numeric matches 1 if score #calculation_temp1 numeric matches 1.. run tag @s add sucHTctRcp
