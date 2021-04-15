data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from entity @e[tag=bullet,tag=flighting,limit=1] ArmorItems[0].tag.CustomData.galaxy.data.entityDamaged
function cu:list/include/main
execute if score #result listInclude matches 0 run scoreboard players set @s sucHitboxCheck 1

execute if score @s sucHitboxCheck matches 1 run function cu:library/hitbox/main
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxX1 >= @e[tag=bullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxX2 <= @e[tag=bullet,tag=flighting,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY1 <= @e[tag=bullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY2 >= @e[tag=bullet,tag=flighting,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ1 >= @e[tag=bullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ2 <= @e[tag=bullet,tag=flighting,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 run tag @s add bulletDamage
execute if score @s sucHitboxCheck matches 1 run scoreboard players set @e[tag=bullet,tag=flighting,limit=1] sucBulletHit 1

tag @s remove bulletPossibleVictim
