execute if score #block.elevator.find_target.scanDirection galaxy matches 1 at @s run tp @s ~ ~1 ~
execute if score #block.elevator.find_target.scanDirection galaxy matches -1 at @s run tp @s ~ ~-1 ~

execute at @s run tag @e[tag=galaxy.customBlock,tag=galaxy.elevator,tag=!galaxy._tag.ThisElevator,predicate=galaxy:block/available_elevator,distance=..0.05] add galaxy._tag.TargetElevator

scoreboard players remove #block.elevator.find_target.recursiveLimit galaxy 1

execute unless entity @s run tag @s add galaxy._STOP
execute if entity @e[tag=galaxy._tag.TargetElevator] run tag @s add galaxy._STOP
execute unless score #block.elevator.find_target.recursiveLimit galaxy matches 1.. run tag @s add galaxy._STOP

execute if entity @s[tag=galaxy._STOP] run kill @s

execute if entity @s[tag=!galaxy._STOP] if score #block.elevator.find_target.recursiveLimit galaxy matches 1.. run function galaxy:block/elevator/find_target/_recursive
