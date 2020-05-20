execute store result score @s hitboxX1 run data get entity @s Pos[0] 10
execute store result score @s hitboxX2 run data get entity @s Pos[0] 10
execute store result score @s hitboxY1 run data get entity @s Pos[1] 10
execute store result score @s hitboxY2 run data get entity @s Pos[1] 10
execute store result score @s hitboxZ1 run data get entity @s Pos[2] 10
execute store result score @s hitboxZ2 run data get entity @s Pos[2] 10
scoreboard players set #calculation_temp2 numeric 45
scoreboard players set #calculation_temp3 numeric 10
scoreboard players operation @s hitboxX1 -= #calculation_temp2 numeric
scoreboard players operation @s hitboxX2 += #calculation_temp2 numeric
scoreboard players operation @s hitboxZ1 -= #calculation_temp2 numeric
scoreboard players operation @s hitboxZ2 += #calculation_temp2 numeric
scoreboard players operation @s hitboxY2 += #calculation_temp3 numeric

execute if score #calculation_temp1 numeric matches 1.. run function galaxy:damage/tag/action-shock

function galaxy:damage/action-shock

kill @s
