scoreboard players set #calculation_temp1 numeric 0
execute if score @s elevatorTempDown matches -1 run function galaxy:block/functional/elevator/scan_to_temp-down
execute unless score @s elevatorTempDown matches -1 run function galaxy:block/functional/elevator/check_temp-down
execute if score #calculation_temp1 numeric matches 1 run function galaxy:block/functional/elevator/tp-down
execute if score #calculation_temp1 numeric matches 0..1 run tag @a[tag=reqElevatorGoDown] remove reqElevatorGoDown
