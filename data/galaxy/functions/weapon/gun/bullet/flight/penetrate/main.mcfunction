scoreboard players operation #gun.bullet.weaken galaxy = @s galaxy.projectile.penetrate
execute if score #gun.bullet.weaken galaxy matches 1..99 run function galaxy:weapon/gun/bullet/weaken
