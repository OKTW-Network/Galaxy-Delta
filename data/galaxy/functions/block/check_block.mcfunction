function galaxy:block/check-postition
execute unless entity @s[tag=galaxy._tag.placeFailed] run function galaxy:block/check-collision
