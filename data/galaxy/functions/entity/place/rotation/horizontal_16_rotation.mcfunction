data modify storage galaxy:temp +entity.summon.reversedRotation set value [0.0f,0.0f]
data modify storage galaxy:temp +entity.summon.rotation set value [0.0f,0.0f]
execute store result score #1 temp run data get entity @a[tag=galaxy._tag.ThisPlaceEntity,limit=1] Rotation[0] 1000
scoreboard players add #1 temp 11250
execute if score #1 temp matches ..-1 run scoreboard players add #1 temp 360000
scoreboard players set #2 temp 22500
scoreboard players operation #1 temp /= #2 temp
execute if score #1 temp matches 16.. run scoreboard players remove #1 temp 16
scoreboard players operation #2 temp *= #1 temp
execute store result storage galaxy:temp +entity.summon.reversedRotation[0] float 0.001 run scoreboard players get #2 temp
execute store result storage galaxy:temp +entity.summon.rotation[0] float 0.001 run scoreboard players add #2 temp 180000
