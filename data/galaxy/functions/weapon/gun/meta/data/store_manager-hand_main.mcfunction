tag @s add MhGunDataProcessing
execute as @e[tag=dataContainer,tag=dataGun] if score @s miniUUIDMost = @a[tag=MhGunDataProcessing,limit=1] MhGunUUIDM if score @s miniUUIDLeast = @a[tag=MhGunDataProcessing,limit=1] MhGunUUIDL run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/store_from-hand_main
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/gun/meta/data/create_from-hand_main
tag @e[tag=dataInjection] remove dataInjection
tag @s remove MhGunDataProcessing
