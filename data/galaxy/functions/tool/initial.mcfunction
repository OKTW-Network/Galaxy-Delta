
function galaxy:tool/meta/scoreboard/register
execute as @a[tag=!InitializedToolScore] run function galaxy:tool/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Tool: "},{"text":"Initialize complete!"}]
