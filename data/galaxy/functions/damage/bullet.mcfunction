execute as @e[tag=bulletDamage] run data modify entity @s HurtTime set value 10s
execute as @e[tag=bulletDamage] run function galaxy:damage/hurt_display
execute as @e[tag=bulletDamage] store result score @s health run data get entity @s Health
execute as @e[tag=bulletDamage] run scoreboard players operation @s health -= @e[tag=bullet,tag=flighting] bulletDamage
execute as @e[tag=bulletDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=bulletDamage,scores={health=..0}] run scoreboard players add @e[tag=bullet,tag=flighting,limit=1] sucBulletKill 1
execute as @e[tag=bulletDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
execute as @e[tag=bulletDamage,scores={health=1..}] run data modify entity @e[tag=bullet,tag=flighting,limit=1] data.entityDamaged append from entity @s UUID
tag @e[tag=bulletDamage] remove bulletDamage
