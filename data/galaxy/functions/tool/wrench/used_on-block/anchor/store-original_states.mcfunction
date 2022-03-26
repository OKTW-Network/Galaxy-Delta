scoreboard players set @s galaxy.tool.wrench.block.originalAxis -1
execute at @s if predicate minecraft:block_states/axis-x run scoreboard players set @s galaxy.tool.wrench.block.originalAxis 0
execute at @s if predicate minecraft:block_states/axis-y run scoreboard players set @s galaxy.tool.wrench.block.originalAxis 1
execute at @s if predicate minecraft:block_states/axis-z run scoreboard players set @s galaxy.tool.wrench.block.originalAxis 2

scoreboard players set @s galaxy.tool.wrench.block.originalFacing -1
execute at @s if predicate minecraft:block_states/facing-south run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 0
execute at @s if predicate minecraft:block_states/facing-west run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 1
execute at @s if predicate minecraft:block_states/facing-north run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 2
execute at @s if predicate minecraft:block_states/facing-east run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 3
execute at @s if predicate minecraft:block_states/facing-down run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 4
execute at @s if predicate minecraft:block_states/facing-up run scoreboard players set @s galaxy.tool.wrench.block.originalFacing 5

execute at @s if score @e[tag=galaxy.customBlock,distance=..0.05,limit=1] galaxy.block.states.facing matches -2147483648..2147483647 run scoreboard players operation @s galaxy.tool.wrench.block.originalFacing = @e[tag=galaxy.customBlock,distance=..0.05,limit=1] galaxy.block.states.facing

scoreboard players set @s galaxy.tool.wrench.block.originalAttachment -1
execute at @s if predicate minecraft:block_states/attachment-floor run scoreboard players set @s galaxy.tool.wrench.block.originalAttachment 0
execute at @s if predicate minecraft:block_states/attachment-wall run scoreboard players set @s galaxy.tool.wrench.block.originalAttachment 1
execute at @s if predicate minecraft:block_states/attachment-ceiling run scoreboard players set @s galaxy.tool.wrench.block.originalAttachment 2

scoreboard players set @s galaxy.tool.wrench.block.originalFace -1
execute at @s if predicate minecraft:block_states/face-floor run scoreboard players set @s galaxy.tool.wrench.block.originalFace 0
execute at @s if predicate minecraft:block_states/face-wall run scoreboard players set @s galaxy.tool.wrench.block.originalFace 1
execute at @s if predicate minecraft:block_states/face-ceiling run scoreboard players set @s galaxy.tool.wrench.block.originalFace 2

scoreboard players set @s galaxy.tool.wrench.block.originalHalf -1
execute at @s if predicate minecraft:block_states/half-bottom run scoreboard players set @s galaxy.tool.wrench.block.originalHalf 0
execute at @s if predicate minecraft:block_states/half-top run scoreboard players set @s galaxy.tool.wrench.block.originalHalf 1

scoreboard players set @s galaxy.tool.wrench.block.originalType -1
execute at @s if predicate minecraft:block_states/type-bottom run scoreboard players set @s galaxy.tool.wrench.block.originalType 0
execute at @s if predicate minecraft:block_states/type-top run scoreboard players set @s galaxy.tool.wrench.block.originalType 1
execute at @s if predicate minecraft:block_states/type-double run scoreboard players set @s galaxy.tool.wrench.block.originalType 2

tag @s[tag=galaxy._tag.storeOriginalStates] remove galaxy._tag.storeOriginalStates
