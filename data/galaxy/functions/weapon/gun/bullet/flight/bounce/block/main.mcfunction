function galaxy:weapon/gun/bullet/flight/bounce/block/move_slowly

execute store result score #1 calcu_temp run data get entity @s Rotation[0] 1000
execute store result score #2 calcu_temp run data get entity @s Rotation[1] 1000

execute if score #gun.bullet.flight.hitDirection galaxy matches 1..2 run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #gun.bullet.flight.hitDirection galaxy matches 8 run scoreboard players remove #1 calcu_temp 180000
execute if score #gun.bullet.flight.hitDirection galaxy matches 8 if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #gun.bullet.flight.hitDirection galaxy matches 4 run scoreboard players add #1 calcu_temp 180000
execute if score #gun.bullet.flight.hitDirection galaxy matches 4 if score #1 calcu_temp matches 1.. run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #gun.bullet.flight.hitDirection galaxy matches 100..200 run scoreboard players operation #2 calcu_temp *= #-1 num

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #1 calcu_temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #2 calcu_temp

execute unless score #gun.bullet.flight.hitDirection galaxy matches 0 run tag @s add galaxy._tag.ignoreHitBlock

scoreboard players operation #gun.bullet.weaken galaxy = @s galaxy.projectile.bounce
execute if score #gun.bullet.weaken galaxy matches 1..99 run function galaxy:weapon/gun/bullet/weaken
