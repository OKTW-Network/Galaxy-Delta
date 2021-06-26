tag @s add FhGunDataProcessing
execute as @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun] if score @s dataUUID0 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID0 if score @s dataUUID1 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID1 if score @s dataUUID2 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID2 if score @s dataUUID3 = @a[tag=FhGunDataProcessing,limit=1] FhGunUUID3 run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/store_from-hand_off
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/create_from-hand_off
tag @e[tag=dataInjection] remove dataInjection
tag @s remove FhGunDataProcessing
