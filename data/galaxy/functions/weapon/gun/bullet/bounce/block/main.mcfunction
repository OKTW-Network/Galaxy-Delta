execute store result score @s rotation0 run data get entity @s Rotation[0] 1000
execute store result score @s rotation1 run data get entity @s Rotation[1] 1000

tp @s ^ ^ ^-0.5
execute at @s run function galaxy:weapon/gun/bullet/bounce/block/move_slowly

execute store result score #1 calcu_temp run data get entity @s Pos[0] 1
execute store result score #2 calcu_temp run data get entity @s Pos[1] 1
execute store result score #3 calcu_temp run data get entity @s Pos[2] 1
execute store result score #4 calcu_temp run data get storage galaxy:temp position[0] 1
execute store result score #5 calcu_temp run data get storage galaxy:temp position[1] 1
execute store result score #6 calcu_temp run data get storage galaxy:temp position[2] 1

scoreboard players set #7 calcu_temp -1
execute if score #1 calcu_temp = #4 calcu_temp if score #2 calcu_temp = #5 calcu_temp if score #3 calcu_temp > #6 calcu_temp run scoreboard players set #7 calcu_temp 0
execute if score #1 calcu_temp > #4 calcu_temp if score #2 calcu_temp = #5 calcu_temp if score #3 calcu_temp = #6 calcu_temp run scoreboard players set #7 calcu_temp 1
execute if score #1 calcu_temp = #4 calcu_temp if score #2 calcu_temp = #5 calcu_temp if score #3 calcu_temp < #6 calcu_temp run scoreboard players set #7 calcu_temp 2
execute if score #1 calcu_temp < #4 calcu_temp if score #2 calcu_temp = #5 calcu_temp if score #3 calcu_temp = #6 calcu_temp run scoreboard players set #7 calcu_temp 3
execute if score #1 calcu_temp = #4 calcu_temp if score #2 calcu_temp < #5 calcu_temp if score #3 calcu_temp = #6 calcu_temp run scoreboard players set #7 calcu_temp 4
execute if score #1 calcu_temp = #4 calcu_temp if score #2 calcu_temp > #5 calcu_temp if score #3 calcu_temp = #6 calcu_temp run scoreboard players set #7 calcu_temp 5

execute if score #7 calcu_temp matches 0..3 unless score #7 calcu_temp matches 0 unless score #7 calcu_temp matches 2 run scoreboard players operation @s rotation0 *= #-1 num
execute if score #7 calcu_temp matches 0 run scoreboard players remove @s rotation0 180000
execute if score #7 calcu_temp matches 0 if score @s rotation0 matches ..-1 run scoreboard players operation @s rotation0 *= #-1 num
execute if score #7 calcu_temp matches 2 run scoreboard players add @s rotation0 180000
execute if score #7 calcu_temp matches 2 if score @s rotation0 matches 1.. run scoreboard players operation @s rotation0 *= #-1 num
execute if score #7 calcu_temp matches 4..5 run scoreboard players operation @s rotation1 *= #-1 num

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s rotation0
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get @s rotation1

execute unless score #7 calcu_temp matches -1 run scoreboard players set @s sucBulletMove -1

scoreboard players operation @s bulletWeaken = @s bulletBounce
execute if score @s bulletWeaken matches 1..99 run function galaxy:weapon/gun/bullet/weaken
