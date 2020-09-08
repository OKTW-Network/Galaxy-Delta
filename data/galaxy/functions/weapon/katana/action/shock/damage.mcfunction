execute store result score @s hitboxX1 run data get entity @s Pos[0] 10
execute store result score @s hitboxX2 run data get entity @s Pos[0] 10
execute store result score @s hitboxY1 run data get entity @s Pos[1] 10
execute store result score @s hitboxY2 run data get entity @s Pos[1] 10
execute store result score @s hitboxZ1 run data get entity @s Pos[2] 10
execute store result score @s hitboxZ2 run data get entity @s Pos[2] 10
scoreboard players set #2 calcu_temp 45
scoreboard players set #3 calcu_temp 10
scoreboard players operation @s hitboxX1 -= #2 calcu_temp
scoreboard players operation @s hitboxX2 += #2 calcu_temp
scoreboard players operation @s hitboxZ1 -= #2 calcu_temp
scoreboard players operation @s hitboxZ2 += #2 calcu_temp
scoreboard players operation @s hitboxY2 += #3 calcu_temp

execute if score #1 calcu_temp matches 1.. run function galaxy:damage/tag/action-shock

function galaxy:damage/action-shock

kill @s
