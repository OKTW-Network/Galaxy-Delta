scoreboard players set #calculation_temp2 numeric 10000
execute store result score #calculation_temp3 numeric run data get entity @s Item.tag.type
scoreboard players operation #calculation_temp2 numeric *= #calculation_temp3 numeric
scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
