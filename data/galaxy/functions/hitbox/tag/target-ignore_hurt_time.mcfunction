execute if score #galaxy$target_hostile Config matches 1 if score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,distance=..4] add possibleEntity
execute if score #galaxy$target_hostile Config matches 1 unless score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,distance=..4] add possibleEntity
execute if score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,distance=..4] add possibleEntity
execute if score #galaxy$target_passive Config matches 1 run tag @e[type=#minecraft:passive,distance=..4] add possibleEntity
