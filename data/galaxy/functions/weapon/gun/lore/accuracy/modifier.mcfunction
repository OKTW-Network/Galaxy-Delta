execute store result score #1 temp store result score #weapon.gun.lore._accuracyModifier galaxy run data get storage galaxy:temp +weapon.gun.lore.input.instability_modifier
scoreboard players operation #weapon.gun.lore._accuracyModifier galaxy *= #-1 num
execute if score #1 temp matches 0 run data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"text":"100%","color":"dark_green"}'
execute if score #1 temp matches 1.. run data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"%s%%","with":[{"score":{"name":"#weapon.gun.lore._accuracyModifier","objective":"galaxy"}}],"color":"red"}'
execute if score #1 temp matches ..-1 run data modify storage galaxy:temp +weapon.gun.lore._finalValue set value '{"translate":"+%s%%","with":[{"score":{"name":"#weapon.gun.lore._accuracyModifier","objective":"galaxy"}}],"color":"blue"}'
