tag @s add MhGunDataProcessing
execute as @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun] if score @s dataUUID0 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID0 if score @s dataUUID1 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID1 if score @s dataUUID2 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID2 if score @s dataUUID3 = @a[tag=MhGunDataProcessing,limit=1] MhGunUUID3 run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/store_from-hand_main
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/create_from-hand_main
tag @e[tag=dataInjection] remove dataInjection
tag @s remove MhGunDataProcessing
