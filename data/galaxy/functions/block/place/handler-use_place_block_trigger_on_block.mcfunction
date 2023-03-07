tag @s add galaxy._tag.ThisPlaceBlock

execute as @e[tag=galaxy.dummy.blockPlace] at @s if block ^ ^ ^-1 #global:overwritable run tp ^ ^ ^-1
execute as @e[tag=galaxy.dummy.blockPlace] at @s run function galaxy:block/place/check/main
execute as @e[tag=galaxy.dummy.blockPlace] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:block/place/main

kill @e[tag=galaxy.dummy.blockPlace]

tag @s remove galaxy._tag.ThisPlaceBlock
