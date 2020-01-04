function math:meta/scoreboard/register
function math:config
function math:version_check

# execute as @a[tag=!InitializedMathScore] run function math:meta/scoreboard/set_player_score

execute if score #math_print_init Config matches 1 run tellraw @a ["",{"text":"[Math]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
