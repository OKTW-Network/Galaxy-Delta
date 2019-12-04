scoreboard players set #version Meta 102

execute unless score #version Meta = #version_currently Meta if score #galaxy_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Galaxy/Version]","color":"yellow"},{"text":" Previous: "},{"score":{"name":"#version_currently","objective":"Meta"}},{"text":" -> Current: "},{"score":{"name":"#version","objective":"Meta"}}]
execute if score #version Meta = #version_currently Meta if score #galaxy_print_version Config matches 2 run tellraw @a ["",{"text":"[Galaxy/Version]","color":"yellow"},{"text":" Current: "},{"score":{"name":"#version","objective":"Meta"}}]
execute unless score #version Meta = #version_currently Meta run function galaxy:debug/remove_all_player_init_tag

scoreboard players operation #version_currently Meta = #version Meta
