function galaxy:entity/place/check/postition
execute unless entity @s[tag=galaxy._tag.entityPlaceFailed] run function galaxy:entity/place/check/overlap
