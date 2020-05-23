execute store result score #calculation_temp1 numeric run scoreboard players get @s bulletSpeed
scoreboard players operation #calculation_temp1 numeric *= #static_4 numeric
execute store result score @s bulletMoveRem run scoreboard players get #calculation_temp1 numeric
execute at @s run function galaxy:weapon/gun/bullet/flight
