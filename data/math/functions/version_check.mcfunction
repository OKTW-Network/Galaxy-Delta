scoreboard players set #math_version Meta 100

execute unless score #math_version Meta = #math_currently_version Meta if score #math_version Meta > #math_currently_version Meta if score #math_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Math]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#math_currently_version","objective":"Meta"}},{"text":" -> ","color":"green"},{"score":{"name":"#math_version","objective":"Meta"}}]
execute unless score #math_version Meta = #math_currently_version Meta if score #math_version Meta < #math_currently_version Meta if score #math_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Math]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#math_currently_version","objective":"Meta"}},{"text":" -> ","color":"red"},{"score":{"name":"#math_version","objective":"Meta"}}]
execute if score #math_version Meta = #math_currently_version Meta if score #math_print_version Config matches 2 run tellraw @a ["",{"text":"[Math]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#math_version","objective":"Meta"}}]

scoreboard players operation #math_currently_version Meta = #math_version Meta

scoreboard players remove @s versionMath 0
# execute as @a unless score @s versionMath = #math_currently_version Meta run function math:debug/remove_init_tag
execute as @a unless score @s versionMath = #math_currently_version Meta run scoreboard players operation @s versionMath = #math_currently_version Meta
