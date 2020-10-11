execute if entity @s[tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/store_manager-hand_main

execute if entity @s[tag=!MhGunSwap] run scoreboard players operation @s MhGunUUID0 = @s MhGunUUID0New
execute if entity @s[tag=!MhGunSwap] run scoreboard players operation @s MhGunUUID1 = @s MhGunUUID1New
execute if entity @s[tag=!MhGunSwap] run scoreboard players operation @s MhGunUUID2 = @s MhGunUUID2New
execute if entity @s[tag=!MhGunSwap] run scoreboard players operation @s MhGunUUID3 = @s MhGunUUID3New

execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/uuid/swap_to-hand_main
execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/data/swap_to-hand_main

execute if entity @s[tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/extract_manager-hand_main
