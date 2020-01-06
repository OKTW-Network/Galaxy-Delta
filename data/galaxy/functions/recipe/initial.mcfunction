
function galaxy:recipe/meta/scoreboard/register

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Recipe: "},{"text":"Initialize complete!"}]
