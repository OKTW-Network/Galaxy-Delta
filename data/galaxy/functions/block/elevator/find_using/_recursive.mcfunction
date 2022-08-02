tag @s add galaxy._tag.ThisElevator

execute store result score #1 calcu_temp run data get entity @s Pos[0] 1
execute store result score #2 calcu_temp run data get entity @s Pos[1] 1
execute store result score #3 calcu_temp run data get entity @s Pos[2] 1
execute unless score #block.elevator.find_using.posX galaxy = #1 calcu_temp run tag @s remove galaxy._tag.ThisElevator
execute unless score #block.elevator.find_using.posY galaxy = #2 calcu_temp run tag @s remove galaxy._tag.ThisElevator
execute unless score #block.elevator.find_using.posZ galaxy = #3 calcu_temp run tag @s remove galaxy._tag.ThisElevator
