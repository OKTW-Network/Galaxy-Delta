execute unless block ^ ^ ^-1 #global:unattachable if entity @s[predicate=minecraft:entity_properties/item_frame/vertical] if entity @a[tag=galaxy._tag.ThisPlaceEntity,predicate=!minecraft:entity_properties/sneaking] run tag @s add galaxy._task.entity.place.katana_display_stand_4
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed,tag=galaxy._task.entity.place.katana_display_stand_4] run function galaxy:entity/place/rotation/place_dummy_horizontal
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed,tag=galaxy._task.entity.place.katana_display_stand_4] run function galaxy:entity/summon/katana_display_stand-4
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed,tag=!galaxy._task.entity.place.katana_display_stand_4] run function galaxy:entity/place/rotation/facing_horizontal_16
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed,tag=!galaxy._task.entity.place.katana_display_stand_4] run function galaxy:entity/summon/katana_display_stand-2
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

execute if entity @s[tag=galaxy._tag.entityPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceEntity,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-2

