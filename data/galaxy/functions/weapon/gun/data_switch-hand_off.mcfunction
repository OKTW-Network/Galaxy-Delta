execute if entity @s[tag=!galaxy.gun.swap.offHand,tag=!galaxy.gun.isNew.offHand] run function galaxy:weapon/gun/meta/data/store_manager-hand_off

execute if entity @s[tag=!galaxy.gun.swap.offHand] run scoreboard players operation @s FhGunUUID0 = @s FhGunUUID0New
execute if entity @s[tag=!galaxy.gun.swap.offHand] run scoreboard players operation @s FhGunUUID1 = @s FhGunUUID1New
execute if entity @s[tag=!galaxy.gun.swap.offHand] run scoreboard players operation @s FhGunUUID2 = @s FhGunUUID2New
execute if entity @s[tag=!galaxy.gun.swap.offHand] run scoreboard players operation @s FhGunUUID3 = @s FhGunUUID3New

execute if entity @s[tag=galaxy.gun.swap.offHand] run function galaxy:weapon/gun/meta/uuid/swap_to-hand_off
execute if entity @s[tag=galaxy.gun.swap.offHand] run function galaxy:weapon/gun/meta/data/swap_to-hand_off

execute if entity @s[tag=!galaxy.gun.swap.offHand] run function galaxy:weapon/gun/meta/data/extract_manager-hand_off
