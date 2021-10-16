execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletGetDistance"]}

execute store result score #1 calcu_temp run scoreboard players get @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute store result score #2 calcu_temp run scoreboard players get @s gunBulletTotal

scoreboard players operation #1 calcu_temp *= #2 num
scoreboard players remove #2 calcu_temp 1
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
scoreboard players operation #1 calcu_temp *= #-1 num

execute store result entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp

execute as @e[tag=galaxy.dummy.bulletGetDistance] at @s run tp ^ ^ ^1

execute store result score #1 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[0] 100
execute store result score #2 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[2] 100

execute store result score @s gunBulletArrXY run scoreboard players remove #1 calcu_temp 150
execute store result score @s gunBulletArrZ run scoreboard players remove #2 calcu_temp 250

kill @e[tag=galaxy.dummy.bulletGetDistance]
