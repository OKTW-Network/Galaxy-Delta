tag @s add processing

scoreboard players set #calculation_temp1 numeric 0
execute unless block ~1 ~ ~ #minecraft:unattachable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~ ~ ~1 #minecraft:unattachable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~-1 ~ ~ #minecraft:unattachable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~ ~ ~-1 #minecraft:unattachable run scoreboard players add #calculation_temp1 numeric 1
execute if score #calculation_temp1 numeric matches 0 run function galaxy:block/functional/summon/katana_display_stand-4

execute if score #calculation_temp1 numeric matches 1.. store result score @s rotation0 run data get entity @s Rotation[0]
execute if score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 0
execute if score #calculation_temp1 numeric matches 1.. store success score #calculation_temp2 numeric unless block ~1 ~ ~ #minecraft:unattachable if score @s rotation0 matches 90
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #minecraft:unattachable if score @s rotation0 matches -180..-135
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #minecraft:unattachable if score @s rotation0 matches 135..180
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~-1 ~ ~ #minecraft:unattachable if score @s rotation0 matches -90
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value -90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #minecraft:unattachable if score @s rotation0 matches 0..45
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #minecraft:unattachable if score @s rotation0 matches -45..0
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1

execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~1 ~ ~ #minecraft:unattachable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #minecraft:unattachable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~-1 ~ ~ #minecraft:unattachable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value -90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #minecraft:unattachable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @s[tag=processing] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1

data modify entity @s Pose set value [0.0f,0.0f,0.0f]
execute as @e[tag=processing] at @s run tp @s ^ ^ ^-0.37
tag @s[tag=processing] remove katana_display_stand_placer
tag @s[tag=processing] remove functional_placer
tag @s add katana_display_stand

tag @s remove processing
