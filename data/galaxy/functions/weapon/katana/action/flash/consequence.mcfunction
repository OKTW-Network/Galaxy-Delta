summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actFlashPathfinder"]}
execute store result entity @e[tag=actFlashPathfinder,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=actFlashPathfinder,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]

scoreboard players set @s actFlashDist 0
scoreboard players operation @s actFlashMoveRem = #katana_act_flash_distance_limit Config
scoreboard players operation @s actFlashMoveRem *= #4 num
tag @s add actFalshMove

execute as @e[tag=actFlashPathfinder] at @s run function galaxy:weapon/katana/action/flash/move

tag @s remove actFalshMove

function galaxy:weapon/katana/action/swap_put/consequence


