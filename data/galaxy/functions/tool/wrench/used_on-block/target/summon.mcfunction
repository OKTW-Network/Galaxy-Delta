summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["galaxy._tag.ThisWrenchTarget"],Particle:"block air",Radius:0.25f,WaitTime:2147483647}
execute as @e[tag=galaxy._tag.ThisWrenchTarget] store result score @s posX run data get entity @s Pos[0]
execute as @e[tag=galaxy._tag.ThisWrenchTarget] store result score @s posY run data get entity @s Pos[1]
execute as @e[tag=galaxy._tag.ThisWrenchTarget] store result score @s posZ run data get entity @s Pos[2]
