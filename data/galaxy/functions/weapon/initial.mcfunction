
function galaxy:weapon/katana/meta/scoreboard/register
function galaxy:weapon/katana/meta/scoreboard/set_player_score

function galaxy:weapon/energy-saber/meta/scoreboard/register
function galaxy:weapon/energy-saber/meta/scoreboard/set_player_score

function galaxy:weapon/pistol/meta/scoreboard/register
function galaxy:weapon/pistol/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:Weapon]","color":"yellow"},{"text":" Initialize complete!"}]
