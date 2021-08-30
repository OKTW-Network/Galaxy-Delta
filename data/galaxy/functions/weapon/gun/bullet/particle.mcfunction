scoreboard players add @s[tag=colorRainbow] bulletColor 1
scoreboard players set @s[tag=colorRainbow,scores={bulletColor=8..}] bulletColor 1

execute if score @s bulletColor matches 0 run particle minecraft:dust 0.027 0.482 0.659 0.4 ~ ~ ~ 0 0 0 0 1 force

execute if score @s bulletColor matches 1 run particle minecraft:dust 0.690 0.180 0.149 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 2 run particle minecraft:dust 0.976 0.502 0.114 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 3 run particle minecraft:dust 0.996 0.847 0.239 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 4 run particle minecraft:dust 0.502 0.780 0.122 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 5 run particle minecraft:dust 0.227 0.702 0.855 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 6 run particle minecraft:dust 0.235 0.267 0.667 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 7 run particle minecraft:dust 0.537 0.196 0.722 0.4 ~ ~ ~ 0 0 0 0 1 force

execute if score @s bulletColor matches 8 run particle minecraft:dust 0.114 0.114 0.129 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 9 run particle minecraft:dust 0.514 0.329 0.196 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 10 run particle minecraft:dust 0.086 0.612 0.612 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 11 run particle minecraft:dust 0.278 0.310 0.322 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 12 run particle minecraft:dust 0.369 0.486 0.086 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 13 run particle minecraft:dust 0.616 0.616 0.592 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 14 run particle minecraft:dust 0.780 0.306 0.741 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 15 run particle minecraft:dust 0.953 0.545 0.667 0.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s bulletColor matches 16 run particle minecraft:dust 0.976 1.000 0.996 0.4 ~ ~ ~ 0 0 0 0 1 force
