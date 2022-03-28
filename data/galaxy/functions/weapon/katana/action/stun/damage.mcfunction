execute at @s run tp ^ ^ ^0.25

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

execute if score @s galaxy.weapon.katana.action.stun.damage matches 1.. at @s run function galaxy:hitbox/tag/action-stun

scoreboard players remove #katana.action.stun.recursiveLimit galaxy.weapon 1

execute unless score #katana.action.stun.recursiveLimit galaxy.weapon matches 1.. run tag @s add galaxy._STOP

execute if entity @s[tag=galaxy._STOP] run function galaxy:damage/action-stun
execute unless entity @s run tag @s add galaxy._STOP
execute if entity @s[tag=galaxy._STOP] run kill @s

execute if entity @s[tag=!galaxy._STOP] at @s run function galaxy:weapon/katana/action/stun/damage
