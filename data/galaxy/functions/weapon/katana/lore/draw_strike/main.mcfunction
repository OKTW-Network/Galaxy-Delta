data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.draw_strike","color":"dark_aqua"},""],"color":"gray","italic":false}]}'

execute if data storage galaxy:temp +weapon.katana.lore.input.draw_strike run function galaxy:weapon/katana/lore/draw_strike/name
execute if data storage galaxy:temp +weapon.katana.lore.input.draw_strike.damage run function galaxy:weapon/katana/lore/draw_strike/damage
execute if data storage galaxy:temp +weapon.katana.lore.input.draw_strike.range run function galaxy:weapon/katana/lore/draw_strike/range
function #galaxy:weapon.katana.lore.draw_strike
