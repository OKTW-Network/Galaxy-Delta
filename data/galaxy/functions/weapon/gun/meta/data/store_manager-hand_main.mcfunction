tag @s add MhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s UUID0 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID0 if score @s UUID1 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID1 if score @s UUID2 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID2 if score @s UUID3 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID3 run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/store_from-hand_main
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/create_from-hand_main
tag @e[tag=dataInjection] remove dataInjection
tag @s remove MhGunDataProcessing
