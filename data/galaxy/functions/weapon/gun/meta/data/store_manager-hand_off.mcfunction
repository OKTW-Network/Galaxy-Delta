tag @s add FhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s miniUUIDMost = @a[tag=FhGunDataProcessing,limit=1] FhGunUUIDM if score @s miniUUIDLeast = @a[tag=FhGunDataProcessing,limit=1] FhGunUUIDL run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/store_from-hand_off
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/create_from-hand_off
tag @e[tag=dataInjection] remove dataInjection
tag @s remove FhGunDataProcessing
