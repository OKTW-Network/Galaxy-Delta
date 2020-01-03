
execute as @a[tag=!InitializedStatusEffectScore] run function galaxy:status_effect/meta/scoreboard/set_player_score

execute if score #stu_stun Config matches 1 run function galaxy:status_effect/stun
