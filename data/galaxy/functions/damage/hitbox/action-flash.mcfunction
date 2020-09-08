function math:calcu_temp/store_to_1

function cu:library/hitbox/main
execute store success score @s sucHitboxCheck if score @s hitboxX1 >= @e[tag=actFlashPathfinder,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxX2 <= @e[tag=actFlashPathfinder,limit=1] posX
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY1 <= @e[tag=actFlashPathfinder,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxY2 >= @e[tag=actFlashPathfinder,limit=1] posY
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ1 >= @e[tag=actFlashPathfinder,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 store success score @s sucHitboxCheck if score @s hitboxZ2 <= @e[tag=actFlashPathfinder,limit=1] posZ
execute if score @s sucHitboxCheck matches 1 run tag @s add actFlashDamage

tag @s remove actFlashPossibleVictim

function math:calcu_temp/extract_from_1
