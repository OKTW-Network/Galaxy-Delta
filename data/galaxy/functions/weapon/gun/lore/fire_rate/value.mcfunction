scoreboard players set #weapon.gun.lore._attackSpeedInt galaxy 20000
execute store result score #1 temp run data get storage galaxy:temp +weapon.gun.lore.input.interval
execute store result score #weapon.gun.lore._attackSpeedDec galaxy run scoreboard players operation #weapon.gun.lore._attackSpeedInt galaxy /= #1 temp
scoreboard players operation #weapon.gun.lore._attackSpeedInt galaxy /= #1000 num
execute store result score #1 temp run scoreboard players operation #weapon.gun.lore._attackSpeedDec galaxy %= #1000 num
scoreboard players operation #weapon.gun.lore._attackSpeedDec galaxy /= #10 num
scoreboard players operation #1 temp %= #10 num
execute if score #1 temp matches 5.. run scoreboard players add #weapon.gun.lore._attackSpeedDec galaxy 1
data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"text.express.main_and_sub","with":[{"translate":"%s.%s","with":[{"score":{"name":"#weapon.gun.lore._attackSpeedInt","objective":"galaxy"}},{"score":{"name":"#weapon.gun.lore._attackSpeedDec","objective":"galaxy"}}],"color":"dark_green"},{"translate":"text.value_unit.tick","with":[{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.interval","color":"dark_green"}],"color":"dark_gray"}]}'
