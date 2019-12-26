tag @s add FhPistolDataProcessing
execute as @e[tag=dataContainer,tag=dataPistol] if score @s miniUUIDMost = @a[tag=FhPistolDataProcessing,limit=1] FhPistolUUIDM if score @s miniUUIDLeast = @a[tag=FhPistolDataProcessing,limit=1] FhPistolUUIDL run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/pistol/meta/data/extract-to_hand-off
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/pistol/meta/data/new-to_hand-off
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove FhPistolDataProcessing
