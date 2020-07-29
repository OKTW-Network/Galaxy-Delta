function galaxy:weapon/gun/meta/scoreboard/register
execute as @a[tag=!InitializedGalaxyGunScore] run function galaxy:weapon/gun/meta/scoreboard/set_player_score

schedule function galaxy:weapon/gun/aim_schedule 60s replace
