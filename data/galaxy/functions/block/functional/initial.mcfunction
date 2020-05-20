function galaxy:block/functional/meta/scoreboard/register
execute as @a[tag=!InitializedGalaxyBlockFunctionalScore] run function galaxy:block/functional/meta/scoreboard/set_player_score

schedule function galaxy:block/functional/elevator/jump_inhibition_schedule 60s replace
