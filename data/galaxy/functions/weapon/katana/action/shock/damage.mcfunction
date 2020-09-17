execute store result score @s hitboxX1 run data get entity @s Pos[0] 10
execute store result score @s hitboxX2 run data get entity @s Pos[0] 10
execute store result score @s hitboxY1 run data get entity @s Pos[1] 10
execute store result score @s hitboxY2 run data get entity @s Pos[1] 10
execute store result score @s hitboxZ1 run data get entity @s Pos[2] 10
execute store result score @s hitboxZ2 run data get entity @s Pos[2] 10
scoreboard players remove @s hitboxX1 45
scoreboard players add @s hitboxX2 45
scoreboard players remove @s hitboxZ1 45
scoreboard players add @s hitboxZ2 45
scoreboard players add @s hitboxY2 6

function galaxy:hitbox/tag/action-shock

function galaxy:damage/action-shock

kill @s
