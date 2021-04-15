scoreboard players set #precision random 3
scoreboard players set #allowNegative random 1
function math:random/generate
execute store result score #2 calcu_temp run data get storage math:random result
scoreboard players set #1 calcu_temp 180
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp

scoreboard players set #precision random 3
scoreboard players set #allowNegative random 1
function math:random/generate
execute store result score #2 calcu_temp run data get storage math:random result
scoreboard players set #1 calcu_temp 90
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp
