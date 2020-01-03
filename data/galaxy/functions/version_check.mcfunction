scoreboard players set #version Meta 203

execute unless score #version Meta = #version_currently Meta if score #galaxy_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Galaxy/Version]","color":"yellow"},{"text":" Previous: "},{"score":{"name":"#version_currently","objective":"Meta"}},{"text":" -> Current: "},{"score":{"name":"#version","objective":"Meta"}}]
execute if score #version Meta = #version_currently Meta if score #galaxy_print_version Config matches 2 run tellraw @a ["",{"text":"[Galaxy/Version]","color":"yellow"},{"text":" Current: "},{"score":{"name":"#version","objective":"Meta"}}]

scoreboard players operation #version_currently Meta = #version Meta

scoreboard players remove @s versionGalaxy 0
execute as @a unless score @s versionGalaxy = #version_currently Meta run function galaxy:debug/remove_init_tag
execute as @a unless score @s versionGalaxy = #version_currently Meta run scoreboard players operation @s versionGalaxy = #version_currently Meta
