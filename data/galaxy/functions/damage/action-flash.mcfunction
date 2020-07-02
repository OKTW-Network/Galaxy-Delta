execute as @e[tag=actFlashDamage] run data modify entity @s HurtTime set value 10s
execute as @e[tag=actFlashDamage] run function galaxy:damage/hurt_display
execute as @e[tag=actFlashDamage] store result score @s health run data get entity @s Health
execute as @e[tag=actFlashDamage] run scoreboard players operation @s health -= #katana_act_flash_damage Config
execute as @e[tag=actFlashDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=actFlashDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=actFlashDamage] remove actFlashDamage
