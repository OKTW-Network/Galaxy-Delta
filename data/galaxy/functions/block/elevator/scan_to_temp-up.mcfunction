function galaxy:block/elevator/scan_init
tag @e[tag=elevatorScanner] add checkUp
tag @e[tag=elevatorScanner] add checkSafe
execute as @e[tag=elevatorScanner] at @s run function galaxy:block/elevator/scan
scoreboard players operation @s elevatorTempUp = #1 calcu_temp
tag @s remove elevatorUpdateUp
