scoreboard players set #7 calcu_temp 0
execute store result score #4 calcu_temp run data get entity @s Pos[0]
execute store result score #5 calcu_temp run data get entity @s Pos[1]
execute store result score #6 calcu_temp run data get entity @s Pos[2]
execute store success score #7 calcu_temp if score #1 calcu_temp = #4 calcu_temp
execute if score #7 calcu_temp matches 1 store success score #7 calcu_temp if score #2 calcu_temp = #5 calcu_temp
execute if score #7 calcu_temp matches 1 store success score #7 calcu_temp if score #3 calcu_temp = #6 calcu_temp

execute if score #7 calcu_temp matches 1 run tag @s add sucElevatorPos
