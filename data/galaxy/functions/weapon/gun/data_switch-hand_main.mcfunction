function galaxy:weapon/gun/meta/data/store_manager-hand_main

scoreboard players operation @s MhGunUUID0 = #1 calcu_temp
scoreboard players operation @s MhGunUUID1 = #2 calcu_temp
scoreboard players operation @s MhGunUUID2 = #3 calcu_temp
scoreboard players operation @s MhGunUUID3 = #4 calcu_temp

execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/data/swap_to-hand_main

execute if entity @s[tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/extract_manager-hand_main
