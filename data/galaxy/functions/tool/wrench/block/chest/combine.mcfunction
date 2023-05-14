execute if predicate minecraft:block_states/facing-north run scoreboard players set #1 temp 0
execute if predicate minecraft:block_states/facing-east run scoreboard players set #1 temp 1
execute if predicate minecraft:block_states/facing-south run scoreboard players set #1 temp 2
execute if predicate minecraft:block_states/facing-west run scoreboard players set #1 temp 3

execute if block ~ ~ ~ minecraft:chest run scoreboard players set #2 temp 0
execute if block ~ ~ ~ minecraft:trapped_chest run scoreboard players set #2 temp 1

execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-north run scoreboard players set #3 temp 0
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-east run scoreboard players set #3 temp 1
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-south run scoreboard players set #3 temp 2
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-west run scoreboard players set #3 temp 3

scoreboard players set #4 temp -1
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:chest[type=single] run scoreboard players set #4 temp 0
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:trapped_chest[type=single] run scoreboard players set #4 temp 1

execute if predicate minecraft:entity_properties/item_frame/facing-south run scoreboard players set #5 temp 0
execute if predicate minecraft:entity_properties/item_frame/facing-west run scoreboard players set #5 temp 1
execute if predicate minecraft:entity_properties/item_frame/facing-north run scoreboard players set #5 temp 2
execute if predicate minecraft:entity_properties/item_frame/facing-east run scoreboard players set #5 temp 3
execute store result score #6 temp store result score #7 temp run scoreboard players get #1 temp
scoreboard players remove #6 temp 1
execute if score #6 temp matches ..-1 run scoreboard players add #6 temp 4
scoreboard players add #7 temp 1
execute if score #7 temp matches 4.. run scoreboard players remove #7 temp 4
execute if score #5 temp = #6 temp run scoreboard players set #8 temp 0
execute if score #5 temp = #7 temp run scoreboard players set #8 temp 1

execute if score #2 temp = #4 temp if score #1 temp = #3 temp run tag @s add galaxy._tag.wrenchChestCombineSuccess

scoreboard players operation #tool.wrench.set_block.state.facing galaxy = #1 temp
scoreboard players operation #tool.wrench.set_block.state.type galaxy = #8 temp

function galaxy:tool/wrench/block/chest/set_block/double

tag @s remove galaxy._task.wrench.chestCombine
