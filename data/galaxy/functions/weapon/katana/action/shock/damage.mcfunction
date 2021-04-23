execute store result score @s hitboxXMin run data get entity @s Pos[0] 10
execute store result score @s hitboxXMax run data get entity @s Pos[0] 10
execute store result score @s hitboxYMin run data get entity @s Pos[1] 10
execute store result score @s hitboxYMax run data get entity @s Pos[1] 10
execute store result score @s hitboxZMin run data get entity @s Pos[2] 10
execute store result score @s hitboxZMax run data get entity @s Pos[2] 10
scoreboard players remove @s hitboxXMax 45
scoreboard players add @s hitboxXMin 45
scoreboard players remove @s hitboxZMax 45
scoreboard players add @s hitboxZMin 45
scoreboard players add @s hitboxYMax 6

function galaxy:hitbox/tag/action-shock

function galaxy:damage/action-shock

kill @s
