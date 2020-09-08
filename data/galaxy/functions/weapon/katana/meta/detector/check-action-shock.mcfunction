tag @s[tag=canActShock] remove canActShock
execute store result score #1 calcu_temp run data get entity @s Rotation[1] 10
execute if score #1 calcu_temp matches 750..900 if predicate galaxy:action/shock-distance run tag @s add canActShock
