execute store result score #1 calcu_temp1 run data get entity @s Rotation[0] 1000
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp1

execute store result score #1 calcu_temp1 run data get entity @s Rotation[1] 1000
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp1
