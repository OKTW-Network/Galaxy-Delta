tag @s add galaxy._tag.ThisPlaceEntity

execute as @e[tag=galaxy.dummy.entityPlace] at @s if block ^ ^ ^-1 #global:overwritable run tp ^ ^ ^-1
execute as @e[tag=galaxy.dummy.entityPlace] run function galaxy:entity/place/get_info
execute as @e[tag=galaxy.dummy.entityPlace] at @s run function galaxy:entity/place/check/main
execute as @e[tag=galaxy.dummy.entityPlace] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:entity/place/main

kill @e[tag=galaxy.dummy.entityPlace]

tag @s remove galaxy._tag.ThisPlaceEntity
