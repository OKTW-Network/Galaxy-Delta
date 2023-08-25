data modify storage galaxy:temp +weapon.gun.lore.result set value []
function galaxy:weapon/gun/lore/_inspect
function galaxy:weapon/gun/lore/_normalize_value

data modify storage galaxy:temp +weapon.gun.lore.result append value '{"text":""}'
execute unless score #build_lore.isComponent galaxy matches 1 run data modify storage galaxy:temp +weapon.gun.lore.result append value '{"translate":"%s","with":[{"translate":"text.express.relate","with":[{"translate":"item.galaxy.gun"},""],"color":"gray","italic":false}]}'
execute if score #build_lore.isComponent galaxy matches 1 run data modify storage galaxy:temp +weapon.gun.lore.result append value '{"translate":"component.alterations.galaxy.gun","color":"gray","italic":false}'

# generic
execute if score #weapon.gun.lore._buildCosmetic galaxy matches 1 run function galaxy:weapon/gun/lore/cosmetic
execute if score #weapon.gun.lore._buildFireRate galaxy matches 1.. run function galaxy:weapon/gun/lore/fire_rate/main
execute if score #weapon.gun.lore._buildHeat galaxy matches 1.. run function galaxy:weapon/gun/lore/heat/main
execute if score #weapon.gun.lore._buildTemperature galaxy matches 1 run function galaxy:weapon/gun/lore/temperature/main
execute if score #weapon.gun.lore._buildCooling galaxy matches 1 run function galaxy:weapon/gun/lore/cooling/main
execute if score #weapon.gun.lore._buildAccuracy galaxy matches 1.. run function galaxy:weapon/gun/lore/accuracy/main
execute if score #weapon.gun.lore._buildFlexibility galaxy matches 1.. run function galaxy:weapon/gun/lore/flexibility/main
execute if score #weapon.gun.lore._buildAimZoom galaxy matches 1.. run function galaxy:weapon/gun/lore/aim_zoom/main

# projectile
execute if score #weapon.gun.lore._buildProjectile galaxy matches 1 run data modify storage galaxy:temp +weapon.gun.lore.result append value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.projectile","color":"dark_aqua"},""],"color":"gray","italic":false}]}'
execute if score #weapon.gun.lore._buildProjectileColor galaxy matches 1 run function galaxy:weapon/gun/lore/projectile_color
execute if score #weapon.gun.lore._buildProjectileDamage galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_damage/main
execute if score #weapon.gun.lore._buildProjectileVelocity galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_velocity/main
execute if score #weapon.gun.lore._buildProjectileRange galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_range/main
execute if score #weapon.gun.lore._buildProjectilePenetrate galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_penetrate/main
execute if score #weapon.gun.lore._buildProjectileBounce galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_bounce/main
execute if score #weapon.gun.lore._buildProjectileTrace galaxy matches 1.. run function galaxy:weapon/gun/lore/projectile_trace/main

data remove storage galaxy:temp +weapon.gun.lore.input
scoreboard players reset #weapon.gun.lore._buildCosmetic galaxy
scoreboard players reset #weapon.gun.lore._buildFireRate galaxy
scoreboard players reset #weapon.gun.lore._buildHeat galaxy
scoreboard players reset #weapon.gun.lore._buildTemperature galaxy
scoreboard players reset #weapon.gun.lore._buildTemperatureMin galaxy
scoreboard players reset #weapon.gun.lore._buildTemperatureMax galaxy
scoreboard players reset #weapon.gun.lore._buildCooling galaxy
scoreboard players reset #weapon.gun.lore._buildCooling_ galaxy
scoreboard players reset #weapon.gun.lore._buildCoolingDelay galaxy
scoreboard players reset #weapon.gun.lore._buildAccuracy galaxy
scoreboard players reset #weapon.gun.lore._buildFlexibility galaxy
scoreboard players reset #weapon.gun.lore._buildAimZoom galaxy
scoreboard players reset #weapon.gun.lore._buildProjectile galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileColor galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileDamage galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileVelocity galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileRange galaxy
scoreboard players reset #weapon.gun.lore._buildProjectilePenetrate galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileBounce galaxy
scoreboard players reset #weapon.gun.lore._buildProjectileTrace galaxy
