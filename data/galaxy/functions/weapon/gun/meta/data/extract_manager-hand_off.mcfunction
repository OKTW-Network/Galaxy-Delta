tag @s add FhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s UUID0 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID0 if score @s UUID1 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID1 if score @s UUID2 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID2 if score @s UUID3 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID3 run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/extract_to-hand_off
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/new_to-hand_off
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove FhGunDataProcessing
