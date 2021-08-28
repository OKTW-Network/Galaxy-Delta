execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actFlashPathfinder"]}
data modify entity @e[tag=actFlashPathfinder,limit=1] Rotation set from entity @s Rotation

scoreboard players set @s ktnFlashMoved 0

function galaxy:weapon/katana/action/flash/calculate-move

tag @s add galaxy.ktnFalshUser
execute as @e[tag=actFlashPathfinder] at @s run function galaxy:weapon/katana/action/flash/move
tag @s remove galaxy.ktnFalshUser

function galaxy:weapon/katana/action/swap_pull/consequence
