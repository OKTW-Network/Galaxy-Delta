data modify storage galaxy:temp +entity.summon.rotation set value [0.0f,0.0f]
data modify storage galaxy:temp +entity.summon.reversedRotation set value [0.0f,0.0f]
execute store result storage galaxy:temp +entity.summon.rotation[0] float 1 store result score #1 calcu_temp run data get entity @s Rotation[0] 1
execute store result storage galaxy:temp +entity.summon.reversedRotation[0] float 1 run scoreboard players add #1 calcu_temp 180
