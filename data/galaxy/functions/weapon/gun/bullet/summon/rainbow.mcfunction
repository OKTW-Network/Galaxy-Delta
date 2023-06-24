tag @s add galaxy._tag.projectile.rainbowColor
execute store result score #1 temp run data get entity @s UUID[0]
scoreboard players operation #1 temp %= #7 num
execute store result score @s galaxy.projectile.color run scoreboard players add #1 temp 1
