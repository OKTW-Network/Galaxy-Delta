execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actFlashPathfinder"]}
data modify entity @e[tag=actFlashPathfinder,limit=1] Rotation set from entity @s Rotation

scoreboard players set @s ktnFlashMoved 0

execute if score #galaxy$katana_act_flash_charge Config matches 0 run function galaxy:weapon/katana/action/flash/calculate-move
execute if score #galaxy$katana_act_flash_charge Config matches 1 run function galaxy:weapon/katana/action/flash/calculate-move-charge

tag @s add galaxy.ktnFalshUser
execute as @e[tag=actFlashPathfinder] at @s run function galaxy:weapon/katana/action/flash/move
tag @s remove galaxy.ktnFalshUser

function galaxy:weapon/katana/action/swap_pull/consequence
