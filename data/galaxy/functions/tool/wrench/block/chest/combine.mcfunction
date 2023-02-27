execute if predicate minecraft:block_states/facing-south run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/facing-west run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/facing-north run scoreboard players set #1 calcu_temp 2
execute if predicate minecraft:block_states/facing-east run scoreboard players set #1 calcu_temp 3

execute if block ~ ~ ~ minecraft:chest run scoreboard players set #2 calcu_temp 0
execute if block ~ ~ ~ minecraft:trapped_chest run scoreboard players set #2 calcu_temp 1

execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-south run scoreboard players set #3 calcu_temp 0
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-west run scoreboard players set #3 calcu_temp 1
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-north run scoreboard players set #3 calcu_temp 2
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate minecraft:block_states/facing-east run scoreboard players set #3 calcu_temp 3

scoreboard players set #4 calcu_temp -1
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:chest[type=single] run scoreboard players set #4 calcu_temp 0
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:trapped_chest[type=single] run scoreboard players set #4 calcu_temp 1

execute if predicate minecraft:entity_properties/item_frame/facing-south run scoreboard players set #5 calcu_temp 0
execute if predicate minecraft:entity_properties/item_frame/facing-west run scoreboard players set #5 calcu_temp 1
execute if predicate minecraft:entity_properties/item_frame/facing-north run scoreboard players set #5 calcu_temp 2
execute if predicate minecraft:entity_properties/item_frame/facing-east run scoreboard players set #5 calcu_temp 3
execute store result score #6 calcu_temp store result score #7 calcu_temp run scoreboard players get #1 calcu_temp
scoreboard players remove #6 calcu_temp 1
execute if score #6 calcu_temp matches ..-1 run scoreboard players add #6 calcu_temp 4
scoreboard players add #7 calcu_temp 1
execute if score #7 calcu_temp matches 4.. run scoreboard players remove #7 calcu_temp 4
execute if score #5 calcu_temp = #6 calcu_temp run scoreboard players set #8 calcu_temp 0
execute if score #5 calcu_temp = #7 calcu_temp run scoreboard players set #8 calcu_temp 1

execute if score #2 calcu_temp = #4 calcu_temp if score #1 calcu_temp = #3 calcu_temp run tag @s add galaxy._tag.wrenchChestCombineSuccess

scoreboard players operation @s galaxy.tool.wrench.doFacing = #1 calcu_temp
scoreboard players operation @s galaxy.tool.wrench.doChestSpecial = #8 calcu_temp

function galaxy:tool/wrench/block/chest/set_block/double
