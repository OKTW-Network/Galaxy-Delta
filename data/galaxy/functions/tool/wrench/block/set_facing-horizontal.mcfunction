execute if predicate minecraft:block_states/facing-north run scoreboard players set #1 temp 0
execute if predicate minecraft:block_states/facing-east run scoreboard players set #1 temp 1
execute if predicate minecraft:block_states/facing-south run scoreboard players set #1 temp 2
execute if predicate minecraft:block_states/facing-west run scoreboard players set #1 temp 3

execute if predicate minecraft:entity_properties/item_frame/facing-north store result score #3 temp run scoreboard players set #2 temp 0
execute if predicate minecraft:entity_properties/item_frame/facing-east store result score #3 temp run scoreboard players set #2 temp 1
execute if predicate minecraft:entity_properties/item_frame/facing-south store result score #3 temp run scoreboard players set #2 temp 2
execute if predicate minecraft:entity_properties/item_frame/facing-west store result score #3 temp run scoreboard players set #2 temp 3

execute if score #1 temp = #2 temp run scoreboard players add #3 temp 1
execute if score #1 temp = #2 temp if score #3 temp matches 4.. run scoreboard players remove #3 temp 4

execute if score #1 temp = #2 temp run scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1
execute unless score #1 temp = #2 temp run tag @s add galaxy._task.wrench.anchorStoreOriginStates

scoreboard players operation #tool.wrench.set_block.state.facing galaxy = #3 temp
