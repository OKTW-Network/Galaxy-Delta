execute store result score #1 calcu_temp run data get entity @s Rotation[1] 10
data modify entity @s Rotation[1] set value 0f
execute at @s run tp ^ ^ ^0.25
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #1 calcu_temp

function galaxy:hitbox/store-postition

scoreboard players set #1 calcu_temp 0
execute at @s if block ~ ~ ~ #global:passable if block ~ ~1 ~ #global:passable unless block ~ ~-1 ~ #global:passable run scoreboard players set #1 calcu_temp 1

execute if score #1 calcu_temp matches 1 at @s as @a[tag=galaxy._tag.ThisKatanaFlashUser] run tp ~ ~ ~
execute if score #1 calcu_temp matches 1 run scoreboard players add @a[tag=galaxy._tag.ThisKatanaFlashUser] galaxy.weapon.katana.action.flash.moved 25
execute if score #1 calcu_temp matches 1 run scoreboard players remove #katana.action.flash.recursiveLimit galaxy.weapon 1

execute unless score #katana.action.flash.recursiveLimit galaxy.weapon matches 1.. run tag @s add galaxy._STOP

execute unless score #1 calcu_temp matches 1 run tag @s add galaxy._STOP

execute if score #1 calcu_temp matches 1 at @s run function galaxy:hitbox/tag/action-flash

execute if entity @s[tag=galaxy._STOP] run function galaxy:damage/action-flash
execute unless entity @s run tag @s add galaxy._STOP
execute if entity @s[tag=galaxy._STOP] run kill @s

execute if entity @s[tag=!galaxy._STOP] at @s run function galaxy:weapon/katana/action/flash/move_and_damage
