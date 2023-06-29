data modify storage galaxy:temp +weapon.katana.lore.result set value []

execute if score #weapon.katana.lore.class galaxy matches 1 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"item.galaxy.katana_blade","color":"gray","italic":false}'
execute if score #weapon.katana.lore.class galaxy matches 2 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"item.galaxy.katana_scabbard","color":"gray","italic":false}'
data modify storage galaxy:temp +weapon.katana.lore.result append value '{"text":""}'
data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"text.express.relate","with":[{"translate":"item.galaxy.katana"},""],"color":"gray","italic":false}'
execute if score #weapon.katana.lore.class galaxy matches 0..1 if data storage galaxy:temp +weapon.katana.lore.input.draw_strike run function galaxy:weapon/katana/lore/draw_strike/main
execute if score #weapon.katana.lore.class galaxy matches 0..2 unless score #weapon.katana.lore.class galaxy matches 1 if data storage galaxy:temp +weapon.katana.lore.input.skill run function galaxy:weapon/katana/lore/skill/main

data remove storage galaxy:temp +weapon.katana.lore.input
scoreboard players reset #weapon.katana.lore.class galaxy
