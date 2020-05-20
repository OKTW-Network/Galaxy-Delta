execute as @e[tag=actStunDamage] run function galaxy:damage/hurt_display
execute as @e[tag=actStunDamage] store result score @s health run data get entity @s Health
execute as @e[tag=actStunDamage] run scoreboard players operation @s health -= #katana_act_stun_damage Config
execute as @e[tag=actStunDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=actStunDamage,scores={health=1..}] run function galaxy:status_effect/stun/set
execute as @e[tag=actStunDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=actStunDamage] remove actStunDamage
