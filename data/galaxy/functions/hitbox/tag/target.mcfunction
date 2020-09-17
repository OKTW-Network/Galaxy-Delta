execute if score #target_hostile Config matches 1 if score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,nbt={HurtTime:0s},distance=..4] add possibleEntity
execute if score #target_hostile Config matches 1 unless score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,nbt={HurtTime:0s},distance=..4] add possibleEntity
execute if score #target_neutral Config matches 1 run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,nbt={HurtTime:0s},distance=..4] add possibleEntity
execute if score #target_passive Config matches 1 run tag @e[type=#minecraft:passive,nbt={HurtTime:0s},distance=..4] add possibleEntity
