summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["overlapCheck"],Particle:"block air",Radius:0.5f,WaitTime:2147483647}
execute as @e[tag=overlapCheck] run function galaxy:hitbox/store-hitbox
scoreboard players remove @e[tag=overlapCheck] hitboxXMax 5
scoreboard players add @e[tag=overlapCheck] hitboxXMin 5
scoreboard players remove @e[tag=overlapCheck] hitboxZMax 5
scoreboard players add @e[tag=overlapCheck] hitboxZMin 5
scoreboard players add @e[tag=overlapCheck] hitboxYMax 10

execute as @e[tag=overlapCheck] at @s run function galaxy:hitbox/tag/overlap

execute if entity @e[tag=overlapped] run tag @s add placeFailed

tag @e[tag=overlapped] remove overlapped

kill @e[tag=overlapCheck]
