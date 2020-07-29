execute store result score #calculation_temp1 numeric run clear @s minecraft:iron_ingot 0
execute unless score #calculation_temp1 numeric matches 4.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:glass_pane 0
execute unless score #calculation_temp1 numeric matches 2.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:diamond 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:redstone_lamp 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:terracotta 0
execute unless score #calculation_temp2 numeric matches 1 if score #calculation_temp1 numeric matches 2.. run tag @s add sucHTctRcp
