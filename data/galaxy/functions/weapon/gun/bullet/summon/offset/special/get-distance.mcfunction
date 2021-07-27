execute in cu:data_temp run summon minecraft:marker 1.5 81.5 1.5 {Tags:["galaxy.bullet.get-distance"]}

execute store result score #1 calcu_temp run scoreboard players get @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute store result score #2 calcu_temp run scoreboard players get @s gunBulletTotal

scoreboard players operation #1 calcu_temp *= #2 num
scoreboard players remove #2 calcu_temp 1
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
scoreboard players operation #1 calcu_temp *= #-1 num

execute store result entity @e[tag=galaxy.bullet.get-distance,limit=1] Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp

execute as @e[tag=galaxy.bullet.get-distance] at @s run tp ^ ^ ^1

execute store result score #1 calcu_temp run data get entity @e[tag=galaxy.bullet.get-distance,limit=1] Pos[2] 100
execute store result score #2 calcu_temp run data get entity @e[tag=galaxy.bullet.get-distance,limit=1] Pos[0] 100

scoreboard players remove #1 calcu_temp 250
scoreboard players remove #2 calcu_temp 150
scoreboard players operation @s gunBulletArrZ = #1 calcu_temp
scoreboard players operation @s gunBulletArrXY = #2 calcu_temp

kill @e[tag=galaxy.bullet.get-distance]
