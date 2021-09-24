execute if entity @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hand_main-gun_status0] run function galaxy:weapon/gun/aim/end-hand_main
execute if entity @s[predicate=galaxy:weapon/hand_off-gun,predicate=galaxy:weapon/hands-gun_special-dual,predicate=!galaxy:weapon/hand_off-gun_status0] run function galaxy:weapon/gun/aim/end-hand_off

function galaxy:weapon/gun/aim/zoom/end
