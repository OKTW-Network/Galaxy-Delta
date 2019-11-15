
function galaxy:gui/meta/scoreboard/register
function galaxy:gui/meta/scoreboard/set_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:GUI]","color":"yellow"},{"text":" Initialize complete!"}]
