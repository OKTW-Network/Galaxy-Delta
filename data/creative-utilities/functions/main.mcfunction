execute as @a[tag=!InitializedCUScore] run function creative-utilities:meta/scoreboard/set_player_score
execute as @a[tag=!InitializedCUBossBar] run function creative-utilities:meta/bossbar/set_player_visible

execute if score #uips CreativeUtility matches 1 run function creative-utilities:use_item_per_sec/main
