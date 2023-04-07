scoreboard players operation #1 calcu_temp = @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] galaxy.block.states.facing

execute if predicate minecraft:entity_properties/item_frame/facing-north store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 0
execute if predicate minecraft:entity_properties/item_frame/facing-east store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 1
execute if predicate minecraft:entity_properties/item_frame/facing-south store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 2
execute if predicate minecraft:entity_properties/item_frame/facing-west store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 3

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add #3 calcu_temp 1
execute if score #1 calcu_temp = #2 calcu_temp if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1
execute unless score #1 calcu_temp = #2 calcu_temp run tag @s add galaxy._task.wrench.anchorStoreOriginStates

scoreboard players operation @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] galaxy.block.states.facing = #3 calcu_temp

execute as @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] at @s run function galaxy:tool/wrench/block/galaxy_block/update_block_states

tag @s remove galaxy._task.wrench.setFacing
