execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actFlashPathfinder"]}
data modify entity @e[tag=actFlashPathfinder,limit=1] Rotation set from entity @s Rotation

scoreboard players set @s ktnFlashMoved 0
scoreboard players operation @s ktnFlashMoveRem = @s ktnFlashDist
execute store result score #1 calcu_temp run scoreboard players operation @s ktnFlashMoveRem *= @s ktnFlashCrgeLvl
scoreboard players operation @s ktnFlashMoveRem /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s ktnFlashMoveRem 1
scoreboard players operation @s ktnFlashMoveRem *= #4 num

tag @s add galaxy.ktnFalshUser
execute as @e[tag=actFlashPathfinder] at @s run function galaxy:weapon/katana/action/flash/move
tag @s remove galaxy.ktnFalshUser

function galaxy:weapon/katana/action/swap_pull/consequence
