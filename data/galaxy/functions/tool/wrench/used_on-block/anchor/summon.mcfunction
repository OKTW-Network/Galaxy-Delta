summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WrenchAnchor","init"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute as @e[tag=WrenchAnchor,tag=init] store result score @s posX run data get entity @s Pos[0]
execute as @e[tag=WrenchAnchor,tag=init] store result score @s posY run data get entity @s Pos[1]
execute as @e[tag=WrenchAnchor,tag=init] store result score @s posZ run data get entity @s Pos[2]
execute as @e[tag=WrenchAnchor,tag=init] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states
execute as @e[tag=WrenchAnchor,tag=init] run scoreboard players set @s sucWrenchRotate 0
tag @e[tag=WrenchAnchor,tag=init] remove init
