execute as @e[tag=bulletDamage] run function galaxy:damage/hurt_display-hostile
# execute as @e[tag=bulletDamage] run function galaxy:damage/hurt_display-animal
execute as @e[tag=bulletDamage] store result score @s health run data get entity @s Health
execute as @e[tag=bulletDamage] run scoreboard players operation @s health -= #calculation_temp1 numeric
execute as @e[tag=bulletDamage] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=bulletDamage] remove bulletDamage
