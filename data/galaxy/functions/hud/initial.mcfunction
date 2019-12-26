
function galaxy:hud/meta/storage/register

function galaxy:hud/meta/scoreboard/register
function galaxy:hud/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:HUD]","color":"yellow"},{"text":" Initialize complete!"}]
