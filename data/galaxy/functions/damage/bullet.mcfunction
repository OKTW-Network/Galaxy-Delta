execute as @e[tag=bulletDamage] run function galaxy:damage/hurt_display
execute as @e[tag=bulletDamage] store result score @s health run data get entity @s Health
execute as @e[tag=bulletDamage] run scoreboard players operation @s health -= #calculation_temp1 numeric
execute as @e[tag=bulletDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=bulletDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=bulletDamage] remove bulletDamage
