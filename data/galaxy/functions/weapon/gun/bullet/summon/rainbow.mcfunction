tag @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] add galaxy._tag.projectile.rainbowColor
execute store result score #1 temp run data get entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] UUID[0]
scoreboard players operation #1 temp %= #7 num
execute store result score @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.color run scoreboard players add #1 temp 1
