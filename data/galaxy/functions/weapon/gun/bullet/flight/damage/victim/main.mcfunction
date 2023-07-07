scoreboard players operation #entity.damage_reduction.damage cu = #weapon.gun.bullet.damage galaxy
scoreboard players operation #entity.damage_reduction.ignoreArmorPercent cu = #weapon.gun.bullet.penetrate galaxy
scoreboard players set #entity.damage_reduction.damageType.projectile cu 1
function cu:entity/damage_reduction/main
scoreboard players operation #weapon.gun.victim.damage galaxy = #entity.damage_reduction.result cu
function cu:entity/temp_knockback_resistance/apply
execute if score #weapon.gun.victim.damage galaxy matches 1.. run function galaxy:weapon/gun/bullet/flight/damage/victim/_recursive
function cu:entity/temp_knockback_resistance/remove
execute if score #weapon.gun.victim.damage galaxy matches 1 run damage @s 1 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]

execute if entity @s run data modify storage galaxy:temp +weapon.gun.bullet.victim append from entity @s UUID
execute unless entity @s run scoreboard players add @s galaxy.projectile.killCount 1
