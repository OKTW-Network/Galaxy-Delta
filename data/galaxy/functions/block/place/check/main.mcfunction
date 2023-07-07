function galaxy:block/place/check/postition
execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run function galaxy:block/place/check/collide_with_entity
