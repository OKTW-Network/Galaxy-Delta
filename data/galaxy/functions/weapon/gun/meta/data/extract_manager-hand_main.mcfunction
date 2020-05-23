tag @s add MhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s miniUUIDMost = @a[tag=MhGunDataProcessing,limit=1] MhGunUUIDM if score @s miniUUIDLeast = @a[tag=MhGunDataProcessing,limit=1] MhGunUUIDL run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/extract_to-hand_main
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/new_to-hand_main
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove MhGunDataProcessing
