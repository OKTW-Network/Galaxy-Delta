scoreboard players set #1 calcu_temp 0
execute if score #1 calcu_temp matches 0 if block ~ ~ ~ #global:entity_passable run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 0 run tag @s add galaxy._tag.entityPlaceFailed
