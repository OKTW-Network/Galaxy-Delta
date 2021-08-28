tag @s add ThisUsingElevator

execute store result score #1 calcu_temp run data get entity @s Pos[0] 1
execute store result score #2 calcu_temp run data get entity @s Pos[1] 1
execute store result score #3 calcu_temp run data get entity @s Pos[2] 1
execute unless score #elevator.find_using.pos0 galaxy.block = #1 calcu_temp run tag @s remove ThisUsingElevator
execute unless score #elevator.find_using.pos1 galaxy.block = #2 calcu_temp run tag @s remove ThisUsingElevator
execute unless score #elevator.find_using.pos2 galaxy.block = #3 calcu_temp run tag @s remove ThisUsingElevator
