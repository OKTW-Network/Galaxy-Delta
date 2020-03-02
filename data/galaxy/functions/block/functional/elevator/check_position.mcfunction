scoreboard players set #calculation_temp7 numeric 0
execute store result score #calculation_temp4 numeric run data get entity @s Pos[0]
execute store result score #calculation_temp5 numeric run data get entity @s Pos[1]
execute store result score #calculation_temp6 numeric run data get entity @s Pos[2]
execute store success score #calculation_temp7 numeric if score #calculation_temp1 numeric = #calculation_temp4 numeric
execute if score #calculation_temp7 numeric matches 1 store success score #calculation_temp7 numeric if score #calculation_temp2 numeric = #calculation_temp5 numeric
execute if score #calculation_temp7 numeric matches 1 store success score #calculation_temp7 numeric if score #calculation_temp3 numeric = #calculation_temp6 numeric

execute if score #calculation_temp7 numeric matches 1 run tag @s add sucElevatorPos
