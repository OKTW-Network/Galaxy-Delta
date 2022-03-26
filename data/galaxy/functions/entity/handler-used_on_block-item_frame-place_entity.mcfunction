tag @s add galaxy._tag.ThisPlaceEntity

execute at @s run tag @e[tag=customEntityPlacer,distance=..10,limit=1] add galaxy._tag.ThisEntityPlacer

execute as @e[tag=galaxy._tag.ThisEntityPlacer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/check_entity

execute as @e[tag=galaxy._tag.ThisEntityPlacer,tag=galaxy.katana_display_stand,tag=type-1] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-1
execute as @e[tag=galaxy._tag.ThisEntityPlacer,tag=galaxy.katana_display_stand,tag=type-2] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-2
execute as @e[tag=galaxy._tag.ThisEntityPlacer,tag=galaxy.katana_display_stand,tag=type-3] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-3
execute as @e[tag=galaxy._tag.ThisEntityPlacer,tag=galaxy.empower_lens] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/empower_lens

kill @e[tag=galaxy._tag.ThisEntityPlacer]

tag @s remove galaxy._tag.ThisPlaceEntity
