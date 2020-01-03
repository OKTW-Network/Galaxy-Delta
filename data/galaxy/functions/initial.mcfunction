function galaxy:version_check

function galaxy:meta/scoreboard/register
execute as @a[tag=!InitializedGlobalScore] run function galaxy:meta/scoreboard/set_player_score
function galaxy:config

execute unless entity @e[tag=dataBase] run function galaxy:meta/data/create-data_base

function galaxy:gui/initial
function galaxy:hud/initial
function galaxy:status_effect/initial
function galaxy:tool/initial
function galaxy:weapon/initial
function galaxy:recipe/initial

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]","color":"yellow"},{"text":" Initialize complete!"}]
