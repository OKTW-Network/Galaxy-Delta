execute store result score #weapon.gun.lore._accuracyInt galaxy store result score #weapon.gun.lore._accuracyDec galaxy run data get storage galaxy:temp +weapon.gun.lore.input.instability
scoreboard players operation #weapon.gun.lore._accuracyInt galaxy /= #10 num
scoreboard players operation #weapon.gun.lore._accuracyDec galaxy %= #10 num
data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"-%s.%s","with":[{"score":{"name":"#weapon.gun.lore._accuracyInt","objective":"galaxy"}},{"score":{"name":"#weapon.gun.lore._accuracyDec","objective":"galaxy"}}],"color":"dark_green"}'
