function cu:get/hitbox_border
execute store result score @s hitboxXMin run data get storage cu:get hitbox_border.X.min
execute store result score @s hitboxXMax run data get storage cu:get hitbox_border.X.max
execute store result score @s hitboxYMin run data get storage cu:get hitbox_border.Y.min
execute store result score @s hitboxYMax run data get storage cu:get hitbox_border.Y.max
execute store result score @s hitboxZMin run data get storage cu:get hitbox_border.Z.min
execute store result score @s hitboxZMax run data get storage cu:get hitbox_border.Z.max

scoreboard players set #1 calcu_temp 0
scoreboard players set #2 calcu_temp 0
scoreboard players set #3 calcu_temp 0
execute if score @s hitboxXMax >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxXMax if score @s hitboxXMax < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxXMin run scoreboard players set #1 calcu_temp 1
execute unless score #1 calcu_temp matches 1 if score @s hitboxXMin < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxXMin if score @s hitboxXMin >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxXMax run scoreboard players set #1 calcu_temp 1
execute if score @s hitboxZMax >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxZMax if score @s hitboxZMax < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxZMin run scoreboard players set #2 calcu_temp 1
execute unless score #2 calcu_temp matches 1 if score @s hitboxZMin < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxZMin if score @s hitboxZMin >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxZMax run scoreboard players set #2 calcu_temp 1
execute if score @s hitboxYMin >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxYMin if score @s hitboxYMin < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxYMax run scoreboard players set #3 calcu_temp 1
execute unless score #3 calcu_temp matches 1 if score @s hitboxYMax < @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxYMax if score @s hitboxYMax >= @e[tag=galaxy.dummy.collisionCheck,limit=1] hitboxYMin run scoreboard players set #3 calcu_temp 1
execute if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 1 run tag @s add galaxy._tag.blockCollision
