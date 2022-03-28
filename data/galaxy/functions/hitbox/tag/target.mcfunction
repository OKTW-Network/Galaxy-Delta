execute if score #galaxy$target_hostile Config matches 1 if score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,nbt={HurtTime:0s},distance=..4] add galaxy._tag.hitboxPossibleEntity
execute if score #galaxy$target_hostile Config matches 1 unless score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,nbt={HurtTime:0s},distance=..4] add galaxy._tag.hitboxPossibleEntity
execute if score #galaxy$target_neutral Config matches 1 run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,nbt={HurtTime:0s},distance=..4] add galaxy._tag.hitboxPossibleEntity
execute if score #galaxy$target_passive Config matches 1 run tag @e[type=#minecraft:passive,nbt={HurtTime:0s},distance=..4] add galaxy._tag.hitboxPossibleEntity
