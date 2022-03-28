execute as @e[tag=galaxy._tag.katanaActionFlashDamage] run data modify entity @s HurtTime set value 10s
execute as @e[tag=galaxy._tag.katanaActionFlashDamage] run function galaxy:damage/hurt_display
execute as @e[tag=galaxy._tag.katanaActionFlashDamage] store result score @s health run data get entity @s Health
execute as @e[tag=galaxy._tag.katanaActionFlashDamage] run scoreboard players operation @s health -= @a[tag=galaxy._tag.ThisKatanaFlashUser] galaxy.weapon.katana.action.flash.damage
execute as @e[tag=galaxy._tag.katanaActionFlashDamage,scores={health=..0}] at @s run function galaxy:damage/custom_death
execute as @e[tag=galaxy._tag.katanaActionFlashDamage,scores={health=1..}] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=galaxy._tag.katanaActionFlashDamage] remove galaxy._tag.katanaActionFlashDamage
