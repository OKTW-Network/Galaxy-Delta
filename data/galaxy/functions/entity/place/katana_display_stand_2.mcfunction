scoreboard players set #entity.place.variant galaxy 0
execute if entity @s[predicate=minecraft:entity_properties/item_frame/vertical] unless block ^ ^ ^-1 #global:unattachable_on_side if entity @a[tag=galaxy._tag.ThisPlaceEntity,predicate=!minecraft:entity_properties/sneaking] run scoreboard players set #entity.place.variant galaxy 1
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 0 if block ~ ~-1 ~ #global:unattachable_on_top run tag @s add galaxy._tag.entityPlaceFailed
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 0 run scoreboard players set #entity.place.facing galaxy 1
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run function galaxy:entity/place/check/overlap
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 1 run function galaxy:entity/place/rotation/horizontal_facing
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 1 run function galaxy:entity/summon/katana_display_stand_4
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 0 run function galaxy:entity/place/rotation/horizontal_16_rotation
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if score #entity.place.variant galaxy matches 0 run function galaxy:entity/summon/katana_display_stand_2
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

execute if entity @s[tag=galaxy._tag.entityPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceEntity,gamemode=!creative] run function galaxy:entity/give/katana_display_stand_2
