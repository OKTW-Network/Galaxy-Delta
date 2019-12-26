execute if entity @a[tag=!InitializedToolScore] run function galaxy:tool/meta/scoreboard/set_player_score

function galaxy:tool/structure_empower
execute if score #shield_projector Config matches 1 run function galaxy:tool/absorb-shield
