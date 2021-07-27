execute store result score #1 calcu_temp run data get entity @s Rotation[0] 1000
execute store result score #2 calcu_temp run scoreboard players get @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute store result score #3 calcu_temp store result score #4 calcu_temp run data get entity @e[tag=galaxy.bullet,tag=init,limit=1] UUID[0]
scoreboard players operation #3 calcu_temp %= #2 calcu_temp
execute if score #4 calcu_temp matches ..-1 run scoreboard players operation #3 calcu_temp *= #-1 num
execute store result entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation[0] float 0.001 run scoreboard players operation #1 calcu_temp += #3 calcu_temp

execute store result score #1 calcu_temp store result score #2 calcu_temp run data get entity @s Rotation[1] 1000
execute store result score #3 calcu_temp run scoreboard players get @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute store result score #4 calcu_temp store result score #5 calcu_temp run data get entity @e[tag=galaxy.bullet,tag=init,limit=1] UUID[1]
execute if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players operation #4 calcu_temp %= #3 calcu_temp
execute if score #5 calcu_temp matches ..-1 run scoreboard players operation #4 calcu_temp *= #-1 num
execute store result score #6 calcu_temp run scoreboard players operation #1 calcu_temp += #4 calcu_temp
execute if score #6 calcu_temp matches 90001.. store result score #7 calcu_temp run data get entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation[0] 1000
execute if score #6 calcu_temp matches 90001.. store result entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation[0] float 0.001 run scoreboard players remove #7 calcu_temp 180000
execute if score #6 calcu_temp matches 90001.. run scoreboard players remove #1 calcu_temp 180000
execute if score #6 calcu_temp matches 90001.. run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #2 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute store result entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp
