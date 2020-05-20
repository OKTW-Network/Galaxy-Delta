scoreboard players set #calculation_temp1 numeric 0
scoreboard players set #calculation_temp2 numeric 0
scoreboard players set #calculation_temp3 numeric 0
scoreboard players set #calculation_temp4 numeric 0

execute if score #target_hostile Config matches 1 if score #target_neutral Config matches 1 store success score #calculation_temp1 numeric run tag @e[type=#minecraft:hostile,distance=..0.75] add actStunDamage
execute if score #target_hostile Config matches 1 unless score #target_neutral Config matches 1 store success score #calculation_temp2 numeric run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,distance=..0.75] add actStunDamage
execute if score #target_neutral Config matches 1 store success score #calculation_temp3 numeric run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,distance=..0.75] add actStunDamage
execute if score #target_passive Config matches 1 store success score #calculation_temp4 numeric run tag @e[type=#minecraft:passive,distance=..0.75] add actStunDamage

scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
scoreboard players operation #calculation_temp1 numeric += #calculation_temp4 numeric

execute as @e[tag=actStunDamage] run function galaxy:damage/action-stun
