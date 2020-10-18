execute if predicate galaxy:block/facing-south store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 3

scoreboard players remove #2 calcu_temp 1
execute if score #2 calcu_temp matches ..-1 run scoreboard players add #2 calcu_temp 4
scoreboard players add #3 calcu_temp 1
execute if score #3 calcu_temp matches 4.. run scoreboard players remove #3 calcu_temp 4

execute positioned ^ ^ ^1 if predicate galaxy:block/facing-south run scoreboard players set #4 calcu_temp 0
execute positioned ^ ^ ^1 if predicate galaxy:block/facing-west run scoreboard players set #4 calcu_temp 1
execute positioned ^ ^ ^1 if predicate galaxy:block/facing-north run scoreboard players set #4 calcu_temp 2
execute positioned ^ ^ ^1 if predicate galaxy:block/facing-east run scoreboard players set #4 calcu_temp 3

execute positioned ^ ^ ^1 if predicate galaxy:entity/item_frame/facing-south run scoreboard players set #5 calcu_temp 0
execute positioned ^ ^ ^1 if predicate galaxy:entity/item_frame/facing-west run scoreboard players set #5 calcu_temp 1
execute positioned ^ ^ ^1 if predicate galaxy:entity/item_frame/facing-north run scoreboard players set #5 calcu_temp 2
execute positioned ^ ^ ^1 if predicate galaxy:entity/item_frame/facing-east run scoreboard players set #5 calcu_temp 3

scoreboard players set #6 calcu_temp 0
execute if score #5 calcu_temp = #2 calcu_temp run scoreboard players set #6 calcu_temp 1
execute if score #5 calcu_temp = #3 calcu_temp run scoreboard players set #6 calcu_temp 2

scoreboard players set #7 calcu_temp 0
execute if score #7 calcu_temp matches 0 if score #6 calcu_temp matches 1.. if block ~ ~ ~ minecraft:chest if score #1 calcu_temp = #4 calcu_temp if block ^ ^ ^1 minecraft:chest[type=single] run scoreboard players set #7 calcu_temp 1
execute if score #7 calcu_temp matches 0 if score #6 calcu_temp matches 1.. if block ~ ~ ~ minecraft:trapped_chest if score #1 calcu_temp = #4 calcu_temp if block ^ ^ ^1 minecraft:trapped_chest[type=single] run scoreboard players set #7 calcu_temp 1

execute if score #7 calcu_temp matches 0 run tag @s add wrenchChestCombineFailed

execute if entity @s[tag=!wrenchChestCombineFailed] run scoreboard players operation #2 calcu_temp = #6 calcu_temp
execute if entity @s[tag=!wrenchChestCombineFailed] run function galaxy:tool/wrench/chest/build-double
