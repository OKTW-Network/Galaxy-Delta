scoreboard players set #calculation_temp2 numeric 10000
execute store result score #calculation_temp3 numeric run scoreboard players get @s statusBlockDisp
scoreboard players operation #calculation_temp2 numeric *= @s styleKatana
scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
scoreboard players operation #calculation_temp3 numeric -= #static_1 numeric
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
