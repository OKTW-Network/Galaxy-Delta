summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.wrenchAnchor","galaxy._tag.summonWrenchAnchor.init"]}
execute as @e[tag=galaxy._tag.summonWrenchAnchor.init] store result score @s galaxy.tool.wrench.block.posX run data get entity @s Pos[0]
execute as @e[tag=galaxy._tag.summonWrenchAnchor.init] store result score @s galaxy.tool.wrench.block.posY run data get entity @s Pos[1]
execute as @e[tag=galaxy._tag.summonWrenchAnchor.init] store result score @s galaxy.tool.wrench.block.posZ run data get entity @s Pos[2]
execute as @e[tag=galaxy._tag.summonWrenchAnchor.init] run function galaxy:tool/wrench/used_on_block/anchor/store_origin_block_states
execute as @e[tag=galaxy._tag.summonWrenchAnchor.init] run scoreboard players set @s galaxy.tool.wrench.rotateSuccess 0
tag @e[tag=galaxy._tag.summonWrenchAnchor.init] remove galaxy._tag.summonWrenchAnchor.init

tag @e[tag=galaxy._tag.ThisWrench] add galaxy._tag.wrenchFirstTimeUse
