execute store result score @s galaxy.tool.wrench.block.posX run data get entity @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] Pos[0]
execute store result score @s galaxy.tool.wrench.block.posY run data get entity @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] Pos[1]
execute store result score @s galaxy.tool.wrench.block.posZ run data get entity @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] Pos[2]

scoreboard players set @s galaxy.tool.wrench.block.axis -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/axis-x run scoreboard players set @s galaxy.tool.wrench.block.axis 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/axis-y run scoreboard players set @s galaxy.tool.wrench.block.axis 1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/axis-z run scoreboard players set @s galaxy.tool.wrench.block.axis 2

scoreboard players set @s galaxy.tool.wrench.block.facing -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-south run scoreboard players set @s galaxy.tool.wrench.block.facing 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-west run scoreboard players set @s galaxy.tool.wrench.block.facing 1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-north run scoreboard players set @s galaxy.tool.wrench.block.facing 2
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-east run scoreboard players set @s galaxy.tool.wrench.block.facing 3
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-down run scoreboard players set @s galaxy.tool.wrench.block.facing 4
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/facing-up run scoreboard players set @s galaxy.tool.wrench.block.facing 5

scoreboard players set @s galaxy.tool.wrench.block.attachment -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/attachment-floor run scoreboard players set @s galaxy.tool.wrench.block.attachment 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/attachment-wall run scoreboard players set @s galaxy.tool.wrench.block.attachment 1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/attachment-ceiling run scoreboard players set @s galaxy.tool.wrench.block.attachment 2

scoreboard players set @s galaxy.tool.wrench.block.face -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/face-floor run scoreboard players set @s galaxy.tool.wrench.block.face 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/face-wall run scoreboard players set @s galaxy.tool.wrench.block.face 1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/face-ceiling run scoreboard players set @s galaxy.tool.wrench.block.face 2

scoreboard players set @s galaxy.tool.wrench.block.half -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/half-bottom run scoreboard players set @s galaxy.tool.wrench.block.half 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/half-top run scoreboard players set @s galaxy.tool.wrench.block.half 1

scoreboard players set @s galaxy.tool.wrench.block.type -1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/type-bottom run scoreboard players set @s galaxy.tool.wrench.block.type 0
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/type-top run scoreboard players set @s galaxy.tool.wrench.block.type 1
execute at @e[tag=galaxy._tag.ThisWrenchTarget] if predicate minecraft:block_states/type-double run scoreboard players set @s galaxy.tool.wrench.block.type 2
