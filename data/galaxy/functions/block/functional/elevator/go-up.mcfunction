scoreboard players set #calculation_temp1 numeric 0
execute if score @s elevatorTempUp matches -1 run function galaxy:block/functional/elevator/scan_to_temp-up
execute unless score @s elevatorTempUp matches -1 run function galaxy:block/functional/elevator/check_temp-up
execute if score #calculation_temp1 numeric matches 1 run function galaxy:block/functional/elevator/tp-up
execute if score #calculation_temp1 numeric matches 0..1 run tag @a[tag=reqElevatorGoUp] remove reqElevatorGoUp
