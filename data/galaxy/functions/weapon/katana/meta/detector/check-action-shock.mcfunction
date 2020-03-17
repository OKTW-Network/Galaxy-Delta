tag @s[tag=canActShock] remove canActShock
execute store result score #calculation_temp1 numeric run data get entity @s Rotation[1] 10
execute if score #calculation_temp1 numeric matches 750..900 if predicate galaxy:action/shock-distance run tag @s add canActShock
