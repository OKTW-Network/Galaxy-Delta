function galaxy:entity/check-postition
execute unless entity @s[tag=placeFailed] run function galaxy:entity/check-overlap
