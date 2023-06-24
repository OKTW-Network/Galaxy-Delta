execute store result score #weapon.gun.lore._flexibilityInt galaxy store result score #weapon.gun.lore._flexibilityDec galaxy run data get storage galaxy:temp +weapon.gun.lore.input.flexibility
scoreboard players operation #weapon.gun.lore._flexibilityInt galaxy /= #10 num
scoreboard players operation #weapon.gun.lore._flexibilityDec galaxy %= #10 num
data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"%s.%s","with":[{"score":{"name":"#weapon.gun.lore._flexibilityInt","objective":"galaxy"}},{"score":{"name":"#weapon.gun.lore._flexibilityDec","objective":"galaxy"}}],"color":"dark_green"}'
