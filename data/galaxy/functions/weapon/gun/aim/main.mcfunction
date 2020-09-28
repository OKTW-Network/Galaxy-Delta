execute if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hand_main-gun_status0] run function galaxy:weapon/gun/aim/end-hand_main
execute if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_off-gun,predicate=galaxy:weapon/hands-gun_mode-dual,predicate=!galaxy:weapon/hand_off-gun_status0] run function galaxy:weapon/gun/aim/end-hand_off

execute if entity @s[predicate=!galaxy:weapon/hand_main-gun,tag=Zooming] run function galaxy:weapon/gun/aim/zoom/end
execute if entity @s[predicate=!minecraft:sneaking,tag=Zooming] run function galaxy:weapon/gun/aim/zoom/end

execute if entity @s[tag=MhGunChanged,tag=Zooming] run function galaxy:weapon/gun/aim/zoom/end
execute if entity @s[tag=MhGunChanged] run function galaxy:weapon/gun/aim/handler-sneak
