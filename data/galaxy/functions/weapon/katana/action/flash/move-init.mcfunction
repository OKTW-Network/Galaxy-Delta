summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actFlashPathfinder"]}
execute store result entity @e[tag=actFlashPathfinder,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=actFlashPathfinder,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]

execute as @e[tag=actFlashPathfinder] at @s run function galaxy:weapon/katana/action/flash/move
