function galaxy:tool/meta/detector/main

execute as @e[tag=structure_empower_detector] at @s if predicate galaxy:configurable/structure_empower_success_chance run function galaxy:tool/structure_empower
