scoreboard players operation #1 calcu_temp = @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] galaxy.block.states.facing
scoreboard players add #1 calcu_temp 2
execute if score #1 calcu_temp matches 4.. run scoreboard players remove #1 calcu_temp 4

execute if predicate minecraft:entity_properties/item_frame/facing-south store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 0
execute if predicate minecraft:entity_properties/item_frame/facing-west store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 1
execute if predicate minecraft:entity_properties/item_frame/facing-north store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 2
execute if predicate minecraft:entity_properties/item_frame/facing-east store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 3

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add #3 calcu_temp 1
execute if score #1 calcu_temp = #2 calcu_temp if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1
execute unless score #1 calcu_temp = #2 calcu_temp run tag @e[tag=galaxy._tag.ThisWrenchAnchor] add galaxy._tag.storeOriginalStates

scoreboard players add #3 calcu_temp 2
execute if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4
scoreboard players operation @s galaxy.tool.wrench.doFacing = #3 calcu_temp

scoreboard players operation @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] galaxy.block.states.facing = @s galaxy.tool.wrench.doFacing

function galaxy:tool/wrench/block/custom_block-horizon_4_facing/set_fake_block/main
