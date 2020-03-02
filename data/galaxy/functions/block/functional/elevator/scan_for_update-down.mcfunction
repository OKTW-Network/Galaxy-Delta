function galaxy:block/functional/elevator/scan_init
tag @e[tag=elevatorScanner] add checkDown
execute as @e[tag=elevatorScanner] at @s run function galaxy:block/functional/elevator/scan
execute if score #calculation_temp2 numeric matches 1 positioned ~ ~-1 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 2 positioned ~ ~-2 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 3 positioned ~ ~-3 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 4 positioned ~ ~-4 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 5 positioned ~ ~-5 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 6 positioned ~ ~-6 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 7 positioned ~ ~-7 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 8 positioned ~ ~-8 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 9 positioned ~ ~-9 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 10 positioned ~ ~-10 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 11 positioned ~ ~-11 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 12 positioned ~ ~-12 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 13 positioned ~ ~-13 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 14 positioned ~ ~-14 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 15 positioned ~ ~-15 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
execute if score #calculation_temp2 numeric matches 16 positioned ~ ~-16 ~ run tag @e[tag=elevator,distance=..0.05] add elevatorUpdateUp
