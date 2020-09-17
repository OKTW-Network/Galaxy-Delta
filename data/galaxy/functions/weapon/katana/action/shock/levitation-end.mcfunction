effect clear @s levitation

execute store result score @s PosY2ActShock run data get entity @s Pos[1] 1
scoreboard players operation #1 calcu_temp = @s PosY1ActShock
scoreboard players operation #1 calcu_temp -= @s PosY2ActShock
scoreboard players operation #2 calcu_temp = #1 calcu_temp
scoreboard players remove #2 calcu_temp 3
scoreboard players operation #2 calcu_temp *= #katana_act_shock_damage_addition Config
execute if score #1 calcu_temp matches 1.. run scoreboard players operation #2 calcu_temp += #katana_act_shock_damage_base Config

# effects
execute if score #1 calcu_temp matches 1.. run function galaxy:weapon/katana/action/shock/effects

#damage
execute if score #1 calcu_temp matches 1.. run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actShockDamageBox"]}
execute if score #1 calcu_temp matches 1.. as @e[tag=actShockDamageBox] at @s run function galaxy:weapon/katana/action/shock/damage

tag @s remove wasActShock
