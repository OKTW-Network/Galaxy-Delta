data modify storage galaxy:temp +weapon.katana.lore.result append value '{"text":""}'
execute unless score #build_lore.isComponent galaxy matches 1 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"text.express.relate","with":[{"translate":"item.galaxy.katana"},""],"color":"gray","italic":false}'
execute if score #build_lore.isComponent galaxy matches 1 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"component.alterations.galaxy.katana","color":"gray","italic":false}'
execute if score #weapon.katana.lore.itemType galaxy matches -1..0 if score #weapon.katana.lore._buildAttackDamage galaxy matches 1.. run function galaxy:weapon/katana/lore/attack_damage/main
execute if score #weapon.katana.lore.itemType galaxy matches -1..0 if score #weapon.katana.lore._buildAttackSpeed galaxy matches 1.. run function galaxy:weapon/katana/lore/attack_speed/main
execute if data storage galaxy:temp +weapon.katana.lore.input.draw_strike run function galaxy:weapon/katana/lore/draw_strike/main
execute if data storage galaxy:temp +weapon.katana.lore.input.skill run function galaxy:weapon/katana/lore/skill/main
