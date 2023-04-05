data modify storage galaxy:temp +entity.summon.reversedRotation set value [0.0f,0.0f]
data modify storage galaxy:temp +entity.summon.rotation set value [0.0f,0.0f]
execute store result score #1 calcu_temp run data get entity @a[tag=galaxy._tag.ThisPlaceEntity,limit=1] Rotation[0] 1000
scoreboard players add #1 calcu_temp 11250
execute if score #1 calcu_temp matches ..-1 run scoreboard players add #1 calcu_temp 360000
scoreboard players set #2 calcu_temp 22500
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
execute if score #1 calcu_temp matches 16.. run scoreboard players remove #1 calcu_temp 16
scoreboard players operation #2 calcu_temp *= #1 calcu_temp
execute store result storage galaxy:temp +entity.summon.reversedRotation[0] float 0.001 run scoreboard players get #2 calcu_temp
execute store result storage galaxy:temp +entity.summon.rotation[0] float 0.001 run scoreboard players add #2 calcu_temp 180000
