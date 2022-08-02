tag @s add galaxy._tag.ThisElevatorUser

function galaxy:block/elevator/find_using/main

function galaxy:block/elevator/find_target/main

execute as @e[tag=galaxy._tag.TargetElevator] at @s run function galaxy:block/elevator/teleport

tag @e[tag=galaxy._tag.TargetElevator] remove galaxy._tag.TargetElevator
tag @e[tag=galaxy._tag.ThisElevator] remove galaxy._tag.ThisElevator

tag @s remove galaxy._tag.ThisElevatorUser
