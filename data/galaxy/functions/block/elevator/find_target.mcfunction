execute if score #elevator.scanner.scanDirection galaxy.block matches 2 at @s run tp @s ~ ~1 ~
execute if score #elevator.scanner.scanDirection galaxy.block matches 1 at @s run tp @s ~ ~-1 ~

scoreboard players remove #elevator.scanner.stepLimit galaxy.block 1

execute at @s run tag @e[tag=galaxy.customBlock,tag=galaxy.elevator,tag=!galaxy._tag.ThisElevator,predicate=galaxy:block/available_elevator,distance=..0.05] add galaxy._tag.TargetElevator

execute if entity @e[tag=galaxy._tag.TargetElevator] run tag @s add galaxy._STOP
execute unless score #elevator.scanner.stepLimit galaxy.block matches 1.. run tag @s add galaxy._STOP
execute unless entity @s run tag @s add galaxy._STOP
execute if entity @s[tag=galaxy._STOP] run kill @s

execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/elevator/find_target
