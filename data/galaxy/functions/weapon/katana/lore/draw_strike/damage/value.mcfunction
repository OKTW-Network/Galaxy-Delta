execute store result score #1 temp store result score #weapon.katana.lore._drawStrikeDamageInt galaxy store result score #weapon.katana.lore._drawStrikeDamageDec galaxy run data get storage galaxy:temp +weapon.katana.lore.input.draw_strike.damage
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 1 store result score #weapon.katana.lore._drawStrikeDamageInt galaxy store result score #weapon.katana.lore._drawStrikeDamageDec galaxy run scoreboard players add #1 temp 100
scoreboard players operation #weapon.katana.lore._drawStrikeDamageInt galaxy /= #100 num
scoreboard players operation #weapon.katana.lore._drawStrikeDamageDec galaxy %= #100 num
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 1 run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"translate":"%s.%s","with":[{"score":{"name":"#weapon.katana.lore._drawStrikeDamageInt","objective":"galaxy"}},{"score":{"name":"#weapon.katana.lore._drawStrikeDamageDec","objective":"galaxy"}}],"color":"dark_green"}'
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 2 run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"translate":"+%s.%s","with":[{"score":{"name":"#weapon.katana.lore._drawStrikeDamageInt","objective":"galaxy"}},{"score":{"name":"#weapon.katana.lore._drawStrikeDamageDec","objective":"galaxy"}}],"color":"dark_green"}'