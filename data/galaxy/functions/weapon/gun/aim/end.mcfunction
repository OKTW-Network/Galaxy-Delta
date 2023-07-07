tag @s remove galaxy._status.gun.aiming
execute if entity @s[predicate=galaxy:weapon/gun/main_hand,predicate=!galaxy:weapon/gun/main_hand-normal_status] run function galaxy:weapon/gun/replaceitem/main_hand-normal_status
execute if entity @s[predicate=galaxy:weapon/gun/off_hand,predicate=!galaxy:weapon/gun/off_hand-normal_status] run function galaxy:weapon/gun/replaceitem/off_hand-normal_status

function galaxy:weapon/gun/aim/zoom/end
