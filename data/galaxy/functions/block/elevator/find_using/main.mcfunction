execute store result score #block.elevator.find_using.posX galaxy run data get entity @s Pos[0] 1
execute store result score #block.elevator.find_using.posY galaxy run data get entity @s Pos[1] 1
scoreboard players remove #block.elevator.find_using.posY galaxy 1
execute store result score #block.elevator.find_using.posZ galaxy run data get entity @s Pos[2] 1

execute as @e[tag=galaxy.customBlock,tag=galaxy.elevator,distance=..2] run function galaxy:block/elevator/find_using/_recursive
