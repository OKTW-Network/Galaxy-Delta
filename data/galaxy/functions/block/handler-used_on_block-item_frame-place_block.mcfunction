tag @s add galaxy._tag.ThisPlaceBlock

execute at @s run tag @e[tag=customBlockPlacer,distance=..10,limit=1] add galaxy._tag.ThisBlockPlacer
execute as @e[tag=galaxy._tag.ThisBlockPlacer] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:block/check_placement/main
execute as @e[tag=galaxy._tag.ThisBlockPlacer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/main

kill @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy._tag.placeFailed]

tag @s remove galaxy._tag.ThisPlaceBlock

execute if entity @e[tag=customBlockPlacer,distance=..10] run function galaxy:block/handler-used_on_block-item_frame-place_block
