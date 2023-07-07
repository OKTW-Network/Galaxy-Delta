execute store result score #weapon.gun.lore._instabilityInt galaxy store result score #weapon.gun.lore.instabilityDec galaxy run data get storage galaxy:temp +weapon.gun.lore.input.instability
scoreboard players operation #weapon.gun.lore._instabilityInt galaxy /= #10 num
scoreboard players operation #weapon.gun.lore.instabilityDec galaxy %= #10 num
data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"-%s.%s","with":[{"score":{"name":"#weapon.gun.lore._instabilityInt","objective":"galaxy"}},{"score":{"name":"#weapon.gun.lore.instabilityDec","objective":"galaxy"}}],"color":"dark_green"}'
