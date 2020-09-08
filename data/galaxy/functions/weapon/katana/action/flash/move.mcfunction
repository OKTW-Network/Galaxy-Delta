execute store result score #calculation_temp10 numeric run data get entity @s Rotation[1] 10
data modify entity @s Rotation[1] set value 0f
execute at @s run tp ^ ^ ^0.25
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #calculation_temp10 numeric

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

# detection
scoreboard players set #3 calcu_temp 0
execute at @s store success score #3 calcu_temp if block ~ ~ ~ #minecraft:passable
execute if score #3 calcu_temp matches 1 at @s store success score #3 calcu_temp if block ~ ~1 ~ #minecraft:passable
execute if score #3 calcu_temp matches 1 at @s store success score #3 calcu_temp unless block ~ ~-1 ~ #minecraft:passable

# if success
execute if score #3 calcu_temp matches 1 at @s run tp @e[tag=actFalshMove] @s
execute if score #3 calcu_temp matches 1 run scoreboard players add @e[tag=actFalshMove] disActFlash 25
execute if score #3 calcu_temp matches 1 run scoreboard players remove #2 calcu_temp 1

# damage
execute if score #3 calcu_temp matches 1 if score #katana_act_flash_damage Config matches 1.. at @s run function galaxy:damage/tag/action-flash

execute unless score #2 calcu_temp matches 1.. run tag @s add pathfindEnd
execute unless score #3 calcu_temp matches 1 run tag @s add pathfindEnd

execute if entity @s[tag=pathfindEnd] run function galaxy:damage/action-flash
execute if entity @s[tag=pathfindEnd] run kill @s

# recursive
execute if entity @s[tag=!pathfindEnd] at @s run function galaxy:weapon/katana/action/flash/move
