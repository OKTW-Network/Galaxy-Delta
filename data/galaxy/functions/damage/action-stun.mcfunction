execute if entity @e[tag=galaxy._tag.katanaActionStunDamage] run tag @a[tag=galaxy._tag.ThisKatanaStunUser] add galaxy.success.katana.action.stun
execute as @e[tag=galaxy._tag.katanaActionStunDamage] run data modify entity @s HurtTime set value 10s
execute as @e[tag=galaxy._tag.katanaActionStunDamage] run function galaxy:damage/hurt_display
execute as @e[tag=galaxy._tag.katanaActionStunDamage] store result score @s health run data get entity @s Health
execute as @e[tag=galaxy._tag.katanaActionStunDamage] run scoreboard players operation @s health -= @a[tag=galaxy._tag.ThisKatanaStunUser] galaxy.weapon.katana.action.stun.damage
execute as @e[tag=galaxy._tag.katanaActionStunDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=galaxy._tag.katanaActionStunDamage,scores={health=1..}] run scoreboard players operation #stun_durtion galaxy.status_effect = @a[tag=galaxy._tag.ThisKatanaStunUser,limit=1] galaxy.weapon.katana.action.stun.duration
execute as @e[tag=galaxy._tag.katanaActionStunDamage,scores={health=1..}] run function galaxy:status_effect/stun/set
execute as @e[tag=galaxy._tag.katanaActionStunDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=galaxy._tag.katanaActionStunDamage] remove galaxy._tag.katanaActionStunDamage
