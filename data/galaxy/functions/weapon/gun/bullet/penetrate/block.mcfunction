execute store result score #1 calcu_temp run data get entity @s Pos[0] 1
execute store result score #2 calcu_temp run data get entity @s Pos[1] 1
execute store result score #3 calcu_temp run data get entity @s Pos[2] 1

scoreboard players set #4 calcu_temp 0
execute unless score @s bulletPntBlockX = #1 calcu_temp run scoreboard players set #4 calcu_temp 1
execute unless score @s bulletPntBlockY = #2 calcu_temp run scoreboard players set #4 calcu_temp 1
execute unless score @s bulletPntBlockZ = #3 calcu_temp run scoreboard players set #4 calcu_temp 1
execute if score #4 calcu_temp matches 1 run scoreboard players operation @s bulletPntBlockX = #1 calcu_temp
execute if score #4 calcu_temp matches 1 run scoreboard players operation @s bulletPntBlockY = #2 calcu_temp
execute if score #4 calcu_temp matches 1 run scoreboard players operation @s bulletPntBlockZ = #3 calcu_temp
scoreboard players operation @s bulletWeaken = @s bulletPenetrate
scoreboard players operation @s bulletWeaken /= #2 num
execute if score #4 calcu_temp matches 1 if score @s bulletWeaken matches 1..99 run function galaxy:weapon/gun/bullet/weaken

scoreboard players set @s sucBulletMove -1
