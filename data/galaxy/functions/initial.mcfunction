function galaxy:meta/scoreboard/register
function galaxy:config
function galaxy:check-dependency
function galaxy:check-version

execute unless entity @e[tag=dataBase] run function galaxy:meta/data/create-data_base

function galaxy:gui/initial
function galaxy:hud/initial
function galaxy:status_effect/initial
function galaxy:block/initial
function galaxy:entity/initial
function galaxy:tool/initial
function galaxy:weapon/initial
function galaxy:recipe/initial

execute as @a run function galaxy:initial-player

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
