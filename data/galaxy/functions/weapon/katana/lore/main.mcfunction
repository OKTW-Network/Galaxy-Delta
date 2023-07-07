data modify storage galaxy:temp +weapon.katana.lore.result set value []

execute if score #weapon.katana.lore.class galaxy matches 1 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"item.galaxy.katana_blade","color":"gray","italic":false}'
execute if score #weapon.katana.lore.class galaxy matches 2 run data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"item.galaxy.katana_scabbard","color":"gray","italic":false}'
execute if score #weapon.katana.lore.class galaxy matches 0..1 run function galaxy:weapon/katana/lore/custom_attribute

data remove storage galaxy:temp +weapon.katana.lore.input
scoreboard players reset #weapon.katana.lore.class galaxy
