execute if predicate minecraft:block_states/half-bottom store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/half-top store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 1

scoreboard players operation #3 calcu_temp = @e[tag=ThisWrenchAnchor] sucWrenchRotate
scoreboard players add #3 calcu_temp 1
scoreboard players operation #3 calcu_temp %= #4 num

execute if score #3 calcu_temp matches 0 run scoreboard players add #2 calcu_temp 1
execute if score #2 calcu_temp matches 2.. run scoreboard players set #2 calcu_temp 0

scoreboard players operation @s wrenchDoHalf = #2 calcu_temp
