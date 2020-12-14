function galaxy:weapon/gun/aim/start
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-gun,tag=!Zooming] run function galaxy:weapon/gun/aim/zoom/start
