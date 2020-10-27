execute if predicate galaxy:block/facing-south store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 3
execute if predicate galaxy:block/facing-down store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 4

scoreboard players add #2 calcu_temp 1
execute if score #2 calcu_temp matches 5.. run scoreboard players remove #2 calcu_temp 5
scoreboard players operation #1 calcu_temp = #2 calcu_temp

function galaxy:tool/wrench/hopper/set_block/main
