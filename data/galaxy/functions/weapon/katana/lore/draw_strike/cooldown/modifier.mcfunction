execute store result score #1 temp run data get storage galaxy:temp +weapon.katana.lore.input.draw_strike.cooldown_modifier
execute if score #1 temp matches 0 run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"text":"100%","color":"dark_green"}'
execute if score #1 temp matches 1.. run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"translate":"+%s%%","with":[{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.draw_strike.cooldown_modifier"}],"color":"red"}'
execute if score #1 temp matches ..-1 run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"translate":"%s%%","with":[{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.draw_strike.cooldown_modifier"}],"color":"blue"}'
