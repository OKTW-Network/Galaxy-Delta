execute as @a[tag=!InitializedGalaxyBlockFunctionalScore] run function galaxy:block/functional/meta/scoreboard/set_player_score

execute as @e[tag=functional_placer] at @s run function galaxy:block/functional/placer/main

execute as @e[tag=katana_display_stand] at @s run function galaxy:block/functional/katana_display_stand/main
execute as @e[tag=elevator] at @s run function galaxy:block/functional/elevator/main
execute as @e[tag=structure_empower_detector] at @s run function galaxy:block/functional/structure_empower
