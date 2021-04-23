function cu:get/hitbox_border
execute store result score @s hitboxXMin run data get storage cu:get hitbox_border.X.min
execute store result score @s hitboxXMax run data get storage cu:get hitbox_border.X.max
execute store result score @s hitboxYMin run data get storage cu:get hitbox_border.Y.min
execute store result score @s hitboxYMax run data get storage cu:get hitbox_border.Y.max
execute store result score @s hitboxZMin run data get storage cu:get hitbox_border.Z.min
execute store result score @s hitboxZMax run data get storage cu:get hitbox_border.Z.max

execute store success score @s sucHitboxCheck if score @s hitboxXMax >= @e[tag=actStunDamagePath,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxXMin <= @e[tag=actStunDamagePath,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxYMax >= @e[tag=actStunDamagePath,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxYMin <= @e[tag=actStunDamagePath,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZMax >= @e[tag=actStunDamagePath,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZMin <= @e[tag=actStunDamagePath,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 run tag @s add actStunDamage

tag @s remove actStunPossibleVictim
