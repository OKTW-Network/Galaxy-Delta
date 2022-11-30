function galaxy:entity/check_placement/postition
execute unless entity @s[tag=galaxy._tag.placeFailed] run function galaxy:entity/check_placement/overlap
