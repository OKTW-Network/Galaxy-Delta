tag @s add FhPistolDataProcessing
execute as @e[tag=dataContainer,tag=dataPistol] if score @s miniUUIDMost = @a[tag=FhPistolDataProcessing,limit=1] FhPistolUUIDM if score @s miniUUIDLeast = @a[tag=FhPistolDataProcessing,limit=1] FhPistolUUIDL run tag @s add dataInjection
execute if entity @e[tag=dataInjection] run function galaxy:weapon/pistol/meta/data/store-from_hand-off
execute unless entity @e[tag=dataInjection] run function galaxy:weapon/pistol/meta/data/create-from_hand-off
tag @e[tag=dataInjection] remove dataInjection
tag @s remove FhPistolDataProcessing
