
function galaxy:status_effect/meta/scoreboard/register
function galaxy:status_effect/meta/scoreboard/first_time_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:Status_effect]","color":"yellow"},{"text":" Initialize complete!"}]
