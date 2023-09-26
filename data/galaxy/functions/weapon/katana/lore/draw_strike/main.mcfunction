data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.draw_strike","color":"dark_aqua"},""],"color":"gray","italic":false}]}'
execute if score #weapon.katana.lore._buildDrawStrikeName galaxy matches 1 run function galaxy:weapon/katana/lore/draw_strike/name
execute if score #weapon.katana.lore._buildDrawStrikeDamage galaxy matches 1.. run function galaxy:weapon/katana/lore/draw_strike/damage/main
execute if score #weapon.katana.lore._buildDrawStrikeEffectStrength galaxy matches 1.. run function galaxy:weapon/katana/lore/draw_strike/effect_strength/main
execute if score #weapon.katana.lore._buildDrawStrikeCooldown galaxy matches 1.. run function galaxy:weapon/katana/lore/draw_strike/cooldown/main
function #galaxy:weapon.katana.lore.draw_strike
