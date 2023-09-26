data modify storage galaxy:temp +weapon.katana.lore._finalValue set value ""
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 1..2 run function galaxy:weapon/katana/lore/draw_strike/damage/value
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 3 run function galaxy:weapon/katana/lore/draw_strike/damage/modifier
data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.action_damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore._finalValue","interpret":true}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
