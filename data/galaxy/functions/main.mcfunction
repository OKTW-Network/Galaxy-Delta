function galaxy:meta/detector/main

execute if entity @a[tag=!InitializedGlobalScore] run function galaxy:meta/scoreboard/set_player_score
