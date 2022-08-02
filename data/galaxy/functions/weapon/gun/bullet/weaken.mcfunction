execute store result score #1 calcu_temp run scoreboard players operation @s galaxy.projectile.damage *= #gun.bullet.weaken galaxy
scoreboard players operation @s galaxy.projectile.damage /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s galaxy.projectile.damage 1

execute store result score #1 calcu_temp run scoreboard players operation @s galaxy.projectile.remainFlightDistance *= #gun.bullet.weaken galaxy
scoreboard players operation @s galaxy.projectile.remainFlightDistance /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s galaxy.projectile.remainFlightDistance 1

execute store result score #1 calcu_temp run scoreboard players operation @s galaxy.projectile.velocity *= #gun.bullet.weaken galaxy
scoreboard players operation @s galaxy.projectile.velocity /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s galaxy.projectile.velocity 1
