function galaxy:entity/meta/scoreboard/register
function galaxy:entity/meta/team/register

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Entity: "},{"text":"Initialize complete!"}]
