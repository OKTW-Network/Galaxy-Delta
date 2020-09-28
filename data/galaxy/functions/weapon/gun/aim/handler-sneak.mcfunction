execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-gun] run function galaxy:weapon/gun/aim/start-hand_main
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_off-gun] run function galaxy:weapon/gun/aim/start-hand_off

execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-gun,tag=!Zooming] run function galaxy:weapon/gun/aim/zoom/start
