execute as @e[tag=actShockDamage] run function galaxy:damage/hurt_display
execute as @e[tag=actShockDamage] store result score @s health run data get entity @s Health
execute as @e[tag=actShockDamage] run scoreboard players operation @s health -= #calculation_temp1 numeric
execute as @e[tag=actShockDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=actShockDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=actShockDamage] remove actShockDamage
