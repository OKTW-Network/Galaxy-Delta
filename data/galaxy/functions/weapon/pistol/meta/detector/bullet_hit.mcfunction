function cu:detector/hitbox
execute store success score @s sucHitboxCheck if score @s hitboxX1 >= @e[tag=pistolBullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxX2 <= @e[tag=pistolBullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY1 <= @e[tag=pistolBullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY2 >= @e[tag=pistolBullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ1 >= @e[tag=pistolBullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ2 <= @e[tag=pistolBullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 run tag @s add bulletDamage
execute if score @s sucHitboxCheck matches 1 run scoreboard players set @e[tag=pistolBullet,tag=flighting,limit=1] sucBulletHit 1

tag @s remove possibleVictim
