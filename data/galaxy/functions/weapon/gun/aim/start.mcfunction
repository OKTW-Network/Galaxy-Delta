tag @s add galaxy._status.gun.aiming
execute if entity @s[predicate=galaxy:weapon/gun/main_hand] run function galaxy:weapon/gun/replaceitem/main_hand-aiming
execute if entity @s[predicate=galaxy:weapon/gun/off_hand] run function galaxy:weapon/gun/replaceitem/off_hand-aiming

function galaxy:weapon/gun/aim/zoom/start
