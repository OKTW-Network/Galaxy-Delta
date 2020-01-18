scoreboard players set #galaxy_version Meta 220

execute unless score #galaxy_version Meta = #galaxy_currently_version Meta if score #galaxy_version Meta > #galaxy_currently_version Meta if score #galaxy_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#galaxy_currently_version","objective":"Meta"}},{"text":" -> ","color":"green"},{"score":{"name":"#galaxy_version","objective":"Meta"}}]
execute unless score #galaxy_version Meta = #galaxy_currently_version Meta if score #galaxy_version Meta < #galaxy_currently_version Meta if score #galaxy_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#galaxy_currently_version","objective":"Meta"}},{"text":" -> ","color":"red"},{"score":{"name":"#galaxy_version","objective":"Meta"}}]
execute if score #galaxy_version Meta = #galaxy_currently_version Meta if score #galaxy_print_version Config matches 2 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#galaxy_version","objective":"Meta"}}]

scoreboard players operation #galaxy_currently_version Meta = #galaxy_version Meta

scoreboard players remove @s versionGalaxy 0
execute as @a unless score @s versionGalaxy = #galaxy_currently_version Meta run function galaxy:debug/clean_up-scoreboard
execute as @a unless score @s versionGalaxy = #galaxy_currently_version Meta run function galaxy:debug/clean_up-tag
execute as @a unless score @s versionGalaxy = #galaxy_currently_version Meta run function galaxy:debug/remove_init_tag
execute as @a unless score @s versionGalaxy = #galaxy_currently_version Meta run scoreboard players operation @s versionGalaxy = #galaxy_currently_version Meta
