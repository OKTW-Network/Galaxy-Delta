execute store result score #elevator.find_using.pos0 galaxy.block run data get entity @s Pos[0] 1
execute store result score #elevator.find_using.pos2 galaxy.block run data get entity @s Pos[2] 1
execute store result score #elevator.find_using.pos1 galaxy.block run data get entity @s Pos[1] 1
scoreboard players remove #elevator.find_using.pos1 galaxy.block 1

execute as @e[tag=galaxy.customBlock,tag=galaxy.elevator,distance=..2] run function galaxy:block/elevator/find_using/compare
