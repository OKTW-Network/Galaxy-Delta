execute if score @s gunBulletArrange matches 1 store result score #1 calcu_temp run data get entity @s Rotation[0] 1000
execute if score @s gunBulletArrange matches 2 store result score #2 calcu_temp run data get entity @s Rotation[1] 1000
execute store result score #3 calcu_temp run scoreboard players get @e[tag=bullet,tag=init,limit=1] bulletOffset
execute store result score #4 calcu_temp store result score #5 calcu_temp store result score #6 calcu_temp run scoreboard players get @s gunBulletTotal

scoreboard players operation #3 calcu_temp *= #2 num
scoreboard players remove #4 calcu_temp 1
execute store result score #4 calcu_temp run scoreboard players operation #3 calcu_temp /= #4 calcu_temp
scoreboard players operation #5 calcu_temp %= #2 num
execute if score #5 calcu_temp matches 0 run scoreboard players operation #4 calcu_temp /= #2 num

scoreboard players operation #6 calcu_temp -= @s gunBulletSummon
execute store result score #7 calcu_temp run scoreboard players add #6 calcu_temp 1
execute if score #5 calcu_temp matches 0 store result score #7 calcu_temp run scoreboard players add #6 calcu_temp 1
scoreboard players operation #6 calcu_temp /= #2 num
scoreboard players operation #3 calcu_temp *= #6 calcu_temp
execute if score #5 calcu_temp matches 0 run scoreboard players operation #3 calcu_temp -= #4 calcu_temp
scoreboard players operation #7 calcu_temp %= #2 num
execute if score #7 calcu_temp matches 1 run scoreboard players operation #3 calcu_temp *= #-1 num

execute if score @s gunBulletArrange matches 1 store result entity @e[tag=bullet,tag=init,limit=1] Rotation[0] float 0.001 run scoreboard players operation #1 calcu_temp += #3 calcu_temp
execute if score @s gunBulletArrange matches 2 store result entity @e[tag=bullet,tag=init,limit=1] Rotation[1] float 0.001 run scoreboard players operation #2 calcu_temp += #3 calcu_temp

# tellraw @a [{"score":{"name":"#1","objective":"calcu_temp"}}," ",{"score":{"name":"#2","objective":"calcu_temp"}}]
