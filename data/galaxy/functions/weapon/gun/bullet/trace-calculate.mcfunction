execute store result score #1 calcu_temp1 run data get entity @e[tag=bulletTracer,limit=1] Rotation[0] 10
execute store result score #2 calcu_temp1 run data get entity @s Rotation[0] 10
scoreboard players set #3 calcu_temp1 0
scoreboard players set #4 calcu_temp1 3600
execute if score #1 calcu_temp1 matches ..-1 run scoreboard players operation #1 calcu_temp1 += #4 calcu_temp1
execute if score #2 calcu_temp1 matches ..-1 run scoreboard players operation #2 calcu_temp1 += #4 calcu_temp1
scoreboard players operation #1 calcu_temp1 -= #2 calcu_temp1
execute if score #1 calcu_temp1 matches 1800.. run scoreboard players operation #1 calcu_temp1 -= #4 calcu_temp1
execute if score #1 calcu_temp1 matches ..-1800 run scoreboard players operation #1 calcu_temp1 += #4 calcu_temp1
execute store success score #3 calcu_temp1 if score #1 calcu_temp1 matches ..-1 run scoreboard players operation #1 calcu_temp1 *= #static_-1 numeric
execute if score #1 calcu_temp1 > @s bulletTrace run scoreboard players operation #1 calcu_temp1 = @s bulletTrace
execute if score #3 calcu_temp1 matches 1 run scoreboard players operation #1 calcu_temp1 *= #static_-1 numeric
scoreboard players operation #2 calcu_temp1 += #1 calcu_temp1
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #2 calcu_temp1

execute store result score #1 calcu_temp1 run data get entity @e[tag=bulletTracer,limit=1] Rotation[1] 10
execute store result score #2 calcu_temp1 run data get entity @s Rotation[1] 10
scoreboard players set #3 calcu_temp1 0
scoreboard players operation #1 calcu_temp1 -= #2 calcu_temp1
execute store success score #3 calcu_temp1 if score #1 calcu_temp1 matches ..-1 run scoreboard players operation #1 calcu_temp1 *= #static_-1 numeric
execute if score #1 calcu_temp1 > @s bulletTrace run scoreboard players operation #1 calcu_temp1 = @s bulletTrace
execute if score #3 calcu_temp1 matches 1 run scoreboard players operation #1 calcu_temp1 *= #static_-1 numeric
scoreboard players operation #2 calcu_temp1 += #1 calcu_temp1
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #2 calcu_temp1
