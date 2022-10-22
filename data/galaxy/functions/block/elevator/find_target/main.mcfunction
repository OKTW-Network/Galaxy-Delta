execute as @e[tag=galaxy._tag.ThisElevator] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.elevatorFindTarget"]}
scoreboard players set #block.elevator.find_target.scanDirection galaxy 0
execute if entity @s[tag=galaxy._task.elevator.goUp] run scoreboard players set #block.elevator.find_target.scanDirection galaxy 1
execute if entity @s[tag=galaxy._task.elevator.goDown] run scoreboard players set #block.elevator.find_target.scanDirection galaxy -1
scoreboard players operation #block.elevator.find_target.recursiveLimit galaxy = #galaxy$elevator_range Config

execute unless score #block.elevator.find_target.scanDirection galaxy matches 0 as @e[tag=galaxy.dummy.elevatorFindTarget] at @s run function galaxy:block/elevator/find_target/_recursive
