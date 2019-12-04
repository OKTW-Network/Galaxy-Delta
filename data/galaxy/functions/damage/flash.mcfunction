tag @e[type=#galaxy:hostile,distance=..0.25] add initFlashDamage
# tag @e[type=#galaxy:hostile,type=#galaxy:neutral,distance=..0.25] add initFlashDamage
# tag @e[type=#galaxy:animal,type=#galaxy:neutral,distance=..0.25] add initFlashDamage
# tag @e[type=#galaxy:animal,type=#galaxy:peaceful,distance=..0.25] add initFlashDamage
execute as @e[tag=initFlashDamage] run function galaxy:damage/hurt_display-hostile
execute as @e[tag=initFlashDamage] store result score @s health run data get entity @s Health
execute as @e[tag=initFlashDamage] run scoreboard players operation @s health -= #katana_act_flash_damage Config
execute as @e[tag=initFlashDamage] store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=initFlashDamage] remove initFlashDamage
