tag @s add ThisElevatorUser

function galaxy:block/elevator/find_using/main

execute as @e[tag=ThisUsingElevator] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.scanner.elevator"]}
execute if entity @s[tag=galaxy.elevator.action.jump] run tag @e[tag=galaxy.scanner.elevator] add galaxy.scannerAct.Up
execute if entity @s[tag=galaxy.elevator.action.sneak] run tag @e[tag=galaxy.scanner.elevator] add galaxy.scannerAct.Down
scoreboard players operation #elevator.find_target.stepLimit galaxy.block = #galaxy$elevator_range Config
execute as @e[tag=galaxy.scanner.elevator] at @s run function galaxy:block/elevator/find_target

execute as @e[tag=galaxy.TargetElevator] at @s run function galaxy:block/elevator/teleport

tag @e[tag=galaxy.TargetElevator] remove galaxy.TargetElevator
tag @e[tag=ThisUsingElevator] remove ThisUsingElevator

tag @s remove ThisElevatorUser
