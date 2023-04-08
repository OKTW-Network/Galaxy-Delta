tag @e[tag=galaxy._tag.elevator.targetCandidate,sort=nearest,limit=1] add galaxy._tag.elevator.targetCandidateCheckSelected
scoreboard players set #1 calcu_temp 0
execute store result score #2 calcu_temp run data get entity @e[tag=galaxy._tag.elevator.targetCandidateCheckSelected,limit=1] Pos[1] 1
scoreboard players operation #2 calcu_temp -= #block.elevator.usedPosY galaxy
execute if score #2 calcu_temp matches ..-1 run scoreboard players operation #2 calcu_temp *= #-1 num
execute if score #2 calcu_temp > #galaxy$block.elevator.range Config run scoreboard players set #1 calcu_temp -1
execute if score #1 calcu_temp matches 0 at @e[tag=galaxy._tag.elevator.targetCandidateCheckSelected] if predicate galaxy:block/valid_elevator run scoreboard players set #1 calcu_temp 1

execute if score #1 calcu_temp matches 0 run tag @e[tag=galaxy._tag.elevator.targetCandidateCheckSelected] remove galaxy._tag.elevator.targetCandidate
execute if score #1 calcu_temp matches 1 run tag @e[tag=galaxy._tag.elevator.targetCandidateCheckSelected] add galaxy._tag.ThisTargetElevator

tag @e[tag=galaxy._tag.elevator.targetCandidateCheckSelected] remove galaxy._tag.elevator.targetCandidateCheckSelected

execute if score #1 calcu_temp matches 0 run function galaxy:block/elevator/interactive/_recursive_target_candidate
