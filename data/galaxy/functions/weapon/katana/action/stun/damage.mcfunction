execute at @s run tp ^ ^ ^0.25

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

execute if score #katana_act_stun_damage Config matches 1.. at @s run function galaxy:hitbox/tag/action-stun

scoreboard players remove #1 calcu_temp 1

execute unless score #1 calcu_temp matches 1.. run tag @s add pathfindEnd

execute if entity @s[tag=pathfindEnd] run function galaxy:damage/action-stun
execute if entity @s[tag=pathfindEnd] run kill @s

execute if entity @s[tag=!pathfindEnd] at @s run function galaxy:weapon/katana/action/stun/damage
