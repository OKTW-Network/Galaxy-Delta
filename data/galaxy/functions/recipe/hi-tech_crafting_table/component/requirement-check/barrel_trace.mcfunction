execute store result score #calculation_temp1 numeric run clear @s minecraft:terracotta 0
execute unless score #calculation_temp1 numeric matches 2.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:chiseled_quartz_block 0
execute unless score #calculation_temp1 numeric matches 2.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:ender_eye 0
execute unless score #calculation_temp2 numeric matches 1 if score #calculation_temp1 numeric matches 4.. run tag @s add sucHTctRcp