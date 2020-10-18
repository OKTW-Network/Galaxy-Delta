summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["overlapCheck"],Particle:"block air",Radius:0.5f,WaitTime:2147483647}
execute as @e[tag=overlapCheck] run function galaxy:hitbox/store-hitbox
scoreboard players remove @e[tag=overlapCheck] hitboxX1 5
scoreboard players add @e[tag=overlapCheck] hitboxX2 5
scoreboard players remove @e[tag=overlapCheck] hitboxZ1 5
scoreboard players add @e[tag=overlapCheck] hitboxZ2 5
scoreboard players add @e[tag=overlapCheck] hitboxY2 10

execute as @e[tag=overlapCheck] at @s run function galaxy:hitbox/tag/overlap

execute if entity @e[tag=overlapped] run tag @s add placeFailed

tag @e[tag=overlapped] remove overlapped

kill @e[tag=overlapCheck]
