function galaxy:weapon/gun/meta/data/store_manager-hand_main

scoreboard players operation @s MhGunUUID0 = #calculation_temp1 numeric
scoreboard players operation @s MhGunUUID1 = #calculation_temp2 numeric
scoreboard players operation @s MhGunUUID2 = #calculation_temp3 numeric
scoreboard players operation @s MhGunUUID3 = #calculation_temp4 numeric

execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/data/swap_to-hand_main

execute if entity @s[tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/extract_manager-hand_main
