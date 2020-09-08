scoreboard players set #1 calcu_temp 0
function galaxy:block/functional/elevator/scan_to_temp-down
execute if score #1 calcu_temp matches 1.. run function galaxy:block/functional/elevator/tp-down
tag @a[tag=reqElevatorGoDown] remove reqElevatorGoDown
