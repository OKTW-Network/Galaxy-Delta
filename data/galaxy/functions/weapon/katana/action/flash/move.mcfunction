execute store result score #1 calcu_temp run data get entity @s Rotation[1] 10
data modify entity @s Rotation[1] set value 0f
execute at @s run tp ^ ^ ^0.25
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #1 calcu_temp

function galaxy:hitbox/store-postition

scoreboard players set #1 calcu_temp 0
execute at @s if block ~ ~ ~ #global:passable if block ~ ~1 ~ #global:passable unless block ~ ~-1 ~ #global:passable run scoreboard players set #1 calcu_temp 1

execute if score #1 calcu_temp matches 1 at @s as @a[tag=galaxy.ktnFalshUser] run tp ~ ~ ~
execute if score #1 calcu_temp matches 1 run scoreboard players add @a[tag=galaxy.ktnFalshUser] ktnFlashMoved 25
execute if score #1 calcu_temp matches 1 run scoreboard players remove @a[tag=galaxy.ktnFalshUser] ktnFlashMoveRem 1

execute unless score @a[tag=galaxy.ktnFalshUser,limit=1] ktnFlashMoveRem matches 1.. run tag @s add pathfindEnd

execute unless score #1 calcu_temp matches 1 run tag @s add pathfindEnd

execute if score #1 calcu_temp matches 1 at @s run function galaxy:hitbox/tag/action-flash

execute if entity @s[tag=pathfindEnd] run function galaxy:damage/action-flash
execute if entity @s[tag=pathfindEnd] as @a[tag=galaxy.ktnFalshUser] run function galaxy:weapon/katana/action/flash/cooldown
execute if entity @s[tag=pathfindEnd] run kill @s

execute if entity @s[tag=!pathfindEnd] at @s run function galaxy:weapon/katana/action/flash/move
