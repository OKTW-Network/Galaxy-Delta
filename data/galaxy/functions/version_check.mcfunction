scoreboard players set #version Meta 100

execute unless score #version Meta = #version_currently Meta run function galaxy:debug/remove_all_player_init_tag

scoreboard players operation #version_currently Meta = #version Meta
