tag @s add galaxy._tag.ThisPlaceEntity

execute at @s run tag @e[tag=customEntityPlacer,distance=..10,limit=1] add galaxy._tag.ThisEntityPlacer

execute as @e[tag=galaxy._tag.ThisEntityPlacer] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:entity/check_placement/main
execute as @e[tag=galaxy._tag.ThisEntityPlacer] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:entity/placer/main

kill @e[tag=galaxy._tag.ThisEntityPlacer,tag=galaxy._tag.placeFailed]

tag @s remove galaxy._tag.ThisPlaceEntity
