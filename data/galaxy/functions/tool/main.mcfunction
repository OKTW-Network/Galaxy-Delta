function galaxy:tool/meta/detector/main

execute if score #structure_empower Config matches 1 as @e[tag=structure_empower_detector] at @s if predicate galaxy:configurable/structure_empower_success_chance run function galaxy:tool/structure_empower
