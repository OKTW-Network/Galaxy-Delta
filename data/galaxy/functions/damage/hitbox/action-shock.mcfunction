function math:calcu_temp/store_to_1

function cu:library/hitbox/main
execute store success score #1 calcu_temp if score @s hitboxX1 >= @e[tag=actShockDamageBox,limit=1] hitboxX1 if score @s hitboxX1 <= @e[tag=actShockDamageBox,limit=1] hitboxX2
execute store success score #1 calcu_temp if score @s hitboxX2 <= @e[tag=actShockDamageBox,limit=1] hitboxX2 if score @s hitboxX2 >= @e[tag=actShockDamageBox,limit=1] hitboxX1
execute store success score #1 calcu_temp if score @s hitboxZ1 >= @e[tag=actShockDamageBox,limit=1] hitboxZ1 if score @s hitboxZ1 <= @e[tag=actShockDamageBox,limit=1] hitboxZ2
execute store success score #1 calcu_temp if score @s hitboxZ2 <= @e[tag=actShockDamageBox,limit=1] hitboxZ2 if score @s hitboxZ2 >= @e[tag=actShockDamageBox,limit=1] hitboxZ1
execute store success score #2 calcu_temp if score @s hitboxY1 >= @e[tag=actShockDamageBox,limit=1] hitboxY1 if score @s hitboxY1 <= @e[tag=actShockDamageBox,limit=1] hitboxY2
execute store success score #2 calcu_temp if score @s hitboxY2 <= @e[tag=actShockDamageBox,limit=1] hitboxY2 if score @s hitboxY2 >= @e[tag=actShockDamageBox,limit=1] hitboxY1
execute if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 1 run tag @s add actShockDamage

tag @s remove actShockPossibleVictim

function math:calcu_temp/extract_from_1
