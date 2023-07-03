data modify storage galaxy:temp +weapon.katana.lore.result append value '{"text":""}'
data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"text.express.relate","with":[{"translate":"item.galaxy.katana"},""],"color":"gray","italic":false}'
execute if data storage galaxy:temp +weapon.katana.lore.input.draw_strike run function galaxy:weapon/katana/lore/draw_strike/main
execute if data storage galaxy:temp +weapon.katana.lore.input.skill run function galaxy:weapon/katana/lore/skill/main
