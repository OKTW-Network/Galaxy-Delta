function galaxy:block/functional/elevator/scan_init
tag @e[tag=elevatorScanner] add checkDown
tag @e[tag=elevatorScanner] add checkSafe
execute as @e[tag=elevatorScanner] at @s run function galaxy:block/functional/elevator/scan
scoreboard players operation @s elevatorTempDown = #calculation_temp2 numeric
tag @s remove elevatorUpdateDown
