tag @s add MhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s UUID0 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID0 if score @s UUID1 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID1 if score @s UUID2 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID2 if score @s UUID3 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID3 run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/extract_to-hand_main
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/gun/meta/data/new_to-hand_main
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove MhGunDataProcessing
