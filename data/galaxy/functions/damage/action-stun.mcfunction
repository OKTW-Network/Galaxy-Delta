execute store success score @a[tag=galaxy.ktnStunUser] ktnStunSuc if entity @e[tag=actStunDamage]
execute as @e[tag=actStunDamage] run data modify entity @s HurtTime set value 10s
execute as @e[tag=actStunDamage] run function galaxy:damage/hurt_display
execute as @e[tag=actStunDamage] store result score @s health run data get entity @s Health
execute as @e[tag=actStunDamage] run scoreboard players operation @s health -= @a[tag=galaxy.ktnStunUser] ktnStunDmg
execute as @e[tag=actStunDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=actStunDamage,scores={health=1..}] run function galaxy:status_effect/stun/set
execute as @e[tag=actStunDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=actStunDamage] remove actStunDamage
