execute if score #target_hostile Config matches 1 if score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,distance=..4] add actShockPossibleVictim
execute if score #target_hostile Config matches 1 unless score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,distance=..4] add actShockPossibleVictim
execute if score #target_neutral Config matches 1 run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,distance=..4] add actShockPossibleVictim
execute if score #target_passive Config matches 1 run tag @e[type=#minecraft:passive,distance=..4] add actShockPossibleVictim

execute as @e[tag=actShockPossibleVictim] run function galaxy:damage/hitbox/action-shock
