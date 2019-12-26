tag @s add MhPistolDataProcessing
execute as @e[tag=dataContainer,tag=dataPistol] if score @s miniUUIDMost = @a[tag=MhPistolDataProcessing,limit=1] MhPistolUUIDM if score @s miniUUIDLeast = @a[tag=MhPistolDataProcessing,limit=1] MhPistolUUIDL run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/pistol/meta/data/store-from_hand-main
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/pistol/meta/data/create-from_hand-main
tag @e[tag=dataInjection] remove dataInjection
tag @s remove MhPistolDataProcessing
