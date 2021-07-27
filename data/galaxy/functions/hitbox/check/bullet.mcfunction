scoreboard players set @s sucHitboxCheck 0
data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from entity @e[tag=galaxy.bullet,tag=flighting,limit=1] data.entityDamaged
function cu:list/include/main
execute if score #result listInclude matches 0 run scoreboard players set @s sucHitboxCheck 1

function cu:get/hitbox_border
execute store result score @s hitboxXMin run data get storage cu:get hitbox_border.X.min
execute store result score @s hitboxXMax run data get storage cu:get hitbox_border.X.max
execute store result score @s hitboxYMin run data get storage cu:get hitbox_border.Y.min
execute store result score @s hitboxYMax run data get storage cu:get hitbox_border.Y.max
execute store result score @s hitboxZMin run data get storage cu:get hitbox_border.Z.min
execute store result score @s hitboxZMax run data get storage cu:get hitbox_border.Z.max

execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxXMax >= @e[tag=galaxy.bullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxXMin <= @e[tag=galaxy.bullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxYMax >= @e[tag=galaxy.bullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxYMin <= @e[tag=galaxy.bullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZMax >= @e[tag=galaxy.bullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZMin <= @e[tag=galaxy.bullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 run tag @s add bulletDamage
execute if score @s sucHitboxCheck matches 1 run scoreboard players set @e[tag=galaxy.bullet,tag=flighting,limit=1] sucBulletHit 1

tag @s remove bulletPossibleVictim
