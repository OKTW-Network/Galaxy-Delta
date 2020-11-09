tag @s add triggerPlaceEntity

execute at @s run tag @e[tag=entity_placer,distance=..10,limit=1] add ThisPlacerEntity

execute as @e[tag=ThisPlacerEntity] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/check_entity

execute as @e[tag=ThisPlacerEntity,tag=katana_display_stand_placer,tag=type-1] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-1
execute as @e[tag=ThisPlacerEntity,tag=katana_display_stand_placer,tag=type-2] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-2
execute as @e[tag=ThisPlacerEntity,tag=katana_display_stand_placer,tag=type-3] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/katana_display_stand-3

execute as @e[tag=ThisPlacerEntity,tag=empower_lens_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:entity/placer/empower_lens

kill @e[tag=ThisPlacerEntity]

tag @s remove triggerPlaceEntity
