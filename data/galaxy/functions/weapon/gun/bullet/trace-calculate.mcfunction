execute store result score #1 calcu_temp run data get entity @e[tag=bulletTracer,limit=1] Rotation[0] 10
execute store result score #2 calcu_temp run data get entity @s Rotation[0] 10
scoreboard players set #3 calcu_temp 0
scoreboard players set #4 calcu_temp 3600
execute if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp += #4 calcu_temp
execute if score #2 calcu_temp matches ..-1 run scoreboard players operation #2 calcu_temp += #4 calcu_temp
scoreboard players operation #1 calcu_temp -= #2 calcu_temp
execute if score #1 calcu_temp matches 1800.. run scoreboard players operation #1 calcu_temp -= #4 calcu_temp
execute if score #1 calcu_temp matches ..-1800 run scoreboard players operation #1 calcu_temp += #4 calcu_temp
execute store success score #3 calcu_temp if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #1 calcu_temp > @s bulletTrace run scoreboard players operation #1 calcu_temp = @s bulletTrace
execute if score #3 calcu_temp matches 1 run scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players operation #2 calcu_temp += #1 calcu_temp
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #2 calcu_temp

execute store result score #1 calcu_temp run data get entity @e[tag=bulletTracer,limit=1] Rotation[1] 10
execute store result score #2 calcu_temp run data get entity @s Rotation[1] 10
scoreboard players set #3 calcu_temp 0
scoreboard players operation #1 calcu_temp -= #2 calcu_temp
execute store success score #3 calcu_temp if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #1 calcu_temp > @s bulletTrace run scoreboard players operation #1 calcu_temp = @s bulletTrace
execute if score #3 calcu_temp matches 1 run scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players operation #2 calcu_temp += #1 calcu_temp
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #2 calcu_temp
