function galaxy:block/elevator/scan_init
tag @e[tag=elevatorScanner] add checkUp
execute as @e[tag=elevatorScanner] at @s run function galaxy:block/elevator/scan

execute if score #1 calcu_temp matches 2 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~2 ~
execute if score #1 calcu_temp matches 3 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~3 ~
execute if score #1 calcu_temp matches 4 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~4 ~
execute if score #1 calcu_temp matches 5 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~5 ~
execute if score #1 calcu_temp matches 6 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~6 ~
execute if score #1 calcu_temp matches 7 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~7 ~
execute if score #1 calcu_temp matches 8 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~8 ~
execute if score #1 calcu_temp matches 9 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~9 ~
execute if score #1 calcu_temp matches 10 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~10 ~
execute if score #1 calcu_temp matches 11 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~11 ~
execute if score #1 calcu_temp matches 12 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~12 ~
execute if score #1 calcu_temp matches 13 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~13 ~
execute if score #1 calcu_temp matches 14 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~14 ~
execute if score #1 calcu_temp matches 15 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~15 ~
execute if score #1 calcu_temp matches 16 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~16 ~

execute if score #1 calcu_temp matches 2..16 at @a[tag=reqElevatorGoUp] run function galaxy:block/elevator/sound-teleport
