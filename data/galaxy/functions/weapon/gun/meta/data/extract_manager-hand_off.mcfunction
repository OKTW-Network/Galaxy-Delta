tag @s add FhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s miniUUIDMost = @a[tag=FhGunDataProcessing,limit=1] FhGunUUIDM if score @s miniUUIDLeast = @a[tag=FhGunDataProcessing,limit=1] FhGunUUIDL run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/extract_to-hand_off
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/new_to-hand_off
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove FhGunDataProcessing
