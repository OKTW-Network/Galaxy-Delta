execute store result score #calculation_temp1 numeric run clear @s minecraft:ender_eye 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:comparator 0
execute unless score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 1

execute unless score #calculation_temp2 numeric matches 1 store result score #calculation_temp1 numeric run clear @s minecraft:tripwire_hook 0
execute unless score #calculation_temp2 numeric matches 1 if score #calculation_temp1 numeric matches 1.. run tag @s add sucHTctRcp
