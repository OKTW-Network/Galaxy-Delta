
function galaxy:tool/meta/scoreboard/register
function galaxy:tool/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:Tool]","color":"yellow"},{"text":" Initialize complete!"}]
