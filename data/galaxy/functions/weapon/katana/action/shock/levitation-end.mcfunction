effect clear @s levitation

execute store result score @s PosY2ActShock run data get entity @s Pos[1] 1
scoreboard players operation #calculation_temp1 numeric = @s PosY1ActShock
scoreboard players operation #calculation_temp1 numeric -= @s PosY2ActShock
scoreboard players operation #calculation_temp3 numeric = #calculation_temp1 numeric
scoreboard players set #calculation_temp2 numeric 3
scoreboard players operation #calculation_temp1 numeric -= #calculation_temp2 numeric
scoreboard players set #calculation_temp2 numeric 2
scoreboard players operation #calculation_temp1 numeric *= #calculation_temp2 numeric
execute if score #calculation_temp3 numeric matches 1.. run scoreboard players operation #calculation_temp1 numeric += #katana_act_shock_damage_base Config

# effects
execute if score #calculation_temp3 numeric matches 1.. run function galaxy:weapon/katana/action/shock/effects

#damage
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actShockDamageBox"]}
execute as @e[tag=actShockDamageBox] at @s run function galaxy:weapon/katana/action/shock/damage

tag @s remove wasActShock
