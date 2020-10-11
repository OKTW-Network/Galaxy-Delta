execute if entity @s[predicate=galaxy:weapon/hand_off-gun,predicate=!galaxy:weapon/hands-gun_addon-dual,predicate=!galaxy:weapon/hand_off-gun_status-1] run function galaxy:weapon/gun/holster/start-hand_off

execute if entity @s[predicate=galaxy:weapon/hand_main-gun,predicate=galaxy:weapon/hand_main-gun_status-1] run function galaxy:weapon/gun/holster/end-hand_main
execute if entity @s[predicate=galaxy:weapon/hand_off-gun,predicate=galaxy:weapon/hands-gun_addon-dual,predicate=galaxy:weapon/hand_off-gun_status-1] run function galaxy:weapon/gun/holster/end-hand_off
