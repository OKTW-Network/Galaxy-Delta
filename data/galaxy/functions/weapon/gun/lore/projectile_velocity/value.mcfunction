execute store result score #weapon.gun.lore._projectileVelocityInt galaxy store result score #weapon.gun.lore._projectileVelocityDec galaxy run data get storage galaxy:temp +weapon.gun.lore.input.projectile.velocity
scoreboard players operation #weapon.gun.lore._projectileVelocityInt galaxy /= #4 num
scoreboard players operation #weapon.gun.lore._projectileVelocityDec galaxy %= #4 num
scoreboard players set #1 temp 25
scoreboard players operation #weapon.gun.lore._projectileVelocityDec galaxy *= #1 temp
data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"%s.%s","with":[{"score":{"name":"#weapon.gun.lore._projectileVelocityInt","objective":"galaxy"}},{"score":{"name":"#weapon.gun.lore._projectileVelocityDec","objective":"galaxy"}}],"color":"dark_green"}'
