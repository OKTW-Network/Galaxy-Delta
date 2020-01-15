execute as @a[tag=!InitializedBlockFunctionalScore] run function galaxy:block/functional/meta/scoreboard/set_player_score

execute as @e[tag=functional_placer] at @s run function galaxy:block/functional/placer/main

execute as @e[tag=katana_showcase] at @s run function galaxy:block/functional/katana_showcase/main
execute as @e[tag=structure_empower_detector] at @s run function galaxy:block/functional/structure_empower

