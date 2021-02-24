scoreboard players operation #1 calcu_temp = @e[tag=ThisWrenchCustomBlockTarget] statesFacing

scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 4.. run scoreboard players remove #1 calcu_temp 4

scoreboard players add @e[tag=ThisWrenchAnchor] sucWrenchRotate 1

scoreboard players operation @s wrenchDoFacing = #1 calcu_temp

scoreboard players operation @e[tag=ThisWrenchCustomBlockTarget] statesFacing = #1 calcu_temp

function galaxy:tool/wrench/block/custom_block-horizon_4_facing/set_fake_block/main
