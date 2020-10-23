execute if predicate galaxy:block/facing-south store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 3

execute if predicate galaxy:entity/item_frame/facing-south store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 0
execute if predicate galaxy:entity/item_frame/facing-west store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-north store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 2
execute if predicate galaxy:entity/item_frame/facing-east store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 3

scoreboard players add #2 calcu_temp 2
execute if score #2 calcu_temp matches 4.. run scoreboard players remove #2 calcu_temp 4
execute unless score #2 calcu_temp = #3 calcu_temp run scoreboard players add #4 calcu_temp 2
execute if score #4 calcu_temp matches 4.. run scoreboard players remove #4 calcu_temp 4

scoreboard players operation #1 calcu_temp = #4 calcu_temp

execute if predicate galaxy:block/stairs-half-bottom run scoreboard players set #2 calcu_temp 0
execute if predicate galaxy:block/stairs-half-top run scoreboard players set #2 calcu_temp 1

execute if predicate galaxy:block/stairs-shape-straight run scoreboard players set #3 calcu_temp 0
execute if predicate galaxy:block/stairs-shape-inner_left run scoreboard players set #3 calcu_temp 1
execute if predicate galaxy:block/stairs-shape-inner_right run scoreboard players set #3 calcu_temp 2
execute if predicate galaxy:block/stairs-shape-outer_left run scoreboard players set #3 calcu_temp 3
execute if predicate galaxy:block/stairs-shape-outer_right run scoreboard players set #3 calcu_temp 4

function galaxy:tool/wrench/stairs/set_block/main
