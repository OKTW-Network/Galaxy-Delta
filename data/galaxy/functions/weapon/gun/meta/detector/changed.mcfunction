execute as @a[tag=!InitializedGalaxyGunUUIDScore] run function galaxy:weapon/gun/meta/scoreboard/set_player_score-gun_uuid

execute as @s[predicate=galaxy:weapon/hand_main-gun] run function galaxy:weapon/gun/meta/detector/changed-hand_main
execute as @s[predicate=galaxy:weapon/hand_off-gun] run function galaxy:weapon/gun/meta/detector/changed-hand_off
