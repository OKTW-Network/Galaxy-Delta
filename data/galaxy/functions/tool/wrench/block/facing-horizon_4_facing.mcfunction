execute if predicate minecraft:block_states/facing-south run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/facing-west run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/facing-north run scoreboard players set #1 calcu_temp 2
execute if predicate minecraft:block_states/facing-east run scoreboard players set #1 calcu_temp 3

execute if predicate galaxy:entity/item_frame/facing-south store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 0
execute if predicate galaxy:entity/item_frame/facing-west store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-north store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 2
execute if predicate galaxy:entity/item_frame/facing-east store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 3

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add #3 calcu_temp 1
execute if score #1 calcu_temp = #2 calcu_temp if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1
execute unless score #1 calcu_temp = #2 calcu_temp run tag @e[tag=galaxy._tag.ThisWrenchAnchor] add galaxy._tag.storeOriginalStates

scoreboard players operation @s galaxy.tool.wrench.doFacing = #3 calcu_temp
