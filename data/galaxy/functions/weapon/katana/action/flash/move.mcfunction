# summon
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder"]}
execute store result entity @e[tag=flashPathfinder,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=flashPathfinder,limit=1] at @s run tp ^ ^ ^0.5
execute store result entity @e[tag=flashPathfinder,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]

# detection
scoreboard players set @s sucActFlash 0
execute store success score @s sucActFlash at @e[tag=flashPathfinder] run execute if block ~ ~ ~ #galaxy:passable
execute if score @s sucActFlash matches 1 store success score @s sucActFlash at @e[tag=flashPathfinder] run execute if block ~ ~1 ~ #galaxy:passable
execute if score @s sucActFlash matches 1 store success score @s sucActFlash at @e[tag=flashPathfinder] run execute unless block ~ ~-1 ~ #galaxy:passable

# success action
execute if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,limit=1]
execute if score @s sucActFlash matches 1 run scoreboard players add @s disActFlash 5
execute if score @s sucActFlash matches 1 run scoreboard players remove @s lmtActFlash 1

# damage
execute as @e[tag=flashPathfinder] at @s if score #katana_act_flash_damage Config matches 1.. run function galaxy:damage/flash

kill @e[tag=flashPathfinder]

# recursive
execute at @s if score @s lmtActFlash matches 1.. if score @s sucActFlash matches 1 run function galaxy:weapon/katana/action/flash/move
