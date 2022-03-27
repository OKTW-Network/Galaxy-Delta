tag @s add galaxy._tag.ThisElevatorUser

function galaxy:block/elevator/find_using/main

execute as @e[tag=galaxy._tag.ThisElevator] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.elevatorScanner"]}
scoreboard players set #elevator.scanner.scanDirection galaxy.block 0
execute if entity @s[tag=galaxy._tag.elevatorJump] run scoreboard players set #elevator.scanner.scanDirection galaxy.block 2
execute if entity @s[tag=galaxy._tag.elevatorSneak] run scoreboard players set #elevator.scanner.scanDirection galaxy.block 1
scoreboard players operation #elevator.scanner.stepLimit galaxy.block = #galaxy$elevator_range Config
execute unless score #elevator.scanner.scanDirection galaxy.block matches 0 as @e[tag=galaxy.dummy.elevatorScanner] at @s run function galaxy:block/elevator/find_target

execute as @e[tag=galaxy._tag.TargetElevator] at @s run function galaxy:block/elevator/teleport

tag @e[tag=galaxy._tag.TargetElevator] remove galaxy._tag.TargetElevator
tag @e[tag=galaxy._tag.ThisElevator] remove galaxy._tag.ThisElevator

tag @s remove galaxy._tag.ThisElevatorUser
