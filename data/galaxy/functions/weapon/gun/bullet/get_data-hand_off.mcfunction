execute store result score @e[tag=bullet,tag=init,limit=1] bulletDamage run data get entity @s Inventory[{Slot:-106b}].tag.projectile.damage
execute store result score @e[tag=bullet,tag=init,limit=1] bulletDistRem run data get entity @s Inventory[{Slot:-106b}].tag.projectile.distance 4
execute store result score @e[tag=bullet,tag=init,limit=1] bulletSpeed run data get entity @s Inventory[{Slot:-106b}].tag.projectile.speed
execute store result score @e[tag=bullet,tag=init,limit=1] bulletOffset run data get entity @s Inventory[{Slot:-106b}].tag.projectile.offset
execute store result score @e[tag=bullet,tag=init,limit=1] bulletPntraAtenu run data get entity @s Inventory[{Slot:-106b}].tag.projectile.penetrateAttenuation
