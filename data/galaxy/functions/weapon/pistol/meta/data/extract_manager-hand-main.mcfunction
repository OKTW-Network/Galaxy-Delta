tag @s add MhPistolDataProcessing
execute as @e[tag=dataContainer,tag=dataPistol] if score @s miniUUIDMost = @a[tag=MhPistolDataProcessing,limit=1] MhPistolUUIDM if score @s miniUUIDLeast = @a[tag=MhPistolDataProcessing,limit=1] MhPistolUUIDL run tag @s add dataExtraction
execute if entity @e[tag=dataExtraction] run function galaxy:weapon/pistol/meta/data/extract-to_hand-main
execute unless entity @e[tag=dataExtraction] run function galaxy:weapon/pistol/meta/data/new-to_hand-main
tag @e[tag=dataExtraction] remove dataExtraction
tag @s remove MhPistolDataProcessing
