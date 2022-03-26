summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.wrenchAnchor","init"]}
execute as @e[tag=galaxy.dummy.wrenchAnchor,tag=init] store result score @s posX run data get entity @s Pos[0]
execute as @e[tag=galaxy.dummy.wrenchAnchor,tag=init] store result score @s posY run data get entity @s Pos[1]
execute as @e[tag=galaxy.dummy.wrenchAnchor,tag=init] store result score @s posZ run data get entity @s Pos[2]
execute as @e[tag=galaxy.dummy.wrenchAnchor,tag=init] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states
execute as @e[tag=galaxy.dummy.wrenchAnchor,tag=init] run scoreboard players set @s galaxy.tool.wrench.rotateSuccess 0
tag @e[tag=galaxy.dummy.wrenchAnchor,tag=init] remove init
