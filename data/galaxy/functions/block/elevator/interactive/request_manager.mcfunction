execute store result score #block.elevator.usedPosY galaxy run data get entity @s Pos[1]
scoreboard players remove #block.elevator.usedPosY galaxy 1

execute if entity @s[tag=galaxy._task.elevator.goUp] align xyz positioned ~ ~3 ~ run tag @e[tag=galaxy.block.elevator,dx=0,dy=29,dz=0] add galaxy._tag.elevator.targetCandidate
execute if entity @s[tag=galaxy._task.elevator.goDown] align xyz positioned ~ ~-3 ~ run tag @e[tag=galaxy.block.elevator,dx=0,dy=-28,dz=0] add galaxy._tag.elevator.targetCandidate
execute if entity @e[tag=galaxy._tag.elevator.targetCandidate] run function galaxy:block/elevator/interactive/_recursive_target_candidate
tag @e[tag=galaxy._tag.elevator.targetCandidate] remove galaxy._tag.elevator.targetCandidate

execute as @e[tag=galaxy._tag.ThisTargetElevator] at @s run function galaxy:block/elevator/interactive/teleport

tag @e[tag=galaxy._tag.ThisTargetElevator] remove galaxy._tag.ThisTargetElevator
