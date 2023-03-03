execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run function galaxy:entity/place/rotation/facing_horizontal_16
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run function galaxy:entity/summon/katana_display_stand-1
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

execute if entity @s[tag=galaxy._tag.entityPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceEntity,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-1
