tag @a[tag=Aiming,tag=GunChanged] remove Aiming

execute as @a[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-gun,tag=!Aiming] run function galaxy:weapon/gun/aim-start

execute as @a[predicate=!minecraft:sneaking,tag=Aiming] run function galaxy:weapon/gun/aim-end
execute as @a[predicate=!galaxy:weapon/hand_main-gun,tag=Aiming] run function galaxy:weapon/gun/aim-end
