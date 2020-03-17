function cu:library/hitbox
execute store success score #calculation_temp1 numeric if score @s hitboxX1 >= @e[tag=actShockDamageBox,limit=1] hitboxX1 if score @s hitboxX1 <= @e[tag=actShockDamageBox,limit=1] hitboxX2
execute store success score #calculation_temp1 numeric if score @s hitboxX2 <= @e[tag=actShockDamageBox,limit=1] hitboxX2 if score @s hitboxX2 >= @e[tag=actShockDamageBox,limit=1] hitboxX1
execute store success score #calculation_temp1 numeric if score @s hitboxZ1 >= @e[tag=actShockDamageBox,limit=1] hitboxZ1 if score @s hitboxZ1 <= @e[tag=actShockDamageBox,limit=1] hitboxZ2
execute store success score #calculation_temp1 numeric if score @s hitboxZ2 <= @e[tag=actShockDamageBox,limit=1] hitboxZ2 if score @s hitboxZ2 >= @e[tag=actShockDamageBox,limit=1] hitboxZ1
execute store success score #calculation_temp2 numeric if score @s hitboxY1 >= @e[tag=actShockDamageBox,limit=1] hitboxY1 if score @s hitboxY1 <= @e[tag=actShockDamageBox,limit=1] hitboxY2
execute store success score #calculation_temp2 numeric if score @s hitboxY2 <= @e[tag=actShockDamageBox,limit=1] hitboxY2 if score @s hitboxY2 >= @e[tag=actShockDamageBox,limit=1] hitboxY1
execute if score #calculation_temp1 numeric matches 1 if score #calculation_temp2 numeric matches 1 run tag @s add actShockDamage

tag @s remove actShockPossibleVictim
