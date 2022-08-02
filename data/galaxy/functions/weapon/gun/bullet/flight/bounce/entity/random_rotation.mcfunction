function cu:uuid/generate
execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage cu:uuid generate[0]
scoreboard players set #3 calcu_temp 180000
scoreboard players operation #1 calcu_temp %= #3 calcu_temp
execute if score #2 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp

function cu:uuid/generate
execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage cu:uuid generate[0]
scoreboard players set #3 calcu_temp 90000
scoreboard players operation #1 calcu_temp %= #3 calcu_temp
execute if score #2 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp
