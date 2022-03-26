summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.overlapCheck"]}
execute as @e[tag=galaxy.dummy.overlapCheck] run function galaxy:hitbox/store-hitbox
scoreboard players remove @e[tag=galaxy.dummy.overlapCheck] hitboxXMax 5
scoreboard players add @e[tag=galaxy.dummy.overlapCheck] hitboxXMin 5
scoreboard players remove @e[tag=galaxy.dummy.overlapCheck] hitboxZMax 5
scoreboard players add @e[tag=galaxy.dummy.overlapCheck] hitboxZMin 5
scoreboard players add @e[tag=galaxy.dummy.overlapCheck] hitboxYMax 10

execute as @e[tag=galaxy.dummy.overlapCheck] at @s run function galaxy:hitbox/tag/overlap

execute if entity @e[tag=galaxy._tag.overlapped] run tag @s add galaxy._tag.placeFailed

tag @e[tag=galaxy._tag.overlapped] remove galaxy._tag.overlapped

kill @e[tag=galaxy.dummy.overlapCheck]
