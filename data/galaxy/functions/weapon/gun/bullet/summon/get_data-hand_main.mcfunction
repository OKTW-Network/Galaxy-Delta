execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletDamage run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.damage
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletDistRem run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.distance 4
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletSpeed run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.speed
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.offset 100
execute if entity @s[tag=galaxy.gun.aiming] unless score @s reqGunFire matches 31 store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.aim_offset 100
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletPenetrate run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.penetrate
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletTrace run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.trace
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletBounce run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.bounce
execute store result score @e[tag=galaxy.bullet,tag=init,limit=1] bulletColor run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.color.id
