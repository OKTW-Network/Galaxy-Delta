execute store result score #1 calcu_temp1 run data get entity @s Rotation[0] 1000
execute store result score #2 calcu_temp1 run scoreboard players get @e[tag=bullet,tag=init,limit=1] bulletOffset
execute store result score #3 calcu_temp1 run data get entity @e[tag=bullet,tag=init,limit=1] UUID[0]
scoreboard players operation #4 calcu_temp1 = #3 calcu_temp1
scoreboard players operation #4 calcu_temp1 %= #static_10 numeric
scoreboard players operation #3 calcu_temp1 %= #2 calcu_temp1
execute if score #4 calcu_temp1 matches ..5 run scoreboard players operation #1 calcu_temp1 -= #3 calcu_temp1
execute unless score #4 calcu_temp1 matches ..5 run scoreboard players operation #1 calcu_temp1 += #3 calcu_temp1
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp1

execute store result score #1 calcu_temp1 run data get entity @s Rotation[1] 1000
execute store result score #2 calcu_temp1 run scoreboard players get @e[tag=bullet,tag=init,limit=1] bulletOffset
execute store result score #3 calcu_temp1 run data get entity @e[tag=bullet,tag=init,limit=1] UUID[1]
scoreboard players operation #4 calcu_temp1 = #3 calcu_temp1
scoreboard players operation #4 calcu_temp1 %= #static_10 numeric
scoreboard players operation #3 calcu_temp1 %= #2 calcu_temp1
execute if score #4 calcu_temp1 matches ..5 run scoreboard players operation #1 calcu_temp1 -= #3 calcu_temp1
execute unless score #4 calcu_temp1 matches ..5 run scoreboard players operation #1 calcu_temp1 += #3 calcu_temp1
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp1
