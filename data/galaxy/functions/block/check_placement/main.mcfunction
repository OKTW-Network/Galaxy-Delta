function galaxy:block/check_placement/postition
execute unless entity @s[tag=galaxy._tag.placeFailed] run function galaxy:block/check_placement/collision
