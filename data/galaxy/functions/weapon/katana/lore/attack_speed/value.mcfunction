execute store result score #1 temp store result score #weapon.katana.lore._attackSpeedInt galaxy store result score #weapon.katana.lore._attackSpeedDec galaxy run data get storage galaxy:temp +weapon.katana.lore.input.attack_speed
execute if score #weapon.katana.lore._buildAttackSpeed galaxy matches 1 store result score #weapon.katana.lore._attackSpeedInt galaxy store result score #weapon.katana.lore._attackSpeedDec galaxy run scoreboard players add #1 temp 400
scoreboard players operation #weapon.katana.lore._attackSpeedInt galaxy /= #100 num
scoreboard players operation #weapon.katana.lore._attackSpeedDec galaxy %= #100 num
data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"translate":"%s.%s","with":[{"score":{"name":"#weapon.katana.lore._attackSpeedInt","objective":"galaxy"}},{"score":{"name":"#weapon.katana.lore._attackSpeedDec","objective":"galaxy"}}],"color":"dark_green"}'
