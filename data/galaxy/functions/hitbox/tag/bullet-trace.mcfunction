execute if score #target_hostile Config matches 1 if score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,nbt={HurtTime:0s},distance=..12] add bulletPossibleTrace
execute if score #target_hostile Config matches 1 unless score #target_neutral Config matches 1 run tag @e[type=#minecraft:hostile,type=!#minecraft:neutral,nbt={HurtTime:0s},distance=..12] add bulletPossibleTrace
execute if score #target_neutral Config matches 1 run tag @e[type=#minecraft:neutral,type=!#minecraft:hostile,nbt={HurtTime:0s},distance=..12] add bulletPossibleTrace
execute if score #target_passive Config matches 1 run tag @e[type=#minecraft:passive,nbt={HurtTime:0s},distance=..12] add bulletPossibleTrace

execute as @e[tag=bulletPossibleTrace,sort=nearest,limit=1] run function galaxy:hitbox/check/bullet-trace

tag @e[tag=bulletPossibleTrace] remove bulletPossibleTrace
