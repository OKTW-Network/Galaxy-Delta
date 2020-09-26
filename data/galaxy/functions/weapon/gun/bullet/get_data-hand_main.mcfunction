execute store result score @e[tag=bullet,tag=init,limit=1] bulletDamage run data get entity @s SelectedItem.tag.gun.projectile.damage
execute store result score @e[tag=bullet,tag=init,limit=1] bulletDistRem run data get entity @s SelectedItem.tag.gun.projectile.distance 4
execute store result score @e[tag=bullet,tag=init,limit=1] bulletSpeed run data get entity @s SelectedItem.tag.gun.projectile.speed
execute unless entity @s[tag=Aiming] store result score @e[tag=bullet,tag=init,limit=1] bulletOffset run data get entity @s SelectedItem.tag.gun.projectile.offset 100
execute if entity @s[tag=Aiming] store result score @e[tag=bullet,tag=init,limit=1] bulletOffset run data get entity @s SelectedItem.tag.gun.projectile.aim_offset 100
execute store result score @e[tag=bullet,tag=init,limit=1] bulletPenetrate run data get entity @s SelectedItem.tag.gun.projectile.penetrate
execute store result score @e[tag=bullet,tag=init,limit=1] bulletTrace run data get entity @s SelectedItem.tag.gun.projectile.trace
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run data get entity @s SelectedItem.tag.gun.projectile.color
