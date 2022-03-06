scoreboard players operation #1 calcu_temp = @e[tag=ThisWrenchCustomBlockTarget] galaxy.block.state.facing

execute if predicate galaxy:entity/item_frame/facing-south store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 0
execute if predicate galaxy:entity/item_frame/facing-west store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-north store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 2
execute if predicate galaxy:entity/item_frame/facing-east store result score #3 calcu_temp run scoreboard players set #2 calcu_temp 3

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add #3 calcu_temp 1
execute if score #1 calcu_temp = #2 calcu_temp if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

execute if score #1 calcu_temp = #2 calcu_temp run scoreboard players add @e[tag=ThisWrenchAnchor] sucWrenchRotate 1
execute unless score #1 calcu_temp = #2 calcu_temp run tag @e[tag=ThisWrenchAnchor] add storeOriginalStates

scoreboard players operation @s wrenchDoFacing = #3 calcu_temp

scoreboard players operation @e[tag=ThisWrenchCustomBlockTarget] galaxy.block.state.facing = @s wrenchDoFacing

function galaxy:tool/wrench/block/custom_block-horizon_4_facing/set_fake_block/main
