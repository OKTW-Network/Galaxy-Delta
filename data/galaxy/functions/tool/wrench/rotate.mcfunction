execute if predicate galaxy:block/facing-south store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 3
execute if predicate galaxy:block/facing-down store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 4
execute if predicate galaxy:block/facing-up store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 5

execute if predicate galaxy:entity/item_frame/facing-south store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 0
execute if predicate galaxy:entity/item_frame/facing-west store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-north store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 2
execute if predicate galaxy:entity/item_frame/facing-east store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 3
execute if predicate galaxy:entity/item_frame/facing-down store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 4
execute if predicate galaxy:entity/item_frame/facing-up store result score #4 calcu_temp run scoreboard players set #3 calcu_temp 5

execute if score #1 calcu_temp matches 0..3 if score #3 calcu_temp matches 4..5 run scoreboard players add #2 calcu_temp 1
execute if score #1 calcu_temp matches 0..3 if score #2 calcu_temp matches 4.. run scoreboard players remove #2 calcu_temp 4
execute if score #1 calcu_temp matches 0..3 run scoreboard players operation #1 calcu_temp = #2 calcu_temp

execute if score #1 calcu_temp matches 4 if score #3 calcu_temp matches 0..3 run scoreboard players add #4 calcu_temp 1
execute if score #1 calcu_temp matches 4 if score #4 calcu_temp matches 4.. run scoreboard players remove #4 calcu_temp 4
execute if score #1 calcu_temp matches 5 if score #3 calcu_temp matches 0..3 run scoreboard players remove #4 calcu_temp 1
execute if score #1 calcu_temp matches 5 if score #4 calcu_temp matches ..-1 run scoreboard players add #4 calcu_temp 4
execute if score #1 calcu_temp matches 4..5 run scoreboard players operation #1 calcu_temp = #4 calcu_temp
