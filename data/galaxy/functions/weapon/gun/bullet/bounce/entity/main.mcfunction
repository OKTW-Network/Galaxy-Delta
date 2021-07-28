function galaxy:hitbox/tag/bullet-trace

execute if entity @e[tag=galaxy.hitbox.target] facing entity @e[tag=galaxy.hitbox.target,limit=1] eyes run tp ~ ~ ~

scoreboard players operation @s bulletWeaken = @s bulletBounce
execute if score @s bulletWeaken matches 1..99 run scoreboard players operation @s bulletWeaken /= #2 num
execute if entity @e[tag=galaxy.hitbox.target] if score @s bulletWeaken matches 1..99 run function galaxy:weapon/gun/bullet/weaken

execute unless entity @e[tag=galaxy.hitbox.target] run function galaxy:weapon/gun/bullet/bounce/entity/random_rotation

tag @e[tag=galaxy.hitbox.target] remove galaxy.hitbox.target

scoreboard players set @s sucBulletHit -1
