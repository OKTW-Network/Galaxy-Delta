function cu:uuid/generate
execute store result score #1 temp store result score #2 temp run data get storage cu:uuid generate.result[0]
scoreboard players set #3 temp 180000
scoreboard players operation #1 temp %= #3 temp
execute if score #2 temp matches ..-1 run scoreboard players operation #1 temp *= #-1 num
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #1 temp

function cu:uuid/generate
execute store result score #1 temp store result score #2 temp run data get storage cu:uuid generate.result[0]
scoreboard players set #3 temp 90000
scoreboard players operation #1 temp %= #3 temp
execute if score #2 temp matches ..-1 run scoreboard players operation #1 temp *= #-1 num
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #1 temp
