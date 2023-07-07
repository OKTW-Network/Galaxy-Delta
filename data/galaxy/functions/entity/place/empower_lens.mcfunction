execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] if block ~ ~-1 ~ #global:unattachable_on_top run tag @s add galaxy._tag.entityPlaceFailed
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run scoreboard players set #entity.place.facing galaxy 1
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run function galaxy:entity/place/check/overlap
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run function galaxy:entity/summon/empower_lens
execute if entity @s[tag=!galaxy._tag.entityPlaceFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.4

execute if entity @s[tag=galaxy._tag.entityPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceEntity,gamemode=!creative] run function galaxy:tool/give/empower_lens
