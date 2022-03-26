function galaxy:entity/check-postition
execute unless entity @s[tag=galaxy._tag.placeFailed] run function galaxy:entity/check-overlap
